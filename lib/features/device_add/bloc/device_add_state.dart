part of 'device_add_bloc.dart';

@freezed
class DeviceAddState with _$DeviceAddState {
  const factory DeviceAddState({
   @Default(Ip.pure()) Ip ip,
   @Default(Name.pure()) Name name,
   @Default(FormzStatus.pure) FormzStatus status,
  }) = _DeviceAddState;
}
