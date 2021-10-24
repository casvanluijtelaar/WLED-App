import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wled/core/core.dart';

import '../domain/device_list_repository.dart';

part 'device_list_bloc.freezed.dart';
part 'device_list_event.dart';
part 'device_list_state.dart';

@injectable
class DeviceListBloc extends Bloc<DeviceListEvent, DeviceListState> {
  DeviceListBloc(
    this._listRepository,
    this._updateRepository,
    this._router,
  ) : super(const Loading()) {
    
    on<Add>(_onAdd);
    on<Discovered>(_onDiscovered);
    on<DevicePressed>(_onDevicePressed);
    on<Update>(_onUpdate, transformer: droppable());
    on<DevicePower>(_onDevicePower, transformer: BlocTransformers.debounce);
    on<DeviceSlider>(_onDeviceSlider, transformer: BlocTransformers.debounce);
    on<DeviceSave>(_onDeviceSave);
    on<DeviceEdit>(_onDeviceEdit);
    on<DeviceDelete>(_onDeviceDelete);
    on<DeviceGlobalPower>(_onGlobal, transformer: BlocTransformers.debounce);
    on<Periodic>(_onPeriodic);

    /// periodically callback for updating devices on a fixed time interval
    Stream<void>.periodic(Kduration.xLarge)
        .listen((_) => add(const Periodic()));
  }

  final DeviceListRepository _listRepository;
  final DeviceUpdateRepository _updateRepository;
  final AppRouter _router;

  /// subscription for restarting stream if the user requests an [Update]
  StreamSubscription<List<WledDevice>>? _deviceStream;

  /// when a user refreshes the page, reset the device
  /// discovery stream and state machine
  Future<void> _onUpdate(Update _, Emitter<DeviceListState> emit) async {
    emit(const Loading());
    await _deviceStream?.cancel();

    final stream = _listRepository.getWledDevices();
    _deviceStream = stream.listen((d) => add(Discovered(d)));
  }

  /// periodically updates all wled devices in the current state with new data
  /// when there are wled devices in the current state.
  Future<void> _onPeriodic(Periodic _, Emitter<DeviceListState> emit) async {
    if (state is! Found) return;

    final devices = (state as Found).devices;
    final futures = devices.map(_updateRepository.updateWledDevice);

    final results = await Future.wait(futures);
    emit(Found(results));
  }

  /// on a new device discovery, checks if there are no devices in the state
  /// yet, create a new list from this single discovery. if there are already
  /// devices in the state, only add this discovery if it's new
  void _onDiscovered(Discovered event, Emitter<DeviceListState> emit) {
    if (event.devices.isEmpty) return emit(const Empty());
    if (state is Loading) return emit(Found(event.devices));

    final current = List<WledDevice>.from((state as Found).devices);
    event.devices.forEach(current.addIfNotContains);

    emit(Found(current));
  }

  /// navigate to the DeviceAdd route. then check if the route returns a wled
  /// device. if so, update it and add it to the state
  Future<void> _onAdd(Add event, Emitter<DeviceListState> emit) async {
    final device = await _router.push<WledDevice>(DeviceAddRoute());
    if (device == null) return;

    final items = await _update(device);
    emit(Found(items));
  }

  /// when a device is pressed, and the device is functional we want to open
  /// the controls. currently the in-app-webview-controls are only available
  /// on ios and android, so navigate to the device control route on those
  /// platforms. on other platforms open a browser window. update the device
  /// after the route is returned
  Future _onDevicePressed(DevicePressed event, Emitter emit) async {
    if (event.device.status != DeviceStatus.functional) return;

    final isMobile = Platform.isAndroid || Platform.isIOS;
    if (!isMobile) return launch('http://${event.device.address}/');

    await _router.push(DeviceControlRoute(
      deviceName: event.device.name,
      deviceAddress: 'http://${event.device.address}/',
    ));

    final items = await _update(event.device);
    emit(Found(items));
  }

  /// sends a simple power toggle command to the wled device in this event.
  /// then adds the updated device to the state
  Future<void> _onDevicePower(DevicePower event, Emitter emit) async {
    final items = await _update(event.device, 'T=2');
    emit(Found(items));
  }

  /// acts as a global power toggle for all devices in the state. if any
  /// device is enabled it will turn all devices off, only when all devices
  /// are disabled all of them will be turned on.
  Future<void> _onGlobal(DeviceGlobalPower event, Emitter emit) async {
    if (state is! Found) return;

    final devices = (state as Found).devices;
    final command = 'T=${devices.anyOn ? 0 : 1}';

    final futures = devices.map((device) {
      return _updateRepository.updateWledDevice(device, command);
    });

    final updated = await Future.wait(futures);
    emit(Found(updated));
  }

  /// sends a specific brightness value to the wled device in this event.
  /// then updates this wled device in the state with new data
  Future<void> _onDeviceSlider(DeviceSlider event, Emitter emit) async {
    final items = await _update(event.device, 'A=${event.value}');
    emit(Found(items));
  }

  /// saves this wled device to the local database and sets the current device
  /// in the state to saved
  Future<void> _onDeviceSave(DeviceSave event, Emitter emit) async {
    _listRepository.saveLocal(event.device);
    final items = await _update(event.device.copyWith(isSaved: true));
    emit(Found(items));
  }

  /// deletes this wled device from the local database and sets the current
  /// device in the state to not saved
  Future<void> _onDeviceDelete(DeviceDelete event, Emitter emit) async {
    _listRepository.deleteLocal(event.device);
    final items = await _update(event.device.copyWith(isSaved: false));
    emit(Found(items));
  }

  /// pass the device in the event to the device_add page, the route returns
  /// with a device that's different from the original update the state
  Future<void> _onDeviceEdit(DeviceEdit event, Emitter emit) async {
    final device = await _router.push<WledDevice>(DeviceAddRoute(
      editableDevice: event.device,
    ));

    if (device == event.device || device == null) return;

    final items = await _update(device);
    emit(Found(items));
  }

  /// state management helper method, updates the provided device and correctly
  /// adds it back to the device list in it's correct position
  Future<List<WledDevice>> _update(WledDevice device, [String? data]) async {
    final update = await _updateRepository.updateWledDevice(device, data);
    // replace the device with it's updated version
    if (state is Loading || state is Empty) return [device];
    return List<WledDevice>.from((state as Found).devices)
      ..addOrReplace(update);
  }

  @override
  Future<void> close() async {
    await _deviceStream?.cancel();
    return super.close();
  }
}
