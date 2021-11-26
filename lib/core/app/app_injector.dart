import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'app_injector.config.dart';
import 'app_router.gr.dart';

final getIt = GetIt.instance;

@InjectableInit(generateForDir: ['lib'])
void configureDependencies() => $initGetIt(getIt);

@module
abstract class RegisterModule {
  @singleton
  AppRouter get appRouter => AppRouter();

  @singleton
  HiveInterface get hive => Hive;
}
