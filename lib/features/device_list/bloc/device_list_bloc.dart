import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wled/core/core.dart';

import '../data/repository/device_list_repository.dart';

part 'device_list_bloc.freezed.dart';
part 'device_list_event.dart';
part 'device_list_state.dart';

@injectable
class DeviceListBloc extends Bloc<DeviceListEvent, DeviceListState> {
  DeviceListBloc(this._repository, this._router) : super(const Loading()) {
    on<Discovered>(_onDiscovered);
    on<Add>(_onAdd);
    on<DevicePressed>(_onDevicePressed);
    on<Update>(_onUpdate, transformer: droppable());
    on<DevicePower>(_onDevicePower, transformer: BlocTransformers.debounce);
    on<DeviceSlider>(_onDeviceSlider, transformer: BlocTransformers.debounce);
  }

  final DeviceListRepository _repository;
  final AppRouter _router;

  StreamSubscription<WledDevice>? _deviceStream;

  /// when a user refreshes the page, reset the device discovery stream and
  /// state machine
  Future<void> _onUpdate(Update _, Emitter<DeviceListState> emit) async {
    // reset to the loading view
    emit(const Loading());
    // cancel a potentially started stream
    await _deviceStream?.cancel();
    // start the device discovery stream and add the bloc event callback
    _deviceStream = _repository.getWledDeviceStream().listen((d) {
      add(Discovered(d));
    });
  }

  /// when a new deviceDiscovered event is fired, integrate the discovered
  /// device in the current device list
  void _onDiscovered(Discovered event, Emitter<DeviceListState> emit) {
    // the discovered device
    final device = event.device;
    // if there are no devices yet simply add this first found one
    if (state is Loading) return emit(Found([device]));
    // get the currently dicovered device list
    final devices = List<WledDevice>.from((state as Found).devices);
    // add the device to the list if it's not a duplicate
    if (!devices.contains(device)) devices.add(device);
    // emit the new device list
    emit(Found(devices));
  }

  /// navigate to the DeviceAdd route
  void _onAdd(Add event, Emitter<DeviceListState> emit) {
    /// TODO: navigator to device add
  }

  /// navigate to the DeviceControls route
  Future<void> _onDevicePressed(DevicePressed event, Emitter _) async {
    await _router.push(DeviceControlRoute(
        deviceName: event.device.name,
        deviceAddress: 'http://${event.device.address}/'));

    return _updateStateDevice(event.device);
  }

  /// sends an updates the device and emits the updated list
  Future<void> _onDevicePower(DevicePower event, Emitter _) {
    return _updateStateDevice(event.device, 'T=2');
  }

  /// sends an update to the device with the specified brightness value and
  /// updates the devices list
  Future<void> _onDeviceSlider(DeviceSlider event, Emitter _) {
    return _updateStateDevice(event.device, 'A=${event.value}');
  }

  /// updates a wled device and updates the same device in the current state
  Future<void> _updateStateDevice(WledDevice device, [String data = '']) async {
    final update = await _repository.updateWledDevice(device, data);

    // replace the device with it's updated version
    final items = List<WledDevice>.from((state as Found).devices);
    final index = items.indexWhere((e) => e.address == update.address);
    items[index] = update;

    // update the device list
    emit(Found(items));
  }

  /// close the device discovery stream when the bloc is unloaded
  @override
  Future<void> close() async {
    await _deviceStream?.cancel();
    return super.close();
  }
}
