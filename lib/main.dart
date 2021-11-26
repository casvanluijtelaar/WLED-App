import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wled/core/core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
  await hive.openBox<WledDevice>(
    Kasset.devicesBox,
    compactionStrategy: (_, deleted) => deleted > 5,
  );

  /// run main application
  runZonedGuarded(
    () => BlocOverrides.runZoned(() => runApp(const App()),
        blocObserver: AppBlocObserver()),
    (e, s) => log(e.toString(), stackTrace: s),
  );

  /// setup custom desktop frames
  if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
    doWhenWindowReady(() => appWindow
      ..minSize = const Size(400, 300)
      ..size = const Size(1280, 720)
      ..alignment = Alignment.center
      ..title = 'WLED'
      ..show());
  }
}
