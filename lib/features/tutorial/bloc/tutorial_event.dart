part of 'tutorial_bloc.dart';

@freezed
class TutorialEvent with _$TutorialEvent {
  const factory TutorialEvent.started() = _Started;
}