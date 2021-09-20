import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:wled/core/core.dart';

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
    final slider = SleekCircularSlider(
      max: 255,
      initialValue: device.brightness,
      appearance: CircularSliderAppearance(
        size: 112,
        startAngle: 180,
        angleRange: 270,
        animationEnabled: false,
        infoProperties: InfoProperties(
          /// when the device is enabled, change the percentage color to the
          /// active led color
          mainLabelStyle: theme.textTheme.headline4!.copyWith(
            color: device.isEnabled ? device.color : theme.dividerColor,
          ),
        ),
        customWidths: CustomSliderWidths(
          trackWidth: context.isPhone ? 5 : 8,
        ),
        customColors: CustomSliderColors(
          dotColor: Colors.white,
          hideShadow: true,
          trackColor: theme.dividerColor,

          /// when the device is enabled, change the bar color to the
          /// active led color
          progressBarColor:
              device.isEnabled ? device.color : Colors.transparent,
        ),
      ),
      onChangeEnd: (v) => bloc.add(DeviceSlider(device, v)),
      innerWidget: (percentage) {
        /// map brightness from 0 - 255 to a percentage to display
        final roundedValue = percentage.map(0, 255, 0, 100).ceil().toInt();
        return Center(
          child: IconButton(
            iconSize: 40,
            padding: EdgeInsets.zero,
            onPressed: () => bloc.add(DevicePower(device)),
            icon: Text(
            roundedValue != 0
                ? '$roundedValue%'
                : context.locale.deviceListPowerOff,
            style: theme.textTheme.headline4!.copyWith(
              color: device.isEnabled ? device.color : theme.dividerColor,
            ),
          ),
          ),
        );
      },
    );

    /// on mobile display items as a row, on tablet or bigger make it a column
    return InkWell(
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
