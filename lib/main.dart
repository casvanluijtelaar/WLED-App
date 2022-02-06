import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:wled/core/core.dart';
import 'package:wled/features/features.dart';
import 'package:wled/features/wled_device/data/http_connection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // temp because injectable is broken
  getIt
    ..registerSingleton(HttpConnection())
    ..registerSingleton(DeviceUpdateRepository(getIt()));

  /// setup GetIt injections
  configureDependencies();

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
