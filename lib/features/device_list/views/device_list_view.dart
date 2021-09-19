import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:wled/core/core.dart';

import '../bloc/device_list_bloc.dart';
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
        builder: (context, state) => CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            /// extended appbar to include pull-to-refresh feature
            SliverAppBar(
              pinned: true,
              stretch: true,
              backgroundColor: AppTheme.backgroundColor,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                title: Text(context.locale.deviceListTitle),
                titlePadding: EdgeInsets.all(context.isPhone
                    ? Consts.paddingMedium
                    : Consts.paddingLarge),
                stretchModes: const [StretchMode.fadeTitle],
              ),

              /// when a phone is in landscape there's not enough room for the
              /// extended appbar, so set the height to the standard appbar
              expandedHeight: context.isPhone && context.isLandscape ? 56 : 160,
              onStretchTrigger: () async => bloc.add(const Update()),
              actions: [
                InkWell(
                  onTap: () => bloc.add(const Add()),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Consts.paddingExtraSmall,
                      horizontal: Consts.paddingSmall,
                    ),
                    child: Row(
                      children: [
                        /// on any screen larger than mobile, add some text to
                        /// the button to increase the size and usability
                        if (!context.isPhone)
                          Text(
                            context.locale.deviceListAction,
                            style: theme.textTheme.button,
                          ),
                        const Padding(
                          padding: EdgeInsets.all(Consts.paddingSmall),
                          child: Icon(FeatherIcons.plus),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            /// only display in list when we are searching for  devices
            if (state is Loading)
              SliverToBoxAdapter(
                child: LayoutBuilder(
                  /// we need to center the loading indicator on the screen
                  /// but since we have an unlimited height we need to calculate
                  /// the offset every time the layout is updated
                  builder: (_, __) => SizedBox(
                    height: context.isPortrait
                        ? context.height - 160
                        : context.height - 56,
                    child: LoadingWidget(
                      text: context.locale.deviceListLoading,
                    ),
                  ),
                ),
              ),

            /// only display when we have actual list items to show
            if (state is Found)
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
        ),
      ),
    );
  }
}
