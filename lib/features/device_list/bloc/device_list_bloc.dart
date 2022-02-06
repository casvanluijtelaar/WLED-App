import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wled/core/core.dart';
import 'package:wled/features/features.dart';

part 'device_list_bloc.freezed.dart';
part 'device_list_event.dart';
part 'device_list_state.dart';

@injectable
class DeviceListBloc extends Bloc<DeviceListEvent, DeviceListState> {
  DeviceListBloc(
    this._updateRepository,
    this._router,
  ) : super(const Loading()) {
    on<Initial>(_onInit);
    on<DeviceAdd>(_onAdd);
    on<DevicePower>(_onDevicePower, transformer: BlocTransformers.debounce);
    on<DeviceSlider>(_onDeviceSlider, transformer: BlocTransformers.debounce);
    on<DevicePressed>(_onDevicePressed);
    on<ListPeriodic>(_onPeriodic);

    /// periodically callback for updating devices on a fixed time interval
    _periodicStream = Stream<void>.periodic(Kduration.xLarge)
        .listen((_) => add(const ListPeriodic()));
  }

  final DeviceUpdateRepository _updateRepository;
  final AppRouter _router;

  late final StreamSubscription _periodicStream;
  final GlobalKey addButtonKey = GlobalKey();

  Future<void> _onInit(Initial _, Emitter emit) async {
    // emit Loading
    emit(const Loading());
    // look for saved devices
    final savedDevices = <WledDevice>[];
    // if no found return Empty
    if (savedDevices.isEmpty) return emit(const Empty());
    // if some found return Found
    emit(Found(savedDevices));
  }

  /// periodically updates all wled devices in the current state with new data
  /// when there are wled devices in the current state.
  Future<void> _onPeriodic(ListPeriodic _, Emitter emit) async {
    if (state is! Found) return;
    final devices = List<WledDevice>.from((state as Found).devices);

    final futures = devices.map(_updateRepository.updateFromDevice);
    final results = await Future.wait(futures);

    emit(Found(results));
  }

  /// navigate to the the device add screen and add any new devices
  /// to the state
  Future<void> _onAdd(DeviceAdd event, Emitter<DeviceListState> emit) async {
    final devices = await Overlays.showDialog<List<WledDevice>>(
      event.context,
      DeviceAddView(buttonKey: addButtonKey),
    );

    if (devices == null || devices.isEmpty) return;
    emit(Found(_addOrReplaceDeviceInState(devices)));
  }

  /// when a device is pressed, and the device is functional we want to open
  /// the controls. currently the in-app-webview-controls are only available
  /// on ios and android, so navigate to the device control route on those
  /// platforms. on other platforms open a browser window. update the device
  /// after the route is returned
  Future _onDevicePressed(DevicePressed event, Emitter emit) async {
    if (event.device.status != DeviceStatus.functional) return;

    final address = 'http://${event.device.info.ipAddress}/';
    final name = event.device.info.name;

    if (!(Platform.isAndroid || Platform.isIOS)) return launch(address);
    _router.push(DeviceControlRoute(deviceName: name, deviceAddress: address));
  }

  /// sends a simple power toggle command to the wled device in this event.
  /// then adds the updated device to the state
  Future<void> _onDevicePower(DevicePower event, Emitter emit) async {
    final isEnabled = event.device.state.isEnabled;
    final state = event.device.state.copyWith(isEnabled: !isEnabled);

    final device = await _updateRepository.updateFromDevice(
      event.device.copyWith(state: state),
    );

    emit(_addOrReplaceDeviceInState([device]));
  }

  /// sends a specific brightness value to the wled device in this event.
  /// then updates this wled device in the state with new data
  Future<void> _onDeviceSlider(DeviceSlider event, Emitter emit) async {
    final state = event.device.state.copyWith(brightness: event.value);
    final device = await _updateRepository.updateFromDevice(
      event.device.copyWith(state: state),
    );

    emit(_addOrReplaceDeviceInState([device]));
  }

  /// takes a [WledDevice] and compares it to the current state. if the state
  /// does not contain this device it adds it to the correct position. if it
  /// does contain the device it replaces the old device with the new one
  List<WledDevice> _addOrReplaceDeviceInState(List<WledDevice> newDevices) {
    if (state is! Found) return newDevices;

    final devices = (state as Found).devices;
    newDevices.forEach(devices.addOrReplace);
    return devices;
  }

  @override
  Future<void> close() {
    _periodicStream.cancel();
    return super.close();
  }
}
