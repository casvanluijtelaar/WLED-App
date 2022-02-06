// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../features/features.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    DeviceListRoute.name: (routeData) {
      return _i2.MaterialPageX<void>(
          routeData: routeData, child: const _i1.DeviceListView());
    },
    DeviceControlRoute.name: (routeData) {
      final args = routeData.argsAs<DeviceControlRouteArgs>();
      return _i2.MaterialPageX<void>(
          routeData: routeData,
          child: _i1.DeviceControlView(args.deviceAddress, args.deviceName,
              key: args.key));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig('/#redirect',
            path: '/', redirectTo: 'devices', fullMatch: true),
        _i2.RouteConfig(DeviceListRoute.name, path: 'devices'),
        _i2.RouteConfig(DeviceControlRoute.name, path: 'controls')
      ];
}

/// generated route for
/// [_i1.DeviceListView]
class DeviceListRoute extends _i2.PageRouteInfo<void> {
  const DeviceListRoute() : super(DeviceListRoute.name, path: 'devices');

  static const String name = 'DeviceListRoute';
}

/// generated route for
/// [_i1.DeviceControlView]
class DeviceControlRoute extends _i2.PageRouteInfo<DeviceControlRouteArgs> {
  DeviceControlRoute(
      {required String deviceAddress, required String deviceName, _i3.Key? key})
      : super(DeviceControlRoute.name,
            path: 'controls',
            args: DeviceControlRouteArgs(
                deviceAddress: deviceAddress,
                deviceName: deviceName,
                key: key));

  static const String name = 'DeviceControlRoute';
}

class DeviceControlRouteArgs {
  const DeviceControlRouteArgs(
      {required this.deviceAddress, required this.deviceName, this.key});

  final String deviceAddress;

  final String deviceName;

  final _i3.Key? key;

  @override
  String toString() {
    return 'DeviceControlRouteArgs{deviceAddress: $deviceAddress, deviceName: $deviceName, key: $key}';
  }
}
