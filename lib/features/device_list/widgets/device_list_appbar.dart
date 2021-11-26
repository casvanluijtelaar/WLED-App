import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:wled/core/core.dart';

import '../bloc/device_list_bloc.dart';
import '../widgets/device_list_switch.dart';

class DeviceListAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DeviceListAppbar({
    Key? key,
    required this.isEnabled,
  }) : super(key: key);

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceListBloc>();

    return AppBar(
      centerTitle: false,
      title: Text(context.locale.deviceListTitle),
      backgroundColor: context.theme.scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      actions: [
        Center(
          child: DeviceListSwitch(
            height: 24,
            value: isEnabled,
            onChanged: (_) => bloc.add(const ListPower()),
          ),
        ),

        // show fixed refresh button instead of pull to refresh
        // on larger devices
        if (!Platform.isAndroid && !Platform.isIOS)
          IconButton(
            splashRadius: 28,
            onPressed: () => bloc.add(const ListUpdate()),
            icon: const Icon(FeatherIcons.repeat),
          ),
        IconButton(
          splashRadius: 28,
          onPressed: () => bloc.add(const ListAdd()),
          icon: const Icon(FeatherIcons.plus),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
