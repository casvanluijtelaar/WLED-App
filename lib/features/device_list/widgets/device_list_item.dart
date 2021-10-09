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

    /// show a popup menu containing the main device settings
    void menu() => showModalBottomSheet<void>(
          context: context,
          builder: (_) => DeviceListOptions(
            device: device,
            onSave: () => bloc.add(DeviceSave(device)),
            onEdit: () => bloc.add(DeviceEdit(device)),
            onDelete: () => bloc.add(DeviceDelete(device)),
          ),
        );

    final isEnabled =
        device.isEnabled && device.status == DeviceStatus.functional;

    final color = device.color.clamp(0.15, 0.85);

    /// for functional, enabled devices show a nice gradient based on the
    /// active color, otherwise show the default background card color
    final colors = isEnabled
        ? [color.lighten(), color, color.darken()]
        : [theme.cardColor, theme.cardColor];

    final textColor = color.computeLuminance() < 0.6 || !isEnabled
        ? const Color(0xFFFFFFFF)
        : const Color(0xFF555555);

    return InkWell(
      onTap: () => bloc.add(DevicePressed(device)),
      onLongPress: context.isPhone ? menu : null,
      child: SizedBox(
        width: double.maxFinite,
        child: DecoratedBox(
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
                    /// posibility to add custom icons asignable to each device
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

                    /// only show the enable switch when the device can actually
                    /// be used
                    if (device.status == DeviceStatus.functional)
                      DeviceListSwitch(
  
                        value: isEnabled,
                        onChanged: (_) => bloc.add(DevicePower(device)),
                      ),

                    /// show an option menu on device where a long press is
                    /// not the best interaction method
                    if (!context.isPhone) ...[
                      const SizedBox(width: Kpadding.medium),
                      RoundIconButton(
                        icon: FeatherIcons.moreVertical,
                        onPressed: menu,
                      ),
                    ],
                  ],
                ),
              ),

              /// It's possible that a saved device is displayed but actually
              /// isn't usuable (when you're on a different network for example)
              /// so dont shot the slider if the device isn't reachable
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
        ),
      ),
    );
  }
}
