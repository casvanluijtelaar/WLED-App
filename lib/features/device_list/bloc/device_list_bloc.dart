import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wled/core/core.dart';

import '../bloc/device_control_bloc.dart';
import '../domain/device_fetch_repository.dart';
import '../domain/device_update_repository.dart';
import '../domain/extensions.dart';

part 'device_list_bloc.freezed.dart';
part 'device_list_event.dart';
part 'device_list_state.dart';

@injectable
class DeviceListBloc extends Bloc<DeviceListEvent, DeviceListState> {
  DeviceListBloc(
    this._fetchRepository,
    this._updateRepository,
    this._router,
    this._controlBloc,
  ) : super(const Loading()) {
    on<ListAdd>(_onAdd);
    on<ListDiscovered>(_onDiscovered);
    on<ListUpdate>(_onUpdate, transformer: droppable());
    on<ListPeriodic>(_onPeriodic);
    on<ListMove>(_onDeviceMove);
    on<ListPower>(_onPower, transformer: BlocTransformers.debounce);
    on<ListDeviceUpdate>(_onDeviceUpdate);

    /// periodically callback for updating devices on a fixed time interval
    Stream<void>.periodic(Kduration.xLarge)
        .listen((_) => add(const ListPeriodic()));

    /// listen to updates from the device control bloc and reload the state with
    /// the updated device
    _controlStream = _controlBloc.stream.listen((s) {
      if (s.device == null) return;
      add(ListDeviceUpdate(s.device!));
    });
  }

  final DeviceFetchRepository _fetchRepository;
  final DeviceUpdateRepository _updateRepository;
  final AppRouter _router;
  final DeviceControlBloc _controlBloc;

  /// subscription for restarting stream if the user requests an [ListUpdate]
  StreamSubscription<List<WledDevice>>? _deviceStream;

  /// subscription for listening to individual device updates
  StreamSubscription<DeviceControlState>? _controlStream;

  /// add the updated device comming from the [DeviceControlBloc] back to the
  /// state
  void _onDeviceUpdate(ListDeviceUpdate event, Emitter emit) {
    emit(Found(_addOrReplaceDeviceInState([event.device])));
  }

  /// when a user refreshes the page, reset the device
  /// discovery stream and state machine
  Future<void> _onUpdate(ListUpdate _, Emitter<DeviceListState> emit) async {
    emit(const Loading());
    await _deviceStream?.cancel();

    final stream = _fetchRepository.get();
    _deviceStream = stream.listen((d) => add(ListDiscovered(d)));
  }

  /// on a new device discovery, checks if there are no devices in the state
  /// yet, create a new list from this single discovery. if there are already
  /// devices in the state, only add this discovery if it's new
  void _onDiscovered(ListDiscovered event, Emitter<DeviceListState> emit) {
    if (event.devices.isEmpty) return emit(const Empty());
    emit(Found(_addOrReplaceDeviceInState(event.devices)));
  }

  /// periodically updates all wled devices in the current state with new data
  /// when there are wled devices in the current state.
  Future<void> _onPeriodic(ListPeriodic _, Emitter emit) async {
    if (state is! Found) return;
    final devices = (state as Found).devices;

    final futures = devices.map(_updateRepository.update);
    final results = await Future.wait(futures);

    emit(Found(results));
  }

  /// navigate to the DeviceAdd route. then check if the route returns a wled
  /// device. if so, update it and add it to the state
  Future<void> _onAdd(ListAdd event, Emitter<DeviceListState> emit) async {
    final device = await _router.push<WledDevice>(DeviceAddRoute());
    if (device == null) return;

    emit(Found(_addOrReplaceDeviceInState([device])));
  }

  /// moves the from its old index to its new index
  Future<void> _onDeviceMove(ListMove event, Emitter emit) async {
    final devices = (state as Found).devices;
    final device = devices.removeAt(event.oldIndex);

    devices.insert(event.newIndex, device);
    emit(Found(devices));
  }

  /// updates the power status of all devices. if any device is
  /// enabled all are consideered to be enabled, therefor all must fist be
  /// disabled before they can be enabled as a group
  Future<void> _onPower(ListPower event, Emitter emit) async {
    final devices = (state as Found).devices;
    final command = 'T=${devices.anyOn ? 0 : 1}';

    final futures = devices.map((d) => _updateRepository.update(d, command));
    final results = await Future.wait(futures);

    emit(Found(results));
  }

  /// takes a [WledDevice] and compares it to the current state. if the state
  /// does not contain this device it adds it to the correct position. if it
  /// does contain the device it replaces the old device with the new one
  List<WledDevice> _addOrReplaceDeviceInState(List<WledDevice> newDevices) {
    final devices = state is Found ? (state as Found).devices : <WledDevice>[];

    for (final device in newDevices) {
      final index = devices.indexWhere((d) => d.address == device.address);
      index == -1 ? devices.add(device) : devices[index] = device;
    }

    return devices;
  }

  @override
  Future<void> close() async {
    await _deviceStream?.cancel();
    await _controlStream?.cancel();
    return super.close();
  }
}
