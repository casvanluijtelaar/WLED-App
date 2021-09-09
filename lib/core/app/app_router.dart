import 'package:auto_route/auto_route.dart';
import 'package:wled_app/features/device_list/device_list.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<DeviceListView>(
      page: DeviceListView,
      initial: true,
      name: 'device_list',
    ),
  ],
)
class $AppRouter {}
