import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:wled_app/core/app/app_theme.dart';
import 'package:wled_app/core/core.dart';

import '../bloc/device_list_bloc.dart';
import '../widgets/device_list_item.dart';
import '../widgets/device_list_loading.dart';

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
      body: BlocBuilder<DeviceListBloc, DeviceListState>(
        builder: (context, state) {
          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                stretch: true,
                backgroundColor: AppTheme.backgroundColor,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  title: const Text('Devices'),
                  titlePadding: EdgeInsets.all(
                    context.isPhone
                        ? Consts.paddingMedium
                        : Consts.paddingLarge,
                  ),
                ),
                expandedHeight: 160,
                onStretchTrigger: () async => bloc.add(DeviceListUpdate()),
                actions: [
                  IconButton(
                    onPressed: () => bloc.add(DeviceAdd()),
                    icon: const Icon(FeatherIcons.plus),
                  ),
                ],
              ),
              if (state is DeviceListLoading) const DeviceListLoadingWidget(),
              if (state is DeviceListFound)
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.isPhone
                        ? Consts.paddingMedium
                        : Consts.paddingLarge,
                  ),

                  /// on mobile phones display all the devices in a list, on
                  /// larger displays display a grid
                  sliver: context.isPhone
                      ? SliverList(
                          delegate: SliverChildListDelegate(
                            state.devices
                                .map((e) => DeviceListItem(device: e))
                                .toList(),
                          ),
                        )
                      : SliverGrid.extent(
                          mainAxisSpacing: Consts.paddingMedium,
                          crossAxisSpacing: Consts.paddingMedium,
                          maxCrossAxisExtent: 260,
                          children: state.devices
                              .map((e) => DeviceListItem(device: e))
                              .toList(),
                        ),
                ),
            ],
          );
        },
      ),
    );
  }
}
