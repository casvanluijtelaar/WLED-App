import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wled/core/core.dart';

import './device_list_slider.dart';
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

    /// main device information, displays name and address
    final text = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: context.isPhone
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Text(device.name, style: theme.textTheme.headline4),
        Text(device.address, style: theme.textTheme.subtitle1),
      ],
    );

    /// device brightness slider / enable button
    final slider = DeviceListSlider(
      color: device.color,
      enabled: device.isEnabled,
      value: device.brightness,
      onChanged: (v) => bloc.add(DeviceSlider(device, v)),
      onPressed: () => bloc.add(DevicePower(device)),
    );

    /// on mobile display items as a row, on tablet or bigger make it a column
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onTap: () => bloc.add(DevicePressed(device)),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Consts.paddingLarge,
            vertical: Consts.paddingMedium,
          ),
          child: context.isPhone
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [text, slider],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [slider, text],
                ),
        ),
      ),
    );
  }
}
