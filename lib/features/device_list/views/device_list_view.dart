import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reorderable_grid/reorderable_grid.dart';
import 'package:wled/core/core.dart';

import '../bloc/device_control_bloc.dart';
import '../bloc/device_list_bloc.dart';
import '../domain/extensions.dart';
import '../widgets/device_list_appbar.dart';
import '../widgets/device_list_grid_delegate.dart';
import '../widgets/device_list_item.dart';

/// DeviceListView entry point
class DeviceListView extends StatelessWidget {
  const DeviceListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<DeviceListBloc>(
            create: (_) => getIt<DeviceListBloc>()..add(const ListUpdate()),
          ),
          BlocProvider<DeviceControlBloc>(
            create: (_) => getIt<DeviceControlBloc>(),
          ),
        ],
        child: const DeviceListBuilder(),
      );
}

/// main DeviceListBuilderView state builder
class DeviceListBuilder extends StatelessWidget {
  const DeviceListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceListBloc>();
    final controls = context.read<DeviceControlBloc>();

    return BlocBuilder<DeviceListBloc, DeviceListState>(
      builder: (context, state) => Scaffold(
        appBar: DeviceListAppbar(
          // ignore: avoid_bool_literals_in_conditional_expressions
          isEnabled: state is Found
              ? state.devices.anyOn
              : false,
        ),
        body: RefreshIndicator(
          onRefresh: () async => bloc.add(const ListUpdate()),
          child: state is Found
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Kpadding.medium,
                  ),
                  child: ReorderableGridView.builder(
                    gridDelegate: const DeviceListSliverGridDelegate(
                      mainAxisSpacing: Kpadding.medium,
                      crossAxisSpacing: Kpadding.medium,
                      maxCrossAxisExtent: 600,
                      height: 108,
                    ),
                    onReorder: (o, n) => bloc.add(ListMove(o, n)),
                    itemCount: state.devices.length,
                    itemBuilder: (BuildContext context, int index) {
                      final device = state.devices[index];

                      return DeviceListItem(
                        key: ValueKey(device),
                        device: device,
                        onDelete: () => controls.add(DeviceDelete(device)),
                        onEdit: () => controls.add(DeviceEdit(device)),
                        onSave: () => controls.add(DeviceSave(device)),
                        onPower: (v) => controls.add(DevicePower(device)),
                        onPressed: () => controls.add(DevicePressed(device)),
                        onSlide: (v) => controls.add(DeviceSlider(device, v)),
                      );
                    },
                  ),
                )
              : SingleChildScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: context.height - AppBar().preferredSize.height,
                    child: state is Empty
                        ? Center(child: Text(context.locale.deviceListEmpty))
                        : LoadingWidget(
                            text: Platform.isWindows
                                ? context.locale.deviceListLoading
                                : null,
                          ),
                  ),
                ),
        ),
      ),
    );
  }
}
