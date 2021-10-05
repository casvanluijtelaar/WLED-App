part of 'device_add_bloc.dart';

@freezed
class DeviceAddEvent with _$DeviceAddEvent {

  const factory DeviceAddEvent.initial(WledDevice? device) = Initial;

  const factory DeviceAddEvent.ipChanged(String ip) = IpChanged;
  const factory DeviceAddEvent.ipUnfocused() = IpUnfocused;

  const factory DeviceAddEvent.nameChanged(String name) = NameChanged;
  const factory DeviceAddEvent.nameUnfocused() = NameUnfocused;

  const factory DeviceAddEvent.submitted() = Submitted;
  const factory DeviceAddEvent.canceled() = Canceled;
}
