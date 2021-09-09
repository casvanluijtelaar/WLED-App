import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app_injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(generateForDir: ['lib'])
void configureDependencies() => $initGetIt(getIt);
