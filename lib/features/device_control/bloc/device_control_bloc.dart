import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'device_control_event.dart';
part 'device_control_state.dart';
part 'device_control_bloc.freezed.dart';

@injectable
class DeviceControlBloc extends Bloc<DeviceControlEvent, DeviceControlState> {
  DeviceControlBloc() : super(const Initial());

  
}
