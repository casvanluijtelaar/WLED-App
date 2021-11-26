part of 'device_control_bloc.dart';

@freezed
// ignore_for_file: lines_longer_than_80_chars
class DeviceControlEvent with _$DeviceControlEvent {
 const factory DeviceControlEvent.devicePressed(WledDevice device) = DevicePressed;
  const factory DeviceControlEvent.devicePower(WledDevice device) = DevicePower;
  const factory DeviceControlEvent.deviceSlider(WledDevice device, int value) = DeviceSlider;
  const factory DeviceControlEvent.deviceSave(WledDevice device) = DeviceSave;
  const factory DeviceControlEvent.deviceEdit(WledDevice device) = DeviceEdit;
  const factory DeviceControlEvent.deviceDelete(WledDevice device) = DeviceDelete;
}
