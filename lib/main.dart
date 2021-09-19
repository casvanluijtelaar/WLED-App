import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'package:wled_app/core/core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();
  configureDependencies();

  getIt.registerLazySingleton<AppRouter>(() => AppRouter());

  runZonedGuarded(() => runApp(const App()), (error, stackTrace) {
    log(error.toString(), stackTrace: stackTrace);
  });
}
