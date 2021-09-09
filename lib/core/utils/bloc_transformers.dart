import 'package:rxdart/rxdart.dart';

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
