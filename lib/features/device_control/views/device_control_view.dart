import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wled_app/core/core.dart';

import '../bloc/device_control_bloc.dart';

class DeviceControlView extends StatelessWidget {
  const DeviceControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<DeviceControlBloc>(
        create: (BuildContext context) => getIt<DeviceControlBloc>(),
        child: const DeviceControl(),
      );
}

class DeviceControl extends StatelessWidget {
  const DeviceControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceControl>();
    final theme = context.theme;

    return Container();
  }
}
