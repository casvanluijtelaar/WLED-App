import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wled/core/core.dart';

part 'device_control_event.dart';
part 'device_control_state.dart';
part 'device_control_bloc.freezed.dart';

@injectable
class DeviceControlBloc extends Bloc<DeviceControlEvent, DeviceControlState> {
  DeviceControlBloc(this._router) : super(const Initial()) {
    on<Started>(_onStarted);
    on<Back>(_onBack);
  }

  final AppRouter _router;

  String get _name =>
      _router.current.argsAs<DeviceControlRouteArgs>().deviceName;

  String get _address =>
      _router.current.argsAs<DeviceControlRouteArgs>().deviceAddress;

  void _onStarted(Started event, Emitter<DeviceControlState> emit) {
    emit(Loaded(name: _name, address: _address));
  }

  void _onBack(Back event, Emitter<DeviceControlState> emit) {
    _router.pop();
  }
}
