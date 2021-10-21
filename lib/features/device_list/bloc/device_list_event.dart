part of 'device_list_bloc.dart';

@freezed
class DeviceListEvent with _$DeviceListEvent {
  const factory DeviceListEvent.update() = Update;

  const factory DeviceListEvent.discovered(List<WledDevice> devices) =
      Discovered;

  const factory DeviceListEvent.add() = Add;

  const factory DeviceListEvent.devicePressed(WledDevice device) =
      DevicePressed;

  const factory DeviceListEvent.devicePower(WledDevice device) = DevicePower;

  const factory DeviceListEvent.deviceSlider(WledDevice device, int value) =
      DeviceSlider;

  const factory DeviceListEvent.deviceSave(WledDevice device) = DeviceSave;

  const factory DeviceListEvent.deviceEdit(WledDevice device) = DeviceEdit;

  const factory DeviceListEvent.deviceDelete(WledDevice device) = DeviceDelete;

  const factory DeviceListEvent.deviceGlobalPower() = DeviceGlobalPower;

  const factory DeviceListEvent.periodicUpdate() = Periodic;
}
