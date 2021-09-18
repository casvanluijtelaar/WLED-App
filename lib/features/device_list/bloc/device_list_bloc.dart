import 'dart:async';
import 'dart:developer';

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
    on<DeviceDiscovered>(_onDiscovered);
  }

  final DeviceListRepository _repository;

  StreamSubscription<WledDevice>? _deviceStream;

  /// when a user refreshes the page, reset the device discovery stream and
  /// state machine
  Future<void> _onUpdate(
    DeviceListUpdate event,
    Emitter<DeviceListState> emit,
  ) async {
    // reset to the loading view
    emit(DeviceListLoading());
    // cancel a potentially started stream
    await _deviceStream?.cancel();
    // start the device discovery stream and add the bloc event callback 
    _deviceStream = _repository.getWledDeviceStream().listen((d) {
      add(DeviceDiscovered(d));
    });
  }

  /// when a new deviceDiscovered event is fired, integrate the discovered
  /// device in the current device list
  void _onDiscovered(
    DeviceDiscovered event,
    Emitter<DeviceListState> emit,
  ) {
    // the discovered device
    final device = event.device;
    // if there are no devices yet simply add this first found one
    if (state is DeviceListLoading) return emit(DeviceListFound([device]));
    // get the currently dicovered device list
    final devices = List<WledDevice>.from((state as DeviceListFound).devices);
    // add the device to the list if it's not a duplicate
    if (!devices.contains(device)) devices.add(device);
    // emit the new device list
    emit(DeviceListFound(devices));
  }

  /// navigate to the DeviceAdd route
  void _onDeviceAdd(
    DeviceAdd event,
    Emitter<DeviceListState> emit,
  ) {
    /// TODO: navigator to device add
  }

  /// navigate to the DeviceControls route
  void _onDevicePressed(
    DevicePressed event,
    Emitter<DeviceListState> emit,
  ) {
    /// TODO: navigator to deviceControls
  }

  /// sends an updates the device and emits the updated list
  Future<void> _onDevicePower(
    DevicePower event,
    Emitter<DeviceListState> emit,
  ) async {
    // send power command to device and wait for updated data response
    final device = await _repository.updateWledDevice(event.device, 'T=2');

    // replace the device with it's updated version
    final items = (state as DeviceListFound).devices;
    final index = items.indexOf(event.device);
    items[index] = device;

    // update the device list
    emit(DeviceListFound(items));
  }

  /// sends an update to the device with the specified brightness value and
  /// updates the devices list
  Future<void> _onDeviceSlider(
    DeviceSlider event,
    Emitter<DeviceListState> emit,
  ) async {
    // send update brightness command to device and wait for updated data 
    final data = 'A=${event.value}';
    final device = await _repository.updateWledDevice(event.device, data);

    // replace the device with it's updated version
    final items = (state as DeviceListFound).devices;
    final index = items.indexOf(event.device);
    items[index] = device;

    // update the device list
    emit(DeviceListFound(items));
  }

  @override

  /// close the device discovery stream when the bloc is unloaded
  Future<void> close() async {
    await _deviceStream?.cancel();
    return super.close();
  }
}
