part of 'device_list_tutorial_bloc.dart';

@freezed
class DeviceListTutorialEvent with _$DeviceListTutorialEvent {
  const factory DeviceListTutorialEvent.started() = _Started;
}