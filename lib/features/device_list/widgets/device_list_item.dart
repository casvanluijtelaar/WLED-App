import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:wled/core/core.dart';

import './device_list_options.dart';
import './device_list_slider.dart';
import './device_list_switch.dart';
import '../bloc/device_list_bloc.dart';

/// card that displays the Wled device in the main device list and has a couple
/// controls like brightness and power
class DeviceListItem extends StatelessWidget {
  const DeviceListItem({
    Key? key,
    required this.device,
  }) : super(key: key);

  final WledDevice device;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final bloc = context.read<DeviceListBloc>();

    final size = (context.findRenderObject() as RenderBox?)?.size;

    /// the device also needs to be disabled when the device cant be reached
    /// ( because then we couldn't turn it on anyways )
    final isEnabled =
        device.isEnabled && device.status == DeviceStatus.functional;

    /// background gradients for pure black or pure white don't work very well
    /// so clamp the background color within a nice color range
    final color = device.color.clamp(0.15, 0.85);

    /// for functional, enabled devices show a nice gradient based on the
    /// active color, otherwise show the default background card color
    final colors = isEnabled
        ? [color.lighten(), color, color.darken()]
        : [theme.cardColor, theme.cardColor];

    /// to make sure the text is always readable we want to switch between
    /// white and black textcolor depending on the background color luminance
    final textColor = color.computeLuminance() < 0.6 || !isEnabled
        ? const Color(0xFFFFFFFF)
        : const Color(0xFF555555);

    final item = DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(colors: colors),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 3),
            color: Color.fromRGBO(0, 0, 0, 0.2935),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(Icons.lightbulb, color: textColor),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        device.name,
                        style: theme.textTheme.headline4!
                            .copyWith(color: textColor),
                      ),
                      Text(
                        device.address,
                        style: theme.textTheme.subtitle1!
                            .copyWith(color: textColor),
                      )
                    ],
                  ),
                ),

                const Spacer(),

                /// only show the enable switch when the device
                /// can actually be used
                if (device.status == DeviceStatus.functional)
                  DeviceListSwitch(
                    value: isEnabled,
                    onChanged: (_) => bloc.add(DevicePower(device)),
                  ),

                /// menu button that opens the options menu in a bottom sheet
                const SizedBox(width: Kpadding.medium),
                RoundIconButton(
                  icon: FeatherIcons.moreVertical,
                  onPressed: () => showModalBottomSheet<void>(
                    context: context,
                    builder: (_) => DeviceListOptions(
                      device: device,
                      onSave: () => bloc.add(DeviceSave(device)),
                      onEdit: () => bloc.add(DeviceEdit(device)),
                      onDelete: () => bloc.add(DeviceDelete(device)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// It's possible that a saved device is displayed but actually
          /// isn't usuable (e.g. when you're on a different network )
          /// so dont shot the slider if the device isnt reachable
          if (device.status == DeviceStatus.functional)
            DeviceListSlider(
              color: color,
              value: device.brightness.toDouble().clamp(0, 255),
              enabled: isEnabled,
              onChanged: (value) => bloc.add(DeviceSlider(device, value)),
            )
          else
            const Center(child: Text('device not reachable')),
        ],
      ),
    );

    /// main item interactions, 
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      onTap: () => bloc.add(DevicePressed(device)),
      child: Draggable<WledDevice>(
        data: device,
        feedback: IgnorePointer(
          child: Opacity(
            opacity: 0.75,
            child: SizedBox(
              width: size?.width ?? 600,
              child: item,
            ),
          ),
        ),
        childWhenDragging: const SizedBox.shrink(),
        child: item,
      ),
    );
  }
}
