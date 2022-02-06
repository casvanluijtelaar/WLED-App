// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wled_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WledDevice _$WledDeviceFromJson(Map<String, dynamic> json) {
  return _WledDevice.fromJson(json);
}

/// @nodoc
class _$WledDeviceTearOff {
  const _$WledDeviceTearOff();

  _WledDevice call(
      {@JsonKey(name: 'state') required DeviceState state,
      @JsonKey(name: 'info') required DeviceInfo info,
      @JsonKey(name: 'effects') required List<String> effects,
      @JsonKey(name: 'palettes') required List<String> palettes,
      @JsonKey(ignore: true) bool isSaved = false,
      @JsonKey(ignore: true) DeviceStatus status = DeviceStatus.unreachable}) {
    return _WledDevice(
      state: state,
      info: info,
      effects: effects,
      palettes: palettes,
      isSaved: isSaved,
      status: status,
    );
  }

  WledDevice fromJson(Map<String, Object?> json) {
    return WledDevice.fromJson(json);
  }
}

/// @nodoc
const $WledDevice = _$WledDeviceTearOff();

/// @nodoc
mixin _$WledDevice {
// state contains the current state of the light. All values may be
// modified by the client
  @JsonKey(name: 'state')
  DeviceState get state =>
      throw _privateConstructorUsedError; // info contains general information about the device. No value can
// be modified using this API
  @JsonKey(name: 'info')
  DeviceInfo get info =>
      throw _privateConstructorUsedError; // effects contains an array of the effect mode names
  @JsonKey(name: 'effects')
  List<String> get effects =>
      throw _privateConstructorUsedError; // palettes contains an array of the palette names
  @JsonKey(name: 'palettes')
  List<String> get palettes =>
      throw _privateConstructorUsedError; // Whether this device is saved to the local system
  @JsonKey(ignore: true)
  bool get isSaved =>
      throw _privateConstructorUsedError; // current status of the functionality of this device
  @JsonKey(ignore: true)
  DeviceStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WledDeviceCopyWith<WledDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WledDeviceCopyWith<$Res> {
  factory $WledDeviceCopyWith(
          WledDevice value, $Res Function(WledDevice) then) =
      _$WledDeviceCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'state') DeviceState state,
      @JsonKey(name: 'info') DeviceInfo info,
      @JsonKey(name: 'effects') List<String> effects,
      @JsonKey(name: 'palettes') List<String> palettes,
      @JsonKey(ignore: true) bool isSaved,
      @JsonKey(ignore: true) DeviceStatus status});

  $DeviceStateCopyWith<$Res> get state;
  $DeviceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$WledDeviceCopyWithImpl<$Res> implements $WledDeviceCopyWith<$Res> {
  _$WledDeviceCopyWithImpl(this._value, this._then);

  final WledDevice _value;
  // ignore: unused_field
  final $Res Function(WledDevice) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? info = freezed,
    Object? effects = freezed,
    Object? palettes = freezed,
    Object? isSaved = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DeviceState,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      effects: effects == freezed
          ? _value.effects
          : effects // ignore: cast_nullable_to_non_nullable
              as List<String>,
      palettes: palettes == freezed
          ? _value.palettes
          : palettes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSaved: isSaved == freezed
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatus,
    ));
  }

  @override
  $DeviceStateCopyWith<$Res> get state {
    return $DeviceStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }

  @override
  $DeviceInfoCopyWith<$Res> get info {
    return $DeviceInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$WledDeviceCopyWith<$Res> implements $WledDeviceCopyWith<$Res> {
  factory _$WledDeviceCopyWith(
          _WledDevice value, $Res Function(_WledDevice) then) =
      __$WledDeviceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'state') DeviceState state,
      @JsonKey(name: 'info') DeviceInfo info,
      @JsonKey(name: 'effects') List<String> effects,
      @JsonKey(name: 'palettes') List<String> palettes,
      @JsonKey(ignore: true) bool isSaved,
      @JsonKey(ignore: true) DeviceStatus status});

  @override
  $DeviceStateCopyWith<$Res> get state;
  @override
  $DeviceInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$WledDeviceCopyWithImpl<$Res> extends _$WledDeviceCopyWithImpl<$Res>
    implements _$WledDeviceCopyWith<$Res> {
  __$WledDeviceCopyWithImpl(
      _WledDevice _value, $Res Function(_WledDevice) _then)
      : super(_value, (v) => _then(v as _WledDevice));

  @override
  _WledDevice get _value => super._value as _WledDevice;

  @override
  $Res call({
    Object? state = freezed,
    Object? info = freezed,
    Object? effects = freezed,
    Object? palettes = freezed,
    Object? isSaved = freezed,
    Object? status = freezed,
  }) {
    return _then(_WledDevice(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DeviceState,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      effects: effects == freezed
          ? _value.effects
          : effects // ignore: cast_nullable_to_non_nullable
              as List<String>,
      palettes: palettes == freezed
          ? _value.palettes
          : palettes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSaved: isSaved == freezed
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WledDevice implements _WledDevice {
  const _$_WledDevice(
      {@JsonKey(name: 'state') required this.state,
      @JsonKey(name: 'info') required this.info,
      @JsonKey(name: 'effects') required this.effects,
      @JsonKey(name: 'palettes') required this.palettes,
      @JsonKey(ignore: true) this.isSaved = false,
      @JsonKey(ignore: true) this.status = DeviceStatus.unreachable});

  factory _$_WledDevice.fromJson(Map<String, dynamic> json) =>
      _$$_WledDeviceFromJson(json);

  @override // state contains the current state of the light. All values may be
// modified by the client
  @JsonKey(name: 'state')
  final DeviceState state;
  @override // info contains general information about the device. No value can
// be modified using this API
  @JsonKey(name: 'info')
  final DeviceInfo info;
  @override // effects contains an array of the effect mode names
  @JsonKey(name: 'effects')
  final List<String> effects;
  @override // palettes contains an array of the palette names
  @JsonKey(name: 'palettes')
  final List<String> palettes;
  @override // Whether this device is saved to the local system
  @JsonKey(ignore: true)
  final bool isSaved;
  @override // current status of the functionality of this device
  @JsonKey(ignore: true)
  final DeviceStatus status;

  @override
  String toString() {
    return 'WledDevice(state: $state, info: $info, effects: $effects, palettes: $palettes, isSaved: $isSaved, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WledDevice &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.effects, effects) &&
            const DeepCollectionEquality().equals(other.palettes, palettes) &&
            const DeepCollectionEquality().equals(other.isSaved, isSaved) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(effects),
      const DeepCollectionEquality().hash(palettes),
      const DeepCollectionEquality().hash(isSaved),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$WledDeviceCopyWith<_WledDevice> get copyWith =>
      __$WledDeviceCopyWithImpl<_WledDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WledDeviceToJson(this);
  }
}

abstract class _WledDevice implements WledDevice {
  const factory _WledDevice(
      {@JsonKey(name: 'state') required DeviceState state,
      @JsonKey(name: 'info') required DeviceInfo info,
      @JsonKey(name: 'effects') required List<String> effects,
      @JsonKey(name: 'palettes') required List<String> palettes,
      @JsonKey(ignore: true) bool isSaved,
      @JsonKey(ignore: true) DeviceStatus status}) = _$_WledDevice;

  factory _WledDevice.fromJson(Map<String, dynamic> json) =
      _$_WledDevice.fromJson;

  @override // state contains the current state of the light. All values may be
// modified by the client
  @JsonKey(name: 'state')
  DeviceState get state;
  @override // info contains general information about the device. No value can
// be modified using this API
  @JsonKey(name: 'info')
  DeviceInfo get info;
  @override // effects contains an array of the effect mode names
  @JsonKey(name: 'effects')
  List<String> get effects;
  @override // palettes contains an array of the palette names
  @JsonKey(name: 'palettes')
  List<String> get palettes;
  @override // Whether this device is saved to the local system
  @JsonKey(ignore: true)
  bool get isSaved;
  @override // current status of the functionality of this device
  @JsonKey(ignore: true)
  DeviceStatus get status;
  @override
  @JsonKey(ignore: true)
  _$WledDeviceCopyWith<_WledDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
