part of 'device_list_bloc.dart';

  // ignore_for_file: lines_longer_than_80_chars

@freezed
class DeviceListEvent with _$DeviceListEvent {
  const factory DeviceListEvent.listUpdate() = ListUpdate;
  const factory DeviceListEvent.listDiscovered(List<WledDevice> devices) = ListDiscovered;
  const factory DeviceListEvent.listAdd() = ListAdd;

  const factory DeviceListEvent.listPower() = ListPower;
  const factory DeviceListEvent.listMove(int oldIndex, int newIndex) = ListMove;
  const factory DeviceListEvent.listPeriodic() = ListPeriodic;

  const factory DeviceListEvent.listDeviceUpdate(WledDevice device) = ListDeviceUpdate;
}
