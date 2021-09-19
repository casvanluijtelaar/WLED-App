import 'package:auto_route/auto_route.dart';
import 'package:wled/features/features.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute<DeviceListView>(
      page: DeviceListView,
      path: 'devices',
      initial: true,
    ),
    AutoRoute<DeviceControlView>(
      page: DeviceControlView,
      path: 'controls/:deviceAddress',
    ),
  ],
)
class $AppRouter {}
