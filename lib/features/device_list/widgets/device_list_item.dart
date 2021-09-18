import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:wled_app/core/core.dart';

import '../bloc/device_list_bloc.dart';
import '../data/models/wled_device.dart';

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

    log(device.toString());

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

    /// device brightness slider / enable color
    final slider = SleekCircularSlider(
      max: 255,
      initialValue: device.brightness,
      appearance: CircularSliderAppearance(
        size: 112,
        animationEnabled: false,
        infoProperties: InfoProperties(
          mainLabelStyle: theme.textTheme.headline4!.copyWith(
            color: device.isEnabled ? device.color : theme.dividerColor,
          ),
        ),
        customWidths: CustomSliderWidths(
          trackWidth: context.isPhone ? 5 : 8,
        ),
        customColors: CustomSliderColors(
          dotColor: Colors.transparent,
          hideShadow: true,
          trackColor: theme.dividerColor,
          progressBarColor:
              device.isEnabled ? device.color : Colors.transparent,
        ),
      ),
      onChangeEnd: (v) => bloc.add(DeviceSlider(device, v)),
      innerWidget: (percentage) {
        /// mapp from 0 - 255 to a percentage
        final roundedValue = percentage.map(0, 255, 0, 100).ceil().toInt();
        return Center(
          child: GestureDetector(
            onTap: () => bloc.add(DevicePower(device)),
            child: Text(
              roundedValue != 0 ? '$roundedValue %' : 'off',
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
