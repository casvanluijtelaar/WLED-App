part of 'device_list_bloc.dart';

@freezed
class DeviceListState with _$DeviceListState {
  const factory DeviceListState.loading() = Loading;

  const factory DeviceListState.found(List<WledDevice> devices) = Found;

  const factory DeviceListState.empty() = Empty;
}
