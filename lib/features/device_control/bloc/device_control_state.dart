part of 'device_control_bloc.dart';

@freezed
class DeviceControlState with _$DeviceControlState {
  const factory DeviceControlState.initial() = Initial;

  const factory DeviceControlState.loaded({
    required String name,
    required String address,
  }) = Loaded;
}
