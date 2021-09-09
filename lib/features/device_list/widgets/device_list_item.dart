import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wled_app/features/device_list/data/models/wled_device.dart';
import '../bloc/device_list_bloc.dart';

class DeviceListItem extends StatelessWidget {
  const DeviceListItem({
    Key? key,
    required this.device,
  }) : super(key: key);

  final WledDevice device;

  IconData get _mapStatusToIcon {
    switch (device.status) {
      case DeviceStatus.standard:
        return FeatherIcons.check;
      case DeviceStatus.unreachable:
        return FeatherIcons.wifiOff;
      case DeviceStatus.error:
        return FeatherIcons.alertCircle;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceListBloc>();

    return ListTile(
      onTap: () => bloc.add(DevicePressed(device)),
      leading: Icon(_mapStatusToIcon),
      trailing: IconButton(
        icon: const Icon(FeatherIcons.power),
        onPressed: () => bloc.add(DevicePower(device)),
      ),
      title: Text(device.name),
      subtitle: Slider(
        min: 0.9,
        max: 255.1,
        value: device.brightness,
        activeColor: device.color,
        onChanged: (value) => bloc.add(DeviceSlider(device, value)),
      ),
    );
  }
}
