import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wled/core/core.dart';

import '../domain/device_add_repository.dart';
import '../domain/models/ip.dart';
import '../domain/models/name.dart';

part 'device_add_bloc.freezed.dart';
part 'device_add_event.dart';
part 'device_add_state.dart';

@injectable
class DeviceAddBloc extends Bloc<DeviceAddEvent, DeviceAddState> {
  DeviceAddBloc(
    this._router,
    this._addRepository,
    this._updateRepository,
  ) : super(const DeviceAddLoading()) {
    on<Initial>(_onInitial);
    on<IpChanged>(_onIpChanged);
    on<IpUnfocused>(_onIpUnfocused);
    on<NameChanged>(_onNameChanged);
    on<NameUnfocused>(_onNameUnfocused);
    on<Submitted>(_onSubmitted);
    on<Canceled>(_onCanceled);
  }

  final AppRouter _router;
  final DeviceAddRepository _addRepository;
  final DeviceUpdateRepository _updateRepository;

  /// if a device is provided, update the state with the initial values of the
  /// provided WledDevice
  void _onInitial(Initial event, Emitter<DeviceAddState> emit) {
    if (event.device == null) return emit(const DeviceAddState());

    final ip = Ip.pure(event.device!.address);
    var state = DeviceAddState(ip: ip);

    if (event.device!.nameIsCustom) {
      final name = Name.pure(event.device!.name);
      state = state.copyWith(name: name);
    }

    emit(state.copyWith(status: FormzStatus.valid));
  }

  /// verify the ip status everytime it changes
  void _onIpChanged(IpChanged event, Emitter<DeviceAddState> emit) {
    final ip = Ip.dirty(event.ip);
    emit(state.copyWith(
      ip: ip.valid ? ip : Ip.pure(event.ip),
      status: Formz.validate([ip, state.name]),
    ));
  }

  /// verify the ip status when the user stops interacting with the textfield
  void _onIpUnfocused(IpUnfocused event, Emitter<DeviceAddState> emit) {
    final ip = Ip.dirty(state.ip.value);
    emit(state.copyWith(ip: ip, status: Formz.validate([ip, state.name])));
  }

  /// verify the name status everytime it changes
  void _onNameChanged(NameChanged event, Emitter<DeviceAddState> emit) {
    final name = Name.dirty(event.name);
    emit(state.copyWith(
      name: name.valid ? name : Name.pure(event.name),
      status: Formz.validate([name, state.ip]),
    ));
  }

  /// verify the name status when the user stops interacting with the textfield
  void _onNameUnfocused(NameUnfocused event, Emitter<DeviceAddState> emit) {
    final name = Name.dirty(state.name.value);
    emit(state.copyWith(name: name, status: Formz.validate([name, state.ip])));
  }

  /// create a new WledDevice from the current state and save it locally
  /// bofore popping the route
  Future<void> _onSubmitted(Submitted _, Emitter<DeviceAddState> emit) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final device = WledDevice(
      address: state.ip.value,
      name: state.name.value,
      nameIsCustom: state.name.value.isNotEmpty,
      isSaved: true,
    );

    final updated = await _updateRepository.updateWledDevice(device);

    /// if this is not a valid WledDevice,add a form error
    if (updated.status != DeviceStatus.functional) {
      return emit(state.copyWith(status: FormzStatus.submissionFailure));
    }

    await _addRepository.saveDevice(updated);
    await _router.pop<WledDevice?>(updated);

    emit(state.copyWith(status: FormzStatus.submissionSuccess));
  }

  /// pop the route without returning a WledDevice
  void _onCanceled(Canceled event, Emitter<DeviceAddState> emit) {
    _router.pop<WledDevice?>(null);
  }
}
