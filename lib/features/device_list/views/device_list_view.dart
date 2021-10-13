import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wled/core/core.dart';
import 'package:wled/features/device_list/widgets/device_list_appbar.dart';

import '../bloc/device_list_bloc.dart';
import '../widgets/device_list_grid_view.dart';
import '../widgets/device_list_item.dart';

/// DeviceListView entry point
class DeviceListView extends StatelessWidget {
  const DeviceListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<DeviceListBloc>(
        create: (_) => getIt<DeviceListBloc>()..add(const Update()),
        child: const DeviceListBuilder(),
      );
}

/// main DeviceListBuilderView state builder
class DeviceListBuilder extends StatelessWidget {
  const DeviceListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceListBloc>();

    return BlocBuilder<DeviceListBloc, DeviceListState>(
      builder: (context, state) => Scaffold(
        appBar: const DeviceListAppbar(),
        body: RefreshIndicator(
          onRefresh: () async => bloc.add(const Update()),
          child: state is Found

              /// if devices are found, display them in a dynamic grid
              ? DeviceListGridview.extent(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  mainAxisSpacing: Kpadding.medium,
                  crossAxisSpacing: Kpadding.medium,
                  padding: const EdgeInsets.all(Kpadding.medium),
                  maxCrossAxisExtent: 600,
                  childHeight: 108,
                  children: state.devices
                      .map((e) => DeviceListItem(device: e))
                      .toList(),
                )

              /// if there are no items, we still want the ability to pull-down-
              /// to-refresh so we need to wrap the widgets in a scrollview
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
