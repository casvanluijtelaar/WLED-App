part of 'device_control_bloc.dart';

@freezed
class DeviceControlState with _$DeviceControlState {
  const factory DeviceControlState({WledDevice? device}) = _DeviceControlState;
}
