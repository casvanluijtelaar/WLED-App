part of 'device_list_bloc.dart';

class DeviceListState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DeviceListLoading extends DeviceListState {}

class DeviceListFound extends DeviceListState {
  DeviceListFound(this.devices);
  final List<WledDevice> devices;

  @override
  List<Object?> get props => devices;
}
