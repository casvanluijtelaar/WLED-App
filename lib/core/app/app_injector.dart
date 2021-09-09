import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wled_app/core/app/app_injector.config.dart';

final getIt = GetIt.instance;  
  
@InjectableInit(generateForDir: ['lib'])  
void configureDependencies() => $initGetIt(getIt);