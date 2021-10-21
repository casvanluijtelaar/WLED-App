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

    Stream<void>.periodic(Kduration.xLarge)
        .listen((_) => add(const Periodic()));
  }

  final DeviceListRepository _listRepository;
  final DeviceUpdateRepository _updateRepository;
  final AppRouter _router;

  /// subscription for restarting stream if the user requests an [Update]
  StreamSubscription<List<WledDevice>>? _deviceStream;

  /// when a user refreshes the page, reset the device discovery stream and
  /// state machine
  Future<void> _onUpdate(Update _, Emitter<DeviceListState> emit) async {
    // reset to the loading view
    emit(const Loading());
    // cancel a potentially started stream
    await _deviceStream?.cancel();
    // start the device discovery stream and add the bloc event callback
    final stream = _listRepository.getWledDevices();
    _deviceStream = stream.listen((d) => add(Discovered(d)));
  }

  /// updates all available wled devices with new data
  Future<void> _onPeriodic(Periodic _, Emitter<DeviceListState> emit) async {
    if (state is! Found) return;

    final devices = (state as Found).devices;
    final futures = devices.map(_updateRepository.updateWledDevice);

    final results = await Future.wait(futures);
    emit(Found(results));
  }

  /// when a new device is decovered add it to the state
  void _onDiscovered(Discovered event, Emitter<DeviceListState> emit) {
    if (event.devices.isEmpty) return emit(const Empty());
    // if there are no devices yet simply add this first found one
    if (state is Loading) return emit(Found(event.devices));
    // get the currently dicovered device list
    final current = List<WledDevice>.from((state as Found).devices);
    // for every new device check if the current list already contains
    // a matching item. if not, add it, otherwise replace it
    event.devices.forEach(current.addIfNotCointains);
    // emit the state with the updated list
    emit(Found(current));
  }

  /// navigate to the DeviceAdd route when the device add button is pressed
  Future<void> _onAdd(Add event, Emitter<DeviceListState> emit) async {
    // navigate to the route and wait for the response
    final device = await _router.push<WledDevice>(DeviceAddRoute());
    if (device == null) return;
    // if a new device is returned update it and add it to the state
    final items = await _update(device);
    emit(Found(items));
  }

  /// navigate to the DeviceControls route
  Future<void> _onDevicePressed(DevicePressed event, Emitter emit) async {
    if (event.device.status != DeviceStatus.functional) return;

    if (Platform.isAndroid || Platform.isIOS) {
      await _router.push(DeviceControlRoute(
        deviceName: event.device.name,
        deviceAddress: 'http://${event.device.address}/',
      ));
    } else {
      await launch('http://${event.device.address}/');
    }
    // after we return from the route, the user might have changed the devices
    // properties, so we need to update the device and make sure we have the
    // most recent data
    final items = await _update(event.device);
    emit(Found(items));
  }

  /// sends an updates the device and emits the updated list
  Future<void> _onDevicePower(DevicePower event, Emitter emit) async {
    final items = await _update(event.device, 'T=2');
    emit(Found(items));
  }

  /// switches the power state on all devices.
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

  /// sends an update to the device with the specified brightness value and
  /// updates the devices list
  Future<void> _onDeviceSlider(DeviceSlider event, Emitter emit) async {
    final items = await _update(event.device, 'A=${event.value}');
    emit(Found(items));
  }

  /// save the wled device to the local device and reload the device
  Future<void> _onDeviceSave(DeviceSave event, Emitter emit) async {
    _listRepository.saveLocal(event.device);
    final items = await _update(event.device.copyWith(isSaved: true));
    emit(Found(items));
  }

  /// go to the device add page to change the device settings then update if any
  /// device settings have changhed
  Future<void> _onDeviceEdit(DeviceEdit event, Emitter emit) async {
    final device = await _router.push<WledDevice>(DeviceAddRoute(
      editableDevice: event.device,
    ));

    if (device == event.device || device == null) return;

    final items = await _update(device);
    emit(Found(items));
  }

  /// delete the wled device from the local device and update it's state
  Future<void> _onDeviceDelete(DeviceDelete event, Emitter emit) async {
    _listRepository.deleteLocal(event.device);
    final items = await _update(event.device.copyWith(isSaved: false));
    emit(Found(items));
  }

  /// updates a wled device and updates the same device in the current state
  Future<List<WledDevice>> _update(WledDevice device, [String? data]) async {
    final update = await _updateRepository.updateWledDevice(device, data);
    // replace the device with it's updated version
    if (state is Loading) return [device];
    return List<WledDevice>.from((state as Found).devices)
      ..addOrReplace(update);
  }

  /// close the device discovery stream when the bloc is unloaded
  @override
  Future<void> close() async {
    await _deviceStream?.cancel();
    return super.close();
  }
}
