import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wled/core/core.dart';

abstract class BlocTransformers {
  /// bloc transformer that's a debounce time to prevent bloc spamming
  static Stream<T> debounce<T>(
    Stream<T> events,
    Stream<T> Function(T) transitionFn,
  ) {
    return events
        .debounceTime(const Duration(milliseconds: 250))
        .switchMap(transitionFn);
  }
}

mixin AutoResetLazySingleton<E, S> on Bloc<E, S> {
  @override
  Future<void> close() {
    if (getIt.isRegistered<Bloc<E, S>>(instance: this)) {
      getIt.resetLazySingleton<Bloc<E, S>>(instance: this);
    }
    return super.close();
  }
}
