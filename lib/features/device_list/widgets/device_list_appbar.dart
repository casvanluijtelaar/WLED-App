import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:wled/core/core.dart';

import '../bloc/device_list_bloc.dart';

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

      /// on mobile, show a simple 'add' icon. on desktop show an add and
      /// refresh text button
      actions: !context.isPhone
          ? [
              TextButton(
                onPressed: () => bloc.add(const Update()),
                child: Text(context.locale.deviceListRefresh),
              ),
              TextButton(
                onPressed: () => bloc.add(const Add()),
                child: Text(context.locale.deviceListAdd),
              ),
            ]
          : [
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
