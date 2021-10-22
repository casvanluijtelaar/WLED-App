import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tutorial_event.dart';
part 'tutorial_state.dart';
part 'tutorial_bloc.freezed.dart';

class TutorialBloc extends Bloc<TutorialEvent, TutorialState> {
  TutorialBloc() : super(const _Initial()) {
    on<TutorialEvent>((event, emit) {
    });
  }
}
