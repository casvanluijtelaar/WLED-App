// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/device_list/device_list.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    Device_list.name: (routeData) => _i1.MaterialPageX<_i3.DeviceListView>(
        routeData: routeData,
        builder: (_) {
          return const _i3.DeviceListView();
        })
  };

  @override
  List<_i1.RouteConfig> get routes =>
      [_i1.RouteConfig(Device_list.name, path: '/')];
}

class Device_list extends _i1.PageRouteInfo {
  const Device_list() : super(name, path: '/');

  static const String name = 'Device_list';
}
