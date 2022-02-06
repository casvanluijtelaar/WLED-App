import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wled/core/core.dart';

import '../bloc/device_list_bloc.dart';
import '../widgets/device_list_grid_delegate.dart';
import '../widgets/device_list_item.dart';

/// DeviceListView entry point
class DeviceListView extends StatelessWidget {
  const DeviceListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<DeviceListBloc>(
        create: (_) => getIt<DeviceListBloc>()..add(const Initial()),
        child: const DeviceListBuilder(),
      );
}

/// main DeviceListBuilderView state builder
class DeviceListBuilder extends StatelessWidget {
  const DeviceListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceListBloc>();

    return Scaffold(
      body: Center(
        child: BlocBuilder<DeviceListBloc, DeviceListState>(
          builder: (context, state) {
            if (state is Empty) return Text(context.locale.deviceListEmpty);
            if (state is Found) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Kpadding.medium,
                ),
                child: GridView.builder(
                  gridDelegate: const DeviceListSliverGridDelegate(
                    mainAxisSpacing: Kpadding.medium,
                    crossAxisSpacing: Kpadding.medium,
                    maxCrossAxisExtent: 600,
                    height: 108,
                  ),
                  itemCount: state.devices.length,
                  itemBuilder: (BuildContext context, int index) {
                    final device = state.devices[index];

                    return DeviceListItem(
                      key: ValueKey(device),
                      device: device,
                      onPower: (v) => bloc.add(DevicePower(device)),
                      onPressed: () => bloc.add(DevicePressed(device)),
                      onSlide: (v) => bloc.add(DeviceSlider(device, v)),
                    );
                  },
                ),
              );
            }

            return const LoadingWidget();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: bloc.addButtonKey,
        onPressed: () => bloc.add(DeviceAdd(context)),
        child: const Icon(Icons.add),
      ),
    );
  }
}
