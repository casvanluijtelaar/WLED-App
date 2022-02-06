import 'package:auto_route/auto_route.dart';
import 'package:wled/features/features.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      page: DeviceListView,
      path: 'devices',
      initial: true,
    ),
    AutoRoute<void>(
      page: DeviceControlView,
      path: 'controls',
    ),
  ],
)
class $AppRouter {}
