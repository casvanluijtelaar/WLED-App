import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wled_app/core/core.dart';
import 'package:wled_app/features/device_list/data/models/wled_device.dart';

import '../bloc/device_list_bloc.dart';
import '../widgets/device_list_appbar.dart';
import '../widgets/device_list_item.dart';

/// DeviceListView entry point
class DeviceListView extends StatelessWidget {
  const DeviceListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<DeviceListBloc>(
        create: (BuildContext context) =>
            getIt<DeviceListBloc>()..add(DeviceListUpdate()),
        child: const DeviceList(),
      );
}

/// main DeviceListView state builder
class DeviceList extends StatelessWidget {
  const DeviceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceListBloc>();

    return Scaffold(
      appBar: const DeviceListAppbar(),
      body: Center(
        child: RefreshIndicator(
          onRefresh: () async => bloc.add(DeviceListUpdate()),
          child: BlocBuilder<DeviceListBloc, DeviceListState>(
            builder: (context, state) {
              // if something went wrong show the error to the user
              if (state is DeviceListEmpty) return const Empty();
              // if the it succeeded, display the results
              if (state is DeviceListSucces) return Succes(state.devices);
              // show loading widget whilst waiting
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

/// No devices, show info and option to add one
class Empty extends StatelessWidget {
  const Empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('No Devices');
  }
}

/// displays a list with a [DeviceListItem] for every [WledDevice]
class Succes extends StatelessWidget {
  const Succes(
    this.devices, {
    Key? key,
  }) : super(key: key);

  final List<WledDevice> devices;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: devices.length,
        itemBuilder: (context, index) => DeviceListItem(
          device: devices[index],
        ),
      );
}
