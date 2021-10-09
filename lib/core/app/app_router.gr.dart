// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:flutter/widgets.dart' as _i5;

import '../../features/features.dart' as _i3;
import '../core.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    DeviceListRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i3.DeviceListView();
        }),
    DeviceControlRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DeviceControlRouteArgs>();
          return _i3.DeviceControlView(args.deviceAddress, args.deviceName,
              key: args.key);
        }),
    DeviceAddRoute.name: (routeData) => _i1.MaterialPageX<_i4.WledDevice>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DeviceAddRouteArgs>(
              orElse: () => const DeviceAddRouteArgs());
          return _i3.DeviceAddView(
              key: args.key, editableDevice: args.editableDevice);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: 'devices', fullMatch: true),
        _i1.RouteConfig(DeviceListRoute.name, path: 'devices'),
        _i1.RouteConfig(DeviceControlRoute.name, path: 'controls'),
        _i1.RouteConfig(DeviceAddRoute.name, path: 'add')
      ];
}

class DeviceListRoute extends _i1.PageRouteInfo {
  const DeviceListRoute() : super(name, path: 'devices');

  static const String name = 'DeviceListRoute';
}

class DeviceControlRoute extends _i1.PageRouteInfo<DeviceControlRouteArgs> {
  DeviceControlRoute(
      {required String deviceAddress, required String deviceName, _i5.Key? key})
      : super(name,
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

  final _i5.Key? key;
}

class DeviceAddRoute extends _i1.PageRouteInfo<DeviceAddRouteArgs> {
  DeviceAddRoute({_i5.Key? key, _i4.WledDevice? editableDevice})
      : super(name,
            path: 'add',
            args: DeviceAddRouteArgs(key: key, editableDevice: editableDevice));

  static const String name = 'DeviceAddRoute';
}

class DeviceAddRouteArgs {
  const DeviceAddRouteArgs({this.key, this.editableDevice});

  final _i5.Key? key;

  final _i4.WledDevice? editableDevice;
}
