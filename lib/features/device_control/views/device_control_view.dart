import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:wled_app/core/core.dart';

import '../bloc/device_control_bloc.dart';

class DeviceControlView extends StatelessWidget {
  const DeviceControlView(
    @pathParam this.deviceAddress,
    this.deviceName, {
    Key? key,
  }) : super(key: key);

  final String deviceName;
  final String deviceAddress;

  @override
  Widget build(BuildContext context) => BlocProvider<DeviceControlBloc>(
        create: (BuildContext context) =>
            getIt<DeviceControlBloc>()..add(const Started()),
        child: const DeviceControl(),
      );
}

class DeviceControl extends StatelessWidget {
  const DeviceControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceControlBloc>();

    return BlocBuilder<DeviceControlBloc, DeviceControlState>(
      builder: (context, state) {
        if (state is Initial) {
          const SizedBox.expand(
            child: Center(
              child: LoadingWidget(),
            ),
          );
        } else if (state is Loaded) {
          return Scaffold(
            appBar: AppBar(
              leading: BackButton(onPressed: () => bloc.add(const Back())),
              centerTitle: context.isPhone,
              title: Text(state.name),
            ),
            body: WebView(
              initialUrl: state.address,
              javascriptMode: JavascriptMode.unrestricted,
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
