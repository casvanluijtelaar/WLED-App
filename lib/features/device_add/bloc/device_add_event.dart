part of 'device_add_bloc.dart';

@freezed
class DeviceAddEvent with _$DeviceAddEvent {

  const factory DeviceAddEvent.initial(WledDevice? device) = Initial;

}
