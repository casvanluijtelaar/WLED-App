// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_control_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeviceControlEventTearOff {
  const _$DeviceControlEventTearOff();

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
const $DeviceControlEvent = _$DeviceControlEventTearOff();

/// @nodoc
mixin _$DeviceControlEvent {
  WledDevice get device => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
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
    TResult Function(DevicePressed value)? devicePressed,
    TResult Function(DevicePower value)? devicePower,
    TResult Function(DeviceSlider value)? deviceSlider,
    TResult Function(DeviceSave value)? deviceSave,
    TResult Function(DeviceEdit value)? deviceEdit,
    TResult Function(DeviceDelete value)? deviceDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceControlEventCopyWith<DeviceControlEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceControlEventCopyWith<$Res> {
  factory $DeviceControlEventCopyWith(
          DeviceControlEvent value, $Res Function(DeviceControlEvent) then) =
      _$DeviceControlEventCopyWithImpl<$Res>;
  $Res call({WledDevice device});

  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceControlEventCopyWithImpl<$Res>
    implements $DeviceControlEventCopyWith<$Res> {
  _$DeviceControlEventCopyWithImpl(this._value, this._then);

  final DeviceControlEvent _value;
  // ignore: unused_field
  final $Res Function(DeviceControlEvent) _then;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(_value.copyWith(
      device: device == freezed
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
abstract class $DevicePressedCopyWith<$Res>
    implements $DeviceControlEventCopyWith<$Res> {
  factory $DevicePressedCopyWith(
          DevicePressed value, $Res Function(DevicePressed) then) =
      _$DevicePressedCopyWithImpl<$Res>;
  @override
  $Res call({WledDevice device});

  @override
  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DevicePressedCopyWithImpl<$Res>
    extends _$DeviceControlEventCopyWithImpl<$Res>
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
}

/// @nodoc

class _$DevicePressed implements DevicePressed {
  const _$DevicePressed(this.device);

  @override
  final WledDevice device;

  @override
  String toString() {
    return 'DeviceControlEvent.devicePressed(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DevicePressed &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  $DevicePressedCopyWith<DevicePressed> get copyWith =>
      _$DevicePressedCopyWithImpl<DevicePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
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

abstract class DevicePressed implements DeviceControlEvent {
  const factory DevicePressed(WledDevice device) = _$DevicePressed;

  @override
  WledDevice get device;
  @override
  @JsonKey(ignore: true)
  $DevicePressedCopyWith<DevicePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevicePowerCopyWith<$Res>
    implements $DeviceControlEventCopyWith<$Res> {
  factory $DevicePowerCopyWith(
          DevicePower value, $Res Function(DevicePower) then) =
      _$DevicePowerCopyWithImpl<$Res>;
  @override
  $Res call({WledDevice device});

  @override
  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DevicePowerCopyWithImpl<$Res>
    extends _$DeviceControlEventCopyWithImpl<$Res>
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
}

/// @nodoc

class _$DevicePower implements DevicePower {
  const _$DevicePower(this.device);

  @override
  final WledDevice device;

  @override
  String toString() {
    return 'DeviceControlEvent.devicePower(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DevicePower &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  $DevicePowerCopyWith<DevicePower> get copyWith =>
      _$DevicePowerCopyWithImpl<DevicePower>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
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

abstract class DevicePower implements DeviceControlEvent {
  const factory DevicePower(WledDevice device) = _$DevicePower;

  @override
  WledDevice get device;
  @override
  @JsonKey(ignore: true)
  $DevicePowerCopyWith<DevicePower> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSliderCopyWith<$Res>
    implements $DeviceControlEventCopyWith<$Res> {
  factory $DeviceSliderCopyWith(
          DeviceSlider value, $Res Function(DeviceSlider) then) =
      _$DeviceSliderCopyWithImpl<$Res>;
  @override
  $Res call({WledDevice device, int value});

  @override
  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceSliderCopyWithImpl<$Res>
    extends _$DeviceControlEventCopyWithImpl<$Res>
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
    return 'DeviceControlEvent.deviceSlider(device: $device, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeviceSlider &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device, value);

  @JsonKey(ignore: true)
  @override
  $DeviceSliderCopyWith<DeviceSlider> get copyWith =>
      _$DeviceSliderCopyWithImpl<DeviceSlider>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
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

abstract class DeviceSlider implements DeviceControlEvent {
  const factory DeviceSlider(WledDevice device, int value) = _$DeviceSlider;

  @override
  WledDevice get device;
  int get value;
  @override
  @JsonKey(ignore: true)
  $DeviceSliderCopyWith<DeviceSlider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSaveCopyWith<$Res>
    implements $DeviceControlEventCopyWith<$Res> {
  factory $DeviceSaveCopyWith(
          DeviceSave value, $Res Function(DeviceSave) then) =
      _$DeviceSaveCopyWithImpl<$Res>;
  @override
  $Res call({WledDevice device});

  @override
  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceSaveCopyWithImpl<$Res>
    extends _$DeviceControlEventCopyWithImpl<$Res>
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
}

/// @nodoc

class _$DeviceSave implements DeviceSave {
  const _$DeviceSave(this.device);

  @override
  final WledDevice device;

  @override
  String toString() {
    return 'DeviceControlEvent.deviceSave(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeviceSave &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  $DeviceSaveCopyWith<DeviceSave> get copyWith =>
      _$DeviceSaveCopyWithImpl<DeviceSave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
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

abstract class DeviceSave implements DeviceControlEvent {
  const factory DeviceSave(WledDevice device) = _$DeviceSave;

  @override
  WledDevice get device;
  @override
  @JsonKey(ignore: true)
  $DeviceSaveCopyWith<DeviceSave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceEditCopyWith<$Res>
    implements $DeviceControlEventCopyWith<$Res> {
  factory $DeviceEditCopyWith(
          DeviceEdit value, $Res Function(DeviceEdit) then) =
      _$DeviceEditCopyWithImpl<$Res>;
  @override
  $Res call({WledDevice device});

  @override
  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceEditCopyWithImpl<$Res>
    extends _$DeviceControlEventCopyWithImpl<$Res>
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
}

/// @nodoc

class _$DeviceEdit implements DeviceEdit {
  const _$DeviceEdit(this.device);

  @override
  final WledDevice device;

  @override
  String toString() {
    return 'DeviceControlEvent.deviceEdit(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeviceEdit &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  $DeviceEditCopyWith<DeviceEdit> get copyWith =>
      _$DeviceEditCopyWithImpl<DeviceEdit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
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

abstract class DeviceEdit implements DeviceControlEvent {
  const factory DeviceEdit(WledDevice device) = _$DeviceEdit;

  @override
  WledDevice get device;
  @override
  @JsonKey(ignore: true)
  $DeviceEditCopyWith<DeviceEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDeleteCopyWith<$Res>
    implements $DeviceControlEventCopyWith<$Res> {
  factory $DeviceDeleteCopyWith(
          DeviceDelete value, $Res Function(DeviceDelete) then) =
      _$DeviceDeleteCopyWithImpl<$Res>;
  @override
  $Res call({WledDevice device});

  @override
  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceDeleteCopyWithImpl<$Res>
    extends _$DeviceControlEventCopyWithImpl<$Res>
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
}

/// @nodoc

class _$DeviceDelete implements DeviceDelete {
  const _$DeviceDelete(this.device);

  @override
  final WledDevice device;

  @override
  String toString() {
    return 'DeviceControlEvent.deviceDelete(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeviceDelete &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  $DeviceDeleteCopyWith<DeviceDelete> get copyWith =>
      _$DeviceDeleteCopyWithImpl<DeviceDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
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

abstract class DeviceDelete implements DeviceControlEvent {
  const factory DeviceDelete(WledDevice device) = _$DeviceDelete;

  @override
  WledDevice get device;
  @override
  @JsonKey(ignore: true)
  $DeviceDeleteCopyWith<DeviceDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DeviceControlStateTearOff {
  const _$DeviceControlStateTearOff();

  _DeviceControlState call({WledDevice? device}) {
    return _DeviceControlState(
      device: device,
    );
  }
}

/// @nodoc
const $DeviceControlState = _$DeviceControlStateTearOff();

/// @nodoc
mixin _$DeviceControlState {
  WledDevice? get device => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceControlStateCopyWith<DeviceControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceControlStateCopyWith<$Res> {
  factory $DeviceControlStateCopyWith(
          DeviceControlState value, $Res Function(DeviceControlState) then) =
      _$DeviceControlStateCopyWithImpl<$Res>;
  $Res call({WledDevice? device});

  $WledDeviceCopyWith<$Res>? get device;
}

/// @nodoc
class _$DeviceControlStateCopyWithImpl<$Res>
    implements $DeviceControlStateCopyWith<$Res> {
  _$DeviceControlStateCopyWithImpl(this._value, this._then);

  final DeviceControlState _value;
  // ignore: unused_field
  final $Res Function(DeviceControlState) _then;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(_value.copyWith(
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as WledDevice?,
    ));
  }

  @override
  $WledDeviceCopyWith<$Res>? get device {
    if (_value.device == null) {
      return null;
    }

    return $WledDeviceCopyWith<$Res>(_value.device!, (value) {
      return _then(_value.copyWith(device: value));
    });
  }
}

/// @nodoc
abstract class _$DeviceControlStateCopyWith<$Res>
    implements $DeviceControlStateCopyWith<$Res> {
  factory _$DeviceControlStateCopyWith(
          _DeviceControlState value, $Res Function(_DeviceControlState) then) =
      __$DeviceControlStateCopyWithImpl<$Res>;
  @override
  $Res call({WledDevice? device});

  @override
  $WledDeviceCopyWith<$Res>? get device;
}

/// @nodoc
class __$DeviceControlStateCopyWithImpl<$Res>
    extends _$DeviceControlStateCopyWithImpl<$Res>
    implements _$DeviceControlStateCopyWith<$Res> {
  __$DeviceControlStateCopyWithImpl(
      _DeviceControlState _value, $Res Function(_DeviceControlState) _then)
      : super(_value, (v) => _then(v as _DeviceControlState));

  @override
  _DeviceControlState get _value => super._value as _DeviceControlState;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(_DeviceControlState(
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as WledDevice?,
    ));
  }
}

/// @nodoc

class _$_DeviceControlState implements _DeviceControlState {
  const _$_DeviceControlState({this.device});

  @override
  final WledDevice? device;

  @override
  String toString() {
    return 'DeviceControlState(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeviceControlState &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  _$DeviceControlStateCopyWith<_DeviceControlState> get copyWith =>
      __$DeviceControlStateCopyWithImpl<_DeviceControlState>(this, _$identity);
}

abstract class _DeviceControlState implements DeviceControlState {
  const factory _DeviceControlState({WledDevice? device}) =
      _$_DeviceControlState;

  @override
  WledDevice? get device;
  @override
  @JsonKey(ignore: true)
  _$DeviceControlStateCopyWith<_DeviceControlState> get copyWith =>
      throw _privateConstructorUsedError;
}
