// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
      {@HiveField(0) required String address,
      @HiveField(1) required String name,
      @HiveField(2) DeviceStatus status = DeviceStatus.functional,
      @HiveField(3) bool nameIsCustom = false,
      @HiveField(4) bool isSaved = false,
      @HiveField(5) bool isEnabled = true,
      @HiveField(6) int brightness = 255,
      @HiveField(7) @JsonKey() Color color = ColorConverter.defaultColor}) {
    return _WledDevice(
      address: address,
      name: name,
      status: status,
      nameIsCustom: nameIsCustom,
      isSaved: isSaved,
      isEnabled: isEnabled,
      brightness: brightness,
      color: color,
    );
  }

  WledDevice fromJson(Map<String, Object> json) {
    return WledDevice.fromJson(json);
  }
}

/// @nodoc
const $WledDevice = _$WledDeviceTearOff();

/// @nodoc
mixin _$WledDevice {
// device IP (can also be hostname if applicable)
  @HiveField(0)
  String get address =>
      throw _privateConstructorUsedError; // device display name ("Server Description")
  @HiveField(1)
  String get name =>
      throw _privateConstructorUsedError; // Current connection status
  @HiveField(2)
  DeviceStatus get status =>
      throw _privateConstructorUsedError; // If the light name is custom, the name returned
// by the API response will be ignored
  @HiveField(3)
  bool get nameIsCustom =>
      throw _privateConstructorUsedError; // if the wled device is saved to the local device
  @HiveField(4)
  bool get isSaved =>
      throw _privateConstructorUsedError; // Disabled devices don't get polled or show up in the list
  @HiveField(5)
  bool get isEnabled =>
      throw _privateConstructorUsedError; // There are two vars for brightness to discern
// API responses from slider updates
  @HiveField(6)
  int get brightness =>
      throw _privateConstructorUsedError; // the currently active device color
  @HiveField(7)
  @JsonKey()
  Color get color => throw _privateConstructorUsedError;

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
      {@HiveField(0) String address,
      @HiveField(1) String name,
      @HiveField(2) DeviceStatus status,
      @HiveField(3) bool nameIsCustom,
      @HiveField(4) bool isSaved,
      @HiveField(5) bool isEnabled,
      @HiveField(6) int brightness,
      @HiveField(7) @JsonKey() Color color});
}

/// @nodoc
class _$WledDeviceCopyWithImpl<$Res> implements $WledDeviceCopyWith<$Res> {
  _$WledDeviceCopyWithImpl(this._value, this._then);

  final WledDevice _value;
  // ignore: unused_field
  final $Res Function(WledDevice) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? nameIsCustom = freezed,
    Object? isSaved = freezed,
    Object? isEnabled = freezed,
    Object? brightness = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatus,
      nameIsCustom: nameIsCustom == freezed
          ? _value.nameIsCustom
          : nameIsCustom // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: isSaved == freezed
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$WledDeviceCopyWith<$Res> implements $WledDeviceCopyWith<$Res> {
  factory _$WledDeviceCopyWith(
          _WledDevice value, $Res Function(_WledDevice) then) =
      __$WledDeviceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String address,
      @HiveField(1) String name,
      @HiveField(2) DeviceStatus status,
      @HiveField(3) bool nameIsCustom,
      @HiveField(4) bool isSaved,
      @HiveField(5) bool isEnabled,
      @HiveField(6) int brightness,
      @HiveField(7) @JsonKey() Color color});
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
    Object? address = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? nameIsCustom = freezed,
    Object? isSaved = freezed,
    Object? isEnabled = freezed,
    Object? brightness = freezed,
    Object? color = freezed,
  }) {
    return _then(_WledDevice(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeviceStatus,
      nameIsCustom: nameIsCustom == freezed
          ? _value.nameIsCustom
          : nameIsCustom // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: isSaved == freezed
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@ColorConverter()
@HiveType(typeId: 2)
class _$_WledDevice implements _WledDevice {
  const _$_WledDevice(
      {@HiveField(0) required this.address,
      @HiveField(1) required this.name,
      @HiveField(2) this.status = DeviceStatus.functional,
      @HiveField(3) this.nameIsCustom = false,
      @HiveField(4) this.isSaved = false,
      @HiveField(5) this.isEnabled = true,
      @HiveField(6) this.brightness = 255,
      @HiveField(7) @JsonKey() this.color = ColorConverter.defaultColor});

  factory _$_WledDevice.fromJson(Map<String, dynamic> json) =>
      _$$_WledDeviceFromJson(json);

  @override // device IP (can also be hostname if applicable)
  @HiveField(0)
  final String address;
  @override // device display name ("Server Description")
  @HiveField(1)
  final String name;
  @JsonKey(defaultValue: DeviceStatus.functional)
  @override // Current connection status
  @HiveField(2)
  final DeviceStatus status;
  @JsonKey(defaultValue: false)
  @override // If the light name is custom, the name returned
// by the API response will be ignored
  @HiveField(3)
  final bool nameIsCustom;
  @JsonKey(defaultValue: false)
  @override // if the wled device is saved to the local device
  @HiveField(4)
  final bool isSaved;
  @JsonKey(defaultValue: true)
  @override // Disabled devices don't get polled or show up in the list
  @HiveField(5)
  final bool isEnabled;
  @JsonKey(defaultValue: 255)
  @override // There are two vars for brightness to discern
// API responses from slider updates
  @HiveField(6)
  final int brightness;
  @override // the currently active device color
  @HiveField(7)
  @JsonKey()
  final Color color;

  @override
  String toString() {
    return 'WledDevice(address: $address, name: $name, status: $status, nameIsCustom: $nameIsCustom, isSaved: $isSaved, isEnabled: $isEnabled, brightness: $brightness, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WledDevice &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.nameIsCustom, nameIsCustom) ||
                const DeepCollectionEquality()
                    .equals(other.nameIsCustom, nameIsCustom)) &&
            (identical(other.isSaved, isSaved) ||
                const DeepCollectionEquality()
                    .equals(other.isSaved, isSaved)) &&
            (identical(other.isEnabled, isEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isEnabled, isEnabled)) &&
            (identical(other.brightness, brightness) ||
                const DeepCollectionEquality()
                    .equals(other.brightness, brightness)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(nameIsCustom) ^
      const DeepCollectionEquality().hash(isSaved) ^
      const DeepCollectionEquality().hash(isEnabled) ^
      const DeepCollectionEquality().hash(brightness) ^
      const DeepCollectionEquality().hash(color);

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
      {@HiveField(0) required String address,
      @HiveField(1) required String name,
      @HiveField(2) DeviceStatus status,
      @HiveField(3) bool nameIsCustom,
      @HiveField(4) bool isSaved,
      @HiveField(5) bool isEnabled,
      @HiveField(6) int brightness,
      @HiveField(7) @JsonKey() Color color}) = _$_WledDevice;

  factory _WledDevice.fromJson(Map<String, dynamic> json) =
      _$_WledDevice.fromJson;

  @override // device IP (can also be hostname if applicable)
  @HiveField(0)
  String get address => throw _privateConstructorUsedError;
  @override // device display name ("Server Description")
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @override // Current connection status
  @HiveField(2)
  DeviceStatus get status => throw _privateConstructorUsedError;
  @override // If the light name is custom, the name returned
// by the API response will be ignored
  @HiveField(3)
  bool get nameIsCustom => throw _privateConstructorUsedError;
  @override // if the wled device is saved to the local device
  @HiveField(4)
  bool get isSaved => throw _privateConstructorUsedError;
  @override // Disabled devices don't get polled or show up in the list
  @HiveField(5)
  bool get isEnabled => throw _privateConstructorUsedError;
  @override // There are two vars for brightness to discern
// API responses from slider updates
  @HiveField(6)
  int get brightness => throw _privateConstructorUsedError;
  @override // the currently active device color
  @HiveField(7)
  @JsonKey()
  Color get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WledDeviceCopyWith<_WledDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
