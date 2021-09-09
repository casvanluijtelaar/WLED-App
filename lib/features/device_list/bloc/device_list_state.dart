part of 'device_list_bloc.dart';

class DeviceListState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DeviceListEmpty extends DeviceListState {}

class DeviceListLoading extends DeviceListState {}

class DeviceListSucces extends DeviceListState {
  DeviceListSucces(this.devices);
  final List<WledDevice> devices;

  @override
  List<Object?> get props => devices;
}
