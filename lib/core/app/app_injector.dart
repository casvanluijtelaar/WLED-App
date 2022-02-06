import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wled/features/features.dart';

import 'app_injector.config.dart';
import 'app_router.gr.dart';

final getIt = GetIt.instance;

@InjectableInit(
  generateForDir: ['lib'],
  ignoreUnregisteredTypes: [AppRouter, DeviceUpdateRepository],
)
void configureDependencies() => $initGetIt(getIt);

@module
abstract class RegisterModule {
  AppRouter get appRouter => AppRouter();
}
