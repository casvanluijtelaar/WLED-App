import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:wled/core/core.dart';

import '../bloc/device_list_bloc.dart';
import '../widgets/device_list_switch.dart';

class DeviceListAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DeviceListAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceListBloc>();

    return AppBar(
      centerTitle: false,
      title: Text(context.locale.deviceListTitle),
      backgroundColor: context.theme.scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Kpadding.medium),
          child: Center(
            child: BlocBuilder<DeviceListBloc, DeviceListState>(
              builder: (context, state) => state is Found
                  ? DeviceListSwitch(
                      value: state.devices.anyOn,
                      height: 24,
                      onChanged: (v) => bloc.add(const DeviceGlobalPower()),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ),
        // show fixed refresh button instead of pull to refresh
        // on larger devices
        if (!Platform.isAndroid && !Platform.isIOS)
          IconButton(
            onPressed: () => bloc.add(const Update()),
            icon: const Icon(FeatherIcons.repeat),
          ),
        IconButton(
          onPressed: () => bloc.add(const Add()),
          icon: const Icon(FeatherIcons.plus),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
