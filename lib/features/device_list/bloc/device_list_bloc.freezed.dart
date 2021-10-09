// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeviceListEventTearOff {
  const _$DeviceListEventTearOff();

  Update update() {
    return const Update();
  }

  Discovered discovered(List<WledDevice> devices) {
    return Discovered(
      devices,
    );
  }

  Add add() {
    return const Add();
  }

  DevicePressed devicePressed(WledDevice device) {
    return DevicePressed(
      device,
    );
  }

  DevicePower devicePower(WledDevice device) {
    return DevicePower(
      device,
    );
  }

  DeviceSlider deviceSlider(WledDevice device, int value) {
    return DeviceSlider(
      device,
      value,
    );
  }

  DeviceSave deviceSave(WledDevice device) {
    return DeviceSave(
      device,
    );
  }

  DeviceEdit deviceEdit(WledDevice device) {
    return DeviceEdit(
      device,
    );
  }

  DeviceDelete deviceDelete(WledDevice device) {
    return DeviceDelete(
      device,
    );
  }
}

/// @nodoc
const $DeviceListEvent = _$DeviceListEventTearOff();

/// @nodoc
mixin _$DeviceListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
    required TResult Function(List<WledDevice> devices) discovered,
    required TResult Function() add,
    required TResult Function(WledDevice device) devicePressed,
    required TResult Function(WledDevice device) devicePower,
    required TResult Function(WledDevice device, int value) deviceSlider,
    required TResult Function(WledDevice device) deviceSave,
    required TResult Function(WledDevice device) deviceEdit,
    required TResult Function(WledDevice device) deviceDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
    required TResult Function(Discovered value) discovered,
    required TResult Function(Add value) add,
    required TResult Function(DevicePressed value) devicePressed,
    required TResult Function(DevicePower value) devicePower,
    required TResult Function(DeviceSlider value) deviceSlider,
    required TResult Function(DeviceSave value) deviceSave,
    required TResult Function(DeviceEdit value) deviceEdit,
    required TResult Function(DeviceDelete value) deviceDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceListEventCopyWith<$Res> {
  factory $DeviceListEventCopyWith(
          DeviceListEvent value, $Res Function(DeviceListEvent) then) =
      _$DeviceListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceListEventCopyWithImpl<$Res>
    implements $DeviceListEventCopyWith<$Res> {
  _$DeviceListEventCopyWithImpl(this._value, this._then);

  final DeviceListEvent _value;
  // ignore: unused_field
  final $Res Function(DeviceListEvent) _then;
}

/// @nodoc
abstract class $UpdateCopyWith<$Res> {
  factory $UpdateCopyWith(Update value, $Res Function(Update) then) =
      _$UpdateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements $UpdateCopyWith<$Res> {
  _$UpdateCopyWithImpl(Update _value, $Res Function(Update) _then)
      : super(_value, (v) => _then(v as Update));

  @override
  Update get _value => super._value as Update;
}

/// @nodoc

class _$Update implements Update {
  const _$Update();

  @override
  String toString() {
    return 'DeviceListEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Update);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
    required TResult Function(List<WledDevice> devices) discovered,
    required TResult Function() add,
    required TResult Function(WledDevice device) devicePressed,
    required TResult Function(WledDevice device) devicePower,
    required TResult Function(WledDevice device, int value) deviceSlider,
    required TResult Function(WledDevice device) deviceSave,
    required TResult Function(WledDevice device) deviceEdit,
    required TResult Function(WledDevice device) deviceDelete,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
    required TResult Function(Discovered value) discovered,
    required TResult Function(Add value) add,
    required TResult Function(DevicePressed value) devicePressed,
    required TResult Function(DevicePower value) devicePower,
    required TResult Function(DeviceSlider value) deviceSlider,
    required TResult Function(DeviceSave value) deviceSave,
    required TResult Function(DeviceEdit value) deviceEdit,
    required TResult Function(DeviceDelete value) deviceDelete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements DeviceListEvent {
  const factory Update() = _$Update;
}

/// @nodoc
abstract class $DiscoveredCopyWith<$Res> {
  factory $DiscoveredCopyWith(
          Discovered value, $Res Function(Discovered) then) =
      _$DiscoveredCopyWithImpl<$Res>;
  $Res call({List<WledDevice> devices});
}

/// @nodoc
class _$DiscoveredCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements $DiscoveredCopyWith<$Res> {
  _$DiscoveredCopyWithImpl(Discovered _value, $Res Function(Discovered) _then)
      : super(_value, (v) => _then(v as Discovered));

  @override
  Discovered get _value => super._value as Discovered;

  @override
  $Res call({
    Object? devices = freezed,
  }) {
    return _then(Discovered(
      devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<WledDevice>,
    ));
  }
}

/// @nodoc

class _$Discovered implements Discovered {
  const _$Discovered(this.devices);

  @override
  final List<WledDevice> devices;

  @override
  String toString() {
    return 'DeviceListEvent.discovered(devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Discovered &&
            (identical(other.devices, devices) ||
                const DeepCollectionEquality().equals(other.devices, devices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(devices);

  @JsonKey(ignore: true)
  @override
  $DiscoveredCopyWith<Discovered> get copyWith =>
      _$DiscoveredCopyWithImpl<Discovered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
    required TResult Function(List<WledDevice> devices) discovered,
    required TResult Function() add,
    required TResult Function(WledDevice device) devicePressed,
    required TResult Function(WledDevice device) devicePower,
    required TResult Function(WledDevice device, int value) deviceSlider,
    required TResult Function(WledDevice device) deviceSave,
    required TResult Function(WledDevice device) deviceEdit,
    required TResult Function(WledDevice device) deviceDelete,
  }) {
    return discovered(devices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
  }) {
    return discovered?.call(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
    required TResult orElse(),
  }) {
    if (discovered != null) {
      return discovered(devices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
    required TResult Function(Discovered value) discovered,
    required TResult Function(Add value) add,
    required TResult Function(DevicePressed value) devicePressed,
    required TResult Function(DevicePower value) devicePower,
    required TResult Function(DeviceSlider value) deviceSlider,
    required TResult Function(DeviceSave value) deviceSave,
    required TResult Function(DeviceEdit value) deviceEdit,
    required TResult Function(DeviceDelete value) deviceDelete,
  }) {
    return discovered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
  }) {
    return discovered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
    required TResult orElse(),
  }) {
    if (discovered != null) {
      return discovered(this);
    }
    return orElse();
  }
}

abstract class Discovered implements DeviceListEvent {
  const factory Discovered(List<WledDevice> devices) = _$Discovered;

  List<WledDevice> get devices => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscoveredCopyWith<Discovered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCopyWith<$Res> {
  factory $AddCopyWith(Add value, $Res Function(Add) then) =
      _$AddCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements $AddCopyWith<$Res> {
  _$AddCopyWithImpl(Add _value, $Res Function(Add) _then)
      : super(_value, (v) => _then(v as Add));

  @override
  Add get _value => super._value as Add;
}

/// @nodoc

class _$Add implements Add {
  const _$Add();

  @override
  String toString() {
    return 'DeviceListEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Add);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
    required TResult Function(List<WledDevice> devices) discovered,
    required TResult Function() add,
    required TResult Function(WledDevice device) devicePressed,
    required TResult Function(WledDevice device) devicePower,
    required TResult Function(WledDevice device, int value) deviceSlider,
    required TResult Function(WledDevice device) deviceSave,
    required TResult Function(WledDevice device) deviceEdit,
    required TResult Function(WledDevice device) deviceDelete,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
    required TResult Function(Discovered value) discovered,
    required TResult Function(Add value) add,
    required TResult Function(DevicePressed value) devicePressed,
    required TResult Function(DevicePower value) devicePower,
    required TResult Function(DeviceSlider value) deviceSlider,
    required TResult Function(DeviceSave value) deviceSave,
    required TResult Function(DeviceEdit value) deviceEdit,
    required TResult Function(DeviceDelete value) deviceDelete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements DeviceListEvent {
  const factory Add() = _$Add;
}

/// @nodoc
abstract class $DevicePressedCopyWith<$Res> {
  factory $DevicePressedCopyWith(
          DevicePressed value, $Res Function(DevicePressed) then) =
      _$DevicePressedCopyWithImpl<$Res>;
  $Res call({WledDevice device});

  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DevicePressedCopyWithImpl<$Res>
    extends _$DeviceListEventCopyWithImpl<$Res>
    implements $DevicePressedCopyWith<$Res> {
  _$DevicePressedCopyWithImpl(
      DevicePressed _value, $Res Function(DevicePressed) _then)
      : super(_value, (v) => _then(v as DevicePressed));

  @override
  DevicePressed get _value => super._value as DevicePressed;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(DevicePressed(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as WledDevice,
    ));
  }

  @override
  $WledDeviceCopyWith<$Res> get device {
    return $WledDeviceCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value));
    });
  }
}

/// @nodoc

class _$DevicePressed implements DevicePressed {
  const _$DevicePressed(this.device);

  @override
  final WledDevice device;

  @override
  String toString() {
    return 'DeviceListEvent.devicePressed(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DevicePressed &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  $DevicePressedCopyWith<DevicePressed> get copyWith =>
      _$DevicePressedCopyWithImpl<DevicePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
    required TResult Function(List<WledDevice> devices) discovered,
    required TResult Function() add,
    required TResult Function(WledDevice device) devicePressed,
    required TResult Function(WledDevice device) devicePower,
    required TResult Function(WledDevice device, int value) deviceSlider,
    required TResult Function(WledDevice device) deviceSave,
    required TResult Function(WledDevice device) deviceEdit,
    required TResult Function(WledDevice device) deviceDelete,
  }) {
    return devicePressed(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
  }) {
    return devicePressed?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
    required TResult orElse(),
  }) {
    if (devicePressed != null) {
      return devicePressed(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
    required TResult Function(Discovered value) discovered,
    required TResult Function(Add value) add,
    required TResult Function(DevicePressed value) devicePressed,
    required TResult Function(DevicePower value) devicePower,
    required TResult Function(DeviceSlider value) deviceSlider,
    required TResult Function(DeviceSave value) deviceSave,
    required TResult Function(DeviceEdit value) deviceEdit,
    required TResult Function(DeviceDelete value) deviceDelete,
  }) {
    return devicePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
  }) {
    return devicePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
    required TResult orElse(),
  }) {
    if (devicePressed != null) {
      return devicePressed(this);
    }
    return orElse();
  }
}

abstract class DevicePressed implements DeviceListEvent {
  const factory DevicePressed(WledDevice device) = _$DevicePressed;

  WledDevice get device => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevicePressedCopyWith<DevicePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevicePowerCopyWith<$Res> {
  factory $DevicePowerCopyWith(
          DevicePower value, $Res Function(DevicePower) then) =
      _$DevicePowerCopyWithImpl<$Res>;
  $Res call({WledDevice device});

  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DevicePowerCopyWithImpl<$Res>
    extends _$DeviceListEventCopyWithImpl<$Res>
    implements $DevicePowerCopyWith<$Res> {
  _$DevicePowerCopyWithImpl(
      DevicePower _value, $Res Function(DevicePower) _then)
      : super(_value, (v) => _then(v as DevicePower));

  @override
  DevicePower get _value => super._value as DevicePower;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(DevicePower(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as WledDevice,
    ));
  }

  @override
  $WledDeviceCopyWith<$Res> get device {
    return $WledDeviceCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value));
    });
  }
}

/// @nodoc

class _$DevicePower implements DevicePower {
  const _$DevicePower(this.device);

  @override
  final WledDevice device;

  @override
  String toString() {
    return 'DeviceListEvent.devicePower(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DevicePower &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  $DevicePowerCopyWith<DevicePower> get copyWith =>
      _$DevicePowerCopyWithImpl<DevicePower>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
    required TResult Function(List<WledDevice> devices) discovered,
    required TResult Function() add,
    required TResult Function(WledDevice device) devicePressed,
    required TResult Function(WledDevice device) devicePower,
    required TResult Function(WledDevice device, int value) deviceSlider,
    required TResult Function(WledDevice device) deviceSave,
    required TResult Function(WledDevice device) deviceEdit,
    required TResult Function(WledDevice device) deviceDelete,
  }) {
    return devicePower(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
  }) {
    return devicePower?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
    required TResult orElse(),
  }) {
    if (devicePower != null) {
      return devicePower(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
    required TResult Function(Discovered value) discovered,
    required TResult Function(Add value) add,
    required TResult Function(DevicePressed value) devicePressed,
    required TResult Function(DevicePower value) devicePower,
    required TResult Function(DeviceSlider value) deviceSlider,
    required TResult Function(DeviceSave value) deviceSave,
    required TResult Function(DeviceEdit value) deviceEdit,
    required TResult Function(DeviceDelete value) deviceDelete,
  }) {
    return devicePower(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
  }) {
    return devicePower?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
    required TResult orElse(),
  }) {
    if (devicePower != null) {
      return devicePower(this);
    }
    return orElse();
  }
}

abstract class DevicePower implements DeviceListEvent {
  const factory DevicePower(WledDevice device) = _$DevicePower;

  WledDevice get device => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevicePowerCopyWith<DevicePower> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSliderCopyWith<$Res> {
  factory $DeviceSliderCopyWith(
          DeviceSlider value, $Res Function(DeviceSlider) then) =
      _$DeviceSliderCopyWithImpl<$Res>;
  $Res call({WledDevice device, int value});

  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceSliderCopyWithImpl<$Res>
    extends _$DeviceListEventCopyWithImpl<$Res>
    implements $DeviceSliderCopyWith<$Res> {
  _$DeviceSliderCopyWithImpl(
      DeviceSlider _value, $Res Function(DeviceSlider) _then)
      : super(_value, (v) => _then(v as DeviceSlider));

  @override
  DeviceSlider get _value => super._value as DeviceSlider;

  @override
  $Res call({
    Object? device = freezed,
    Object? value = freezed,
  }) {
    return _then(DeviceSlider(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as WledDevice,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $WledDeviceCopyWith<$Res> get device {
    return $WledDeviceCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value));
    });
  }
}

/// @nodoc

class _$DeviceSlider implements DeviceSlider {
  const _$DeviceSlider(this.device, this.value);

  @override
  final WledDevice device;
  @override
  final int value;

  @override
  String toString() {
    return 'DeviceListEvent.deviceSlider(device: $device, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceSlider &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $DeviceSliderCopyWith<DeviceSlider> get copyWith =>
      _$DeviceSliderCopyWithImpl<DeviceSlider>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
    required TResult Function(List<WledDevice> devices) discovered,
    required TResult Function() add,
    required TResult Function(WledDevice device) devicePressed,
    required TResult Function(WledDevice device) devicePower,
    required TResult Function(WledDevice device, int value) deviceSlider,
    required TResult Function(WledDevice device) deviceSave,
    required TResult Function(WledDevice device) deviceEdit,
    required TResult Function(WledDevice device) deviceDelete,
  }) {
    return deviceSlider(device, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
  }) {
    return deviceSlider?.call(device, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
    required TResult orElse(),
  }) {
    if (deviceSlider != null) {
      return deviceSlider(device, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
    required TResult Function(Discovered value) discovered,
    required TResult Function(Add value) add,
    required TResult Function(DevicePressed value) devicePressed,
    required TResult Function(DevicePower value) devicePower,
    required TResult Function(DeviceSlider value) deviceSlider,
    required TResult Function(DeviceSave value) deviceSave,
    required TResult Function(DeviceEdit value) deviceEdit,
    required TResult Function(DeviceDelete value) deviceDelete,
  }) {
    return deviceSlider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
  }) {
    return deviceSlider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
    required TResult orElse(),
  }) {
    if (deviceSlider != null) {
      return deviceSlider(this);
    }
    return orElse();
  }
}

abstract class DeviceSlider implements DeviceListEvent {
  const factory DeviceSlider(WledDevice device, int value) = _$DeviceSlider;

  WledDevice get device => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceSliderCopyWith<DeviceSlider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSaveCopyWith<$Res> {
  factory $DeviceSaveCopyWith(
          DeviceSave value, $Res Function(DeviceSave) then) =
      _$DeviceSaveCopyWithImpl<$Res>;
  $Res call({WledDevice device});

  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceSaveCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements $DeviceSaveCopyWith<$Res> {
  _$DeviceSaveCopyWithImpl(DeviceSave _value, $Res Function(DeviceSave) _then)
      : super(_value, (v) => _then(v as DeviceSave));

  @override
  DeviceSave get _value => super._value as DeviceSave;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(DeviceSave(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as WledDevice,
    ));
  }

  @override
  $WledDeviceCopyWith<$Res> get device {
    return $WledDeviceCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value));
    });
  }
}

/// @nodoc

class _$DeviceSave implements DeviceSave {
  const _$DeviceSave(this.device);

  @override
  final WledDevice device;

  @override
  String toString() {
    return 'DeviceListEvent.deviceSave(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceSave &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  $DeviceSaveCopyWith<DeviceSave> get copyWith =>
      _$DeviceSaveCopyWithImpl<DeviceSave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
    required TResult Function(List<WledDevice> devices) discovered,
    required TResult Function() add,
    required TResult Function(WledDevice device) devicePressed,
    required TResult Function(WledDevice device) devicePower,
    required TResult Function(WledDevice device, int value) deviceSlider,
    required TResult Function(WledDevice device) deviceSave,
    required TResult Function(WledDevice device) deviceEdit,
    required TResult Function(WledDevice device) deviceDelete,
  }) {
    return deviceSave(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
  }) {
    return deviceSave?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
    required TResult orElse(),
  }) {
    if (deviceSave != null) {
      return deviceSave(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
    required TResult Function(Discovered value) discovered,
    required TResult Function(Add value) add,
    required TResult Function(DevicePressed value) devicePressed,
    required TResult Function(DevicePower value) devicePower,
    required TResult Function(DeviceSlider value) deviceSlider,
    required TResult Function(DeviceSave value) deviceSave,
    required TResult Function(DeviceEdit value) deviceEdit,
    required TResult Function(DeviceDelete value) deviceDelete,
  }) {
    return deviceSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
  }) {
    return deviceSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
    required TResult orElse(),
  }) {
    if (deviceSave != null) {
      return deviceSave(this);
    }
    return orElse();
  }
}

abstract class DeviceSave implements DeviceListEvent {
  const factory DeviceSave(WledDevice device) = _$DeviceSave;

  WledDevice get device => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceSaveCopyWith<DeviceSave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceEditCopyWith<$Res> {
  factory $DeviceEditCopyWith(
          DeviceEdit value, $Res Function(DeviceEdit) then) =
      _$DeviceEditCopyWithImpl<$Res>;
  $Res call({WledDevice device});

  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceEditCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements $DeviceEditCopyWith<$Res> {
  _$DeviceEditCopyWithImpl(DeviceEdit _value, $Res Function(DeviceEdit) _then)
      : super(_value, (v) => _then(v as DeviceEdit));

  @override
  DeviceEdit get _value => super._value as DeviceEdit;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(DeviceEdit(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as WledDevice,
    ));
  }

  @override
  $WledDeviceCopyWith<$Res> get device {
    return $WledDeviceCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value));
    });
  }
}

/// @nodoc

class _$DeviceEdit implements DeviceEdit {
  const _$DeviceEdit(this.device);

  @override
  final WledDevice device;

  @override
  String toString() {
    return 'DeviceListEvent.deviceEdit(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceEdit &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  $DeviceEditCopyWith<DeviceEdit> get copyWith =>
      _$DeviceEditCopyWithImpl<DeviceEdit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
    required TResult Function(List<WledDevice> devices) discovered,
    required TResult Function() add,
    required TResult Function(WledDevice device) devicePressed,
    required TResult Function(WledDevice device) devicePower,
    required TResult Function(WledDevice device, int value) deviceSlider,
    required TResult Function(WledDevice device) deviceSave,
    required TResult Function(WledDevice device) deviceEdit,
    required TResult Function(WledDevice device) deviceDelete,
  }) {
    return deviceEdit(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
  }) {
    return deviceEdit?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
    required TResult orElse(),
  }) {
    if (deviceEdit != null) {
      return deviceEdit(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
    required TResult Function(Discovered value) discovered,
    required TResult Function(Add value) add,
    required TResult Function(DevicePressed value) devicePressed,
    required TResult Function(DevicePower value) devicePower,
    required TResult Function(DeviceSlider value) deviceSlider,
    required TResult Function(DeviceSave value) deviceSave,
    required TResult Function(DeviceEdit value) deviceEdit,
    required TResult Function(DeviceDelete value) deviceDelete,
  }) {
    return deviceEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
  }) {
    return deviceEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
    required TResult orElse(),
  }) {
    if (deviceEdit != null) {
      return deviceEdit(this);
    }
    return orElse();
  }
}

abstract class DeviceEdit implements DeviceListEvent {
  const factory DeviceEdit(WledDevice device) = _$DeviceEdit;

  WledDevice get device => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceEditCopyWith<DeviceEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDeleteCopyWith<$Res> {
  factory $DeviceDeleteCopyWith(
          DeviceDelete value, $Res Function(DeviceDelete) then) =
      _$DeviceDeleteCopyWithImpl<$Res>;
  $Res call({WledDevice device});

  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceDeleteCopyWithImpl<$Res>
    extends _$DeviceListEventCopyWithImpl<$Res>
    implements $DeviceDeleteCopyWith<$Res> {
  _$DeviceDeleteCopyWithImpl(
      DeviceDelete _value, $Res Function(DeviceDelete) _then)
      : super(_value, (v) => _then(v as DeviceDelete));

  @override
  DeviceDelete get _value => super._value as DeviceDelete;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(DeviceDelete(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as WledDevice,
    ));
  }

  @override
  $WledDeviceCopyWith<$Res> get device {
    return $WledDeviceCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value));
    });
  }
}

/// @nodoc

class _$DeviceDelete implements DeviceDelete {
  const _$DeviceDelete(this.device);

  @override
  final WledDevice device;

  @override
  String toString() {
    return 'DeviceListEvent.deviceDelete(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceDelete &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  $DeviceDeleteCopyWith<DeviceDelete> get copyWith =>
      _$DeviceDeleteCopyWithImpl<DeviceDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
    required TResult Function(List<WledDevice> devices) discovered,
    required TResult Function() add,
    required TResult Function(WledDevice device) devicePressed,
    required TResult Function(WledDevice device) devicePower,
    required TResult Function(WledDevice device, int value) deviceSlider,
    required TResult Function(WledDevice device) deviceSave,
    required TResult Function(WledDevice device) deviceEdit,
    required TResult Function(WledDevice device) deviceDelete,
  }) {
    return deviceDelete(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
  }) {
    return deviceDelete?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    TResult Function(List<WledDevice> devices)? discovered,
    TResult Function()? add,
    TResult Function(WledDevice device)? devicePressed,
    TResult Function(WledDevice device)? devicePower,
    TResult Function(WledDevice device, int value)? deviceSlider,
    TResult Function(WledDevice device)? deviceSave,
    TResult Function(WledDevice device)? deviceEdit,
    TResult Function(WledDevice device)? deviceDelete,
    required TResult orElse(),
  }) {
    if (deviceDelete != null) {
      return deviceDelete(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Update value) update,
    required TResult Function(Discovered value) discovered,
    required TResult Function(Add value) add,
    required TResult Function(DevicePressed value) devicePressed,
    required TResult Function(DevicePower value) devicePower,
    required TResult Function(DeviceSlider value) deviceSlider,
    required TResult Function(DeviceSave value) deviceSave,
    required TResult Function(DeviceEdit value) deviceEdit,
    required TResult Function(DeviceDelete value) deviceDelete,
  }) {
    return deviceDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
  }) {
    return deviceDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Update value)? update,
    TResult Function(Discovered value)? discovered,
    TResult Function(Add value)? add,
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
    required TResult orElse(),
  }) {
    if (deviceDelete != null) {
      return deviceDelete(this);
    }
    return orElse();
  }
}

abstract class DeviceDelete implements DeviceListEvent {
  const factory DeviceDelete(WledDevice device) = _$DeviceDelete;

  WledDevice get device => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDeleteCopyWith<DeviceDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DeviceListStateTearOff {
  const _$DeviceListStateTearOff();

  Loading loading() {
    return const Loading();
  }

  Found found(List<WledDevice> devices) {
    return Found(
      devices,
    );
  }

  Empty empty() {
    return const Empty();
  }
}

/// @nodoc
const $DeviceListState = _$DeviceListStateTearOff();

/// @nodoc
mixin _$DeviceListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WledDevice> devices) found,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WledDevice> devices)? found,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WledDevice> devices)? found,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Found value) found,
    required TResult Function(Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Found value)? found,
    TResult Function(Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Found value)? found,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceListStateCopyWith<$Res> {
  factory $DeviceListStateCopyWith(
          DeviceListState value, $Res Function(DeviceListState) then) =
      _$DeviceListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceListStateCopyWithImpl<$Res>
    implements $DeviceListStateCopyWith<$Res> {
  _$DeviceListStateCopyWithImpl(this._value, this._then);

  final DeviceListState _value;
  // ignore: unused_field
  final $Res Function(DeviceListState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$DeviceListStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'DeviceListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WledDevice> devices) found,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WledDevice> devices)? found,
    TResult Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WledDevice> devices)? found,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Found value) found,
    required TResult Function(Empty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Found value)? found,
    TResult Function(Empty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Found value)? found,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements DeviceListState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $FoundCopyWith<$Res> {
  factory $FoundCopyWith(Found value, $Res Function(Found) then) =
      _$FoundCopyWithImpl<$Res>;
  $Res call({List<WledDevice> devices});
}

/// @nodoc
class _$FoundCopyWithImpl<$Res> extends _$DeviceListStateCopyWithImpl<$Res>
    implements $FoundCopyWith<$Res> {
  _$FoundCopyWithImpl(Found _value, $Res Function(Found) _then)
      : super(_value, (v) => _then(v as Found));

  @override
  Found get _value => super._value as Found;

  @override
  $Res call({
    Object? devices = freezed,
  }) {
    return _then(Found(
      devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<WledDevice>,
    ));
  }
}

/// @nodoc

class _$Found implements Found {
  const _$Found(this.devices);

  @override
  final List<WledDevice> devices;

  @override
  String toString() {
    return 'DeviceListState.found(devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Found &&
            (identical(other.devices, devices) ||
                const DeepCollectionEquality().equals(other.devices, devices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(devices);

  @JsonKey(ignore: true)
  @override
  $FoundCopyWith<Found> get copyWith =>
      _$FoundCopyWithImpl<Found>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WledDevice> devices) found,
    required TResult Function() empty,
  }) {
    return found(devices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WledDevice> devices)? found,
    TResult Function()? empty,
  }) {
    return found?.call(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WledDevice> devices)? found,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(devices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Found value) found,
    required TResult Function(Empty value) empty,
  }) {
    return found(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Found value)? found,
    TResult Function(Empty value)? empty,
  }) {
    return found?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Found value)? found,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(this);
    }
    return orElse();
  }
}

abstract class Found implements DeviceListState {
  const factory Found(List<WledDevice> devices) = _$Found;

  List<WledDevice> get devices => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoundCopyWith<Found> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$DeviceListStateCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;
}

/// @nodoc

class _$Empty implements Empty {
  const _$Empty();

  @override
  String toString() {
    return 'DeviceListState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WledDevice> devices) found,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WledDevice> devices)? found,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WledDevice> devices)? found,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Found value) found,
    required TResult Function(Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Found value)? found,
    TResult Function(Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Found value)? found,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements DeviceListState {
  const factory Empty() = _$Empty;
}
