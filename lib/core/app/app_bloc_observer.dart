import 'dart:developer';

import 'package:bloc/bloc.dart';

// ignore_for_file: avoid_dynamic_calls
class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    log(
      '${bloc.runtimeType} '
      'from ${transition.currentState.runtimeType} '
      'to ${transition.nextState.runtimeType}',
    );
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log(error.toString(), stackTrace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}
