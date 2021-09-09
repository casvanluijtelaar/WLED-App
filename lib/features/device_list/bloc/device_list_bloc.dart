import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:wled_app/core/core.dart';

import '../data/models/wled_device.dart';
import '../data/repository/device_list_repository.dart';

part 'device_list_event.dart';
part 'device_list_state.dart';

@injectable
class DeviceListBloc extends Bloc<DeviceListEvent, DeviceListState> {
  DeviceListBloc(this._repository) : super(DeviceListLoading()) {
    on<DeviceListUpdate>(_onUpdate);
    on<DeviceAdd>(_onDeviceAdd);
    on<DevicePressed>(_onDevicePressed);
    on<DevicePower>(_onDevicePower, transformer: BlocTransformers.debounce);
    on<DeviceSlider>(_onDeviceSlider, transformer: BlocTransformers.debounce);
  }

  final DeviceListRepository _repository;

  Future<void> _onUpdate(
    DeviceListUpdate event,
    Emitter<DeviceListState> emit,
  ) async {

    emit(DeviceListLoading());

    final devices = await _repository.getWledDevicesAsync(
      const Duration(seconds: 2),
    );

    emit(devices.isEmpty ? DeviceListEmpty() : DeviceListSucces(devices));
  }

  void _onDeviceAdd(
    DeviceAdd event,
    Emitter<DeviceListState> emit,
  ) {
    /// navigator to device add
  }

  void _onDevicePressed(
    DevicePressed event,
    Emitter<DeviceListState> emit,
  ) {}

  /// sends an updates the device and emits the updated list
  Future<void> _onDevicePower(
    DevicePower event,
    Emitter<DeviceListState> emit,
  ) async {
    /// update device
    final device = await _repository.updateWledDevice(event.device, 'T=2');

    /// update list
    final items = (state as DeviceListSucces).devices;
    final index = items.indexOf(event.device);
    items[index] = device;

    emit(DeviceListSucces(items));
  }

  /// sends an update to the device with the specified brightness value and
  /// updates the devices list
  Future<void> _onDeviceSlider(
    DeviceSlider event,
    Emitter<DeviceListState> emit,
  ) async {
    /// update device
    final device = await _repository.updateWledDevice(
      event.device,
      'A=${event.value}',
    );

    /// update list
    final items = (state as DeviceListSucces).devices;
    final index = items.indexOf(event.device);
    items[index] = device;

    emit(DeviceListSucces(items));
  }
}
