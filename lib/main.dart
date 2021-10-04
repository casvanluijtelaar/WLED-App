import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wled/core/core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// set up bloc error / transition listener
  Bloc.observer = AppBlocObserver();

  /// setup GetIt injections
  configureDependencies();

  /// set up local database
  final hive = getIt<HiveInterface>();
  await hive.initFlutter();

  /// register hive adapters
  hive
    ..registerAdapter(ColorAdapter())
    ..registerAdapter(DeviceStatusAdapter())
    ..registerAdapter(WledDeviceAdapter());

  // open devices box for acces in the application
  await hive.openBox<WledDevice>(Consts.devicesBox,
      compactionStrategy: (_, d) => d > 5);

  /// run main appllication
  runZonedGuarded(() => runApp(const App()), (error, stackTrace) {
    log(error.toString(), stackTrace: stackTrace);
  });
}
