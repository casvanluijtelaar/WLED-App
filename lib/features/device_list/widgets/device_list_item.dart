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

    void menu() => showModalBottomSheet<void>(
          context: context,
          builder: (_) => DeviceListOptions(
            device: device,
            onSave: () => bloc.add(DeviceSave(device)),
            onEdit: () => bloc.add(DeviceEdit(device)),
            onDelete: () => bloc.add(DeviceDelete(device)),
          ),
        );

    return InkWell(
      onTap: () => bloc.add(DevicePressed(device)),
      onLongPress: context.isPhone ? menu : null,
      child: SizedBox(
        width: double.maxFinite,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [
                if (device.isEnabled) ...[
                  device.color.lighten(0.2),
                  device.color,
                  device.color.darken(0.2),
                ],
                if (!device.isEnabled) ...[
                  theme.cardColor,
                  theme.cardColor,
                ]
              ],
            ),
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
                    const Icon(Icons.lightbulb),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(device.name, style: theme.textTheme.headline4),
                          Text(device.address, style: theme.textTheme.subtitle1)
                        ],
                      ),
                    ),
                    const Spacer(),
                    DeviceListSwitch(
                      value: device.isEnabled,
                      onChanged: (_) => bloc.add(DevicePower(device)),
                    ),
                    if (!context.isPhone) ...[
                      const SizedBox(width: Consts.paddingMedium),
                      RoundIconButton(
                        icon: FeatherIcons.moreVertical,
                        onPressed: menu,
                      ),
                    ],
                  ],
                ),
              ),
              DeviceListSlider(
                color: device.color,
                value: device.brightness.toInt().clamp(0, 255),
                enabled: device.isEnabled,
                onChanged: (value) => bloc.add(DeviceSlider(device, value)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
