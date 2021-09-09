part of 'device_list_bloc.dart';

class DeviceListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}


/// when the user wants to fetch the list of devices
class DeviceListUpdate extends DeviceListEvent {}

/// when the user presses the "add new device" button
class DeviceAdd extends DeviceListEvent {}

/// when the user presses a specific device widget
class DevicePressed extends DeviceListEvent {
  DevicePressed(this.device);
  final WledDevice device;

  @override
  List<Object?> get props => [device];
}

/// when the user presses the power button on a device widget
class DevicePower extends DeviceListEvent {
  DevicePower(this.device);
  final WledDevice device;

  @override
  List<Object?> get props => [device];
}

/// when the user changed the slider on a device widget
class DeviceSlider extends DeviceListEvent {
  DeviceSlider(this.device, this.value);
  final WledDevice device;
  final double value;

  @override
  List<Object?> get props => [device, value];
}
