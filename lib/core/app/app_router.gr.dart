// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/features.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    DeviceListRoute.name: (routeData) => _i1.MaterialPageX<_i3.DeviceListView>(
        routeData: routeData,
        builder: (_) {
          return const _i3.DeviceListView();
        }),
    DeviceControlRoute.name: (routeData) =>
        _i1.MaterialPageX<_i3.DeviceControlView>(
            routeData: routeData,
            builder: (_) {
              return const _i3.DeviceControlView();
            })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: 'devices', fullMatch: true),
        _i1.RouteConfig(DeviceListRoute.name, path: 'devices'),
        _i1.RouteConfig(DeviceControlRoute.name, path: 'controls')
      ];
}

class DeviceListRoute extends _i1.PageRouteInfo {
  const DeviceListRoute() : super(name, path: 'devices');

  static const String name = 'DeviceListRoute';
}

class DeviceControlRoute extends _i1.PageRouteInfo {
  const DeviceControlRoute() : super(name, path: 'controls');

  static const String name = 'DeviceControlRoute';
}
