import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wled/core/core.dart';

import '../domain/device_fetch_repository.dart';
import '../domain/device_update_repository.dart';

part 'device_control_event.dart';
part 'device_control_state.dart';
part 'device_control_bloc.freezed.dart';

/// a bloc handling all the individual [WledDevice] interactions
@lazySingleton
class DeviceControlBloc extends Bloc<DeviceControlEvent, DeviceControlState>
    with AutoResetLazySingleton {
      
  DeviceControlBloc(
    this._fetchRepository,
    this._updateRepository,
    this._router,
  ) : super(const DeviceControlState()) {
    on<DevicePressed>(_onDevicePressed);
    on<DevicePower>(_onDevicePower, transformer: BlocTransformers.debounce);
    on<DeviceSlider>(_onDeviceSlider, transformer: BlocTransformers.debounce);
    on<DeviceSave>(_onDeviceSave);
    on<DeviceEdit>(_onDeviceEdit);
    on<DeviceDelete>(_onDeviceDelete);
  }

  final DeviceFetchRepository _fetchRepository;
  final DeviceUpdateRepository _updateRepository;
  final AppRouter _router;

  /// when a device is pressed, and the device is functional we want to open
  /// the controls. currently the in-app-webview-controls are only available
  /// on ios and android, so navigate to the device control route on those
  /// platforms. on other platforms open a browser window. update the device
  /// after the route is returned
  Future _onDevicePressed(DevicePressed event, Emitter emit) async {
    if (event.device.status != DeviceStatus.functional) return;

    final address = 'http://${event.device.address}/';
    final name = event.device.name;

    if (!(Platform.isAndroid || Platform.isIOS)) return launch(address);
    _router.push(DeviceControlRoute(deviceName: name, deviceAddress: address));
  }

  /// sends a simple power toggle command to the wled device in this event.
  /// then adds the updated device to the state
  Future<void> _onDevicePower(DevicePower event, Emitter emit) async {
    final device = await _updateRepository.update(event.device, 'T=2');
    emit(DeviceControlState(device: device));
  }

  /// sends a specific brightness value to the wled device in this event.
  /// then updates this wled device in the state with new data
  Future<void> _onDeviceSlider(DeviceSlider event, Emitter emit) async {
    final command = 'A=${event.value}';
    final device = await _updateRepository.update(event.device, command);
    emit(DeviceControlState(device: device));
  }

  /// saves this wled device to the local database and sets the current device
  /// in the state to saved
  Future<void> _onDeviceSave(DeviceSave event, Emitter emit) async {
    _fetchRepository.saveLocal(event.device);
    emit(DeviceControlState(device: event.device.copyWith(isSaved: true)));
  }

  /// deletes this wled device from the local database and sets the current
  /// device in the state to not saved
  Future<void> _onDeviceDelete(DeviceDelete event, Emitter emit) async {
    _fetchRepository.deleteLocal(event.device);
    emit(DeviceControlState(device: event.device.copyWith(isSaved: false)));
  }

  /// pass the device in the event to the device_add page, the route returns
  /// with a device that's different from the original update the state
  Future<void> _onDeviceEdit(DeviceEdit event, Emitter emit) async {
    final device = await _router.push<WledDevice>(DeviceAddRoute(
      editableDevice: event.device,
    ));

    if (device == event.device || device == null) return;
    emit(DeviceControlState(device: device));
  }
}
