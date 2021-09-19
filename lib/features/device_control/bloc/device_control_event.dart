part of 'device_control_bloc.dart';

@freezed
class DeviceControlEvent with _$DeviceControlEvent {
  const factory DeviceControlEvent.started() = Started;
}