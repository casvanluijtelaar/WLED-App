part of 'device_list_bloc.dart';

  // ignore_for_file: lines_longer_than_80_chars

@freezed
class DeviceListEvent with _$DeviceListEvent {

  const factory DeviceListEvent.initial() = Initial;
  const factory DeviceListEvent.devicePressed(WledDevice device) = DevicePressed;
  const factory DeviceListEvent.devicePower(WledDevice device) = DevicePower;
  const factory DeviceListEvent.deviceSlider(WledDevice device, int value) = DeviceSlider;

  const factory DeviceListEvent.deviceAdd(BuildContext context) = DeviceAdd;

  const factory DeviceListEvent.listPeriodic() = ListPeriodic;
}
