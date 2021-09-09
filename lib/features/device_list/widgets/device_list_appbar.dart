import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/device_list_bloc.dart';

class DeviceListAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DeviceListAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceListBloc>();

    return AppBar(
      title: const Text('WLED'),
      actions: [
        TextButton(
          onPressed: () => bloc.add(DeviceAdd()),
          child: const Text('Add a device'),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
