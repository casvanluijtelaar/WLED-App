import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_list_tutorial_event.dart';
part 'device_list_tutorial_state.dart';
part 'device_list_tutorial_bloc.freezed.dart';

class DeviceListTutorialBloc extends Bloc<DeviceListTutorialEvent, DeviceListTutorialState> {
  DeviceListTutorialBloc() : super(_Initial()) {
    on<DeviceListTutorialEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
