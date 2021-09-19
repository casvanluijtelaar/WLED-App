part of 'device_list_bloc.dart';

@freezed
class DeviceListEvent with _$DeviceListEvent {
  const factory DeviceListEvent.discovered(WledDevice device) = Discovered;

  const factory DeviceListEvent.update() = Update;

  const factory DeviceListEvent.add() = Add;

  const factory DeviceListEvent.devicePressed(WledDevice device) =
      DevicePressed;

  const factory DeviceListEvent.devicePower(WledDevice device) = DevicePower;

  const factory DeviceListEvent.deviceSlider(WledDevice device, double value) =
      DeviceSlider;
}
