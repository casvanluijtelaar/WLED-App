import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wled/core/core.dart';
import 'package:wled/features/wled_device/wled_device.dart';

part 'device_add_bloc.freezed.dart';
part 'device_add_event.dart';
part 'device_add_state.dart';

@injectable
class DeviceAddBloc extends Bloc<DeviceAddEvent, DeviceAddState> {
  DeviceAddBloc(
    this._router,
  ) : super(const DeviceAddState());

  final AppRouter _router;
}
