import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:wled/core/core.dart';

import '../bloc/device_list_bloc.dart';
import '../widgets/device_list_grid_view.dart';
import '../widgets/device_list_item.dart';

/// DeviceListView entry point
class DeviceListView extends StatelessWidget {
  const DeviceListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<DeviceListBloc>(
        create: (BuildContext context) =>
            getIt<DeviceListBloc>()..add(const Update()),
        child: const DeviceList(),
      );
}

/// main DeviceListView state builder
class DeviceList extends StatelessWidget {
  const DeviceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceListBloc>();
    final theme = context.theme;

    return Scaffold(
      body: BlocBuilder<DeviceListBloc, DeviceListState>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(context.locale.deviceListTitle),
            backgroundColor: theme.scaffoldBackgroundColor,
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
          ),

          /// alwas add the option for pull to refresh
          body: RefreshIndicator(
            onRefresh: () async => bloc.add(const Update()),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: SizedBox(
                width: double.maxFinite,
                height: context.height - 56,
                child: () {
                  if (state is Empty) {
                    /// if no items are found, show empty screen
                    return const Center(
                      child: Text('No devices found, add them manually'),
                    );
                  } else if (state is Found) {
                    /// if devices are found, display them in a dynamic grid
                    return RefreshIndicator(
                      onRefresh: () async => bloc.add(const Update()),
                      child: DeviceListGridview.extent(
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
                      ),
                    );
                  } else {
                    /// if it's still fetching data show a loading display
                    return LoadingWidget(
                      text: Platform.isWindows
                          ? context.locale.deviceListLoading
                          : null,
                    );
                  }
                }(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
