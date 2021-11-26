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
      {required String address,
      required String name,
      DeviceStatus status = DeviceStatus.functional,
      bool nameIsCustom = false,
      bool isSaved = false,
      bool isEnabled = true,
      int brightness = 255,
      @JsonKey() Color color = ColorConverter.defaultColor,
      String group = ''}) {
    return _WledDevice(
      address: address,
      name: name,
      status: status,
      nameIsCustom: nameIsCustom,
      isSaved: isSaved,
      isEnabled: isEnabled,
      brightness: brightness,
      color: color,
      group: group,
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
// device IP (can also be hostname if applicable)
  String get address =>
      throw _privateConstructorUsedError; // device display name ("Server Description")
  String get name =>
      throw _privateConstructorUsedError; // Current connection status
  DeviceStatus get status =>
      throw _privateConstructorUsedError; // If the light name is custom, the name returned
// by the API response will be ignored
  bool get nameIsCustom =>
      throw _privateConstructorUsedError; // if the wled device is saved to the local device
  bool get isSaved =>
      throw _privateConstructorUsedError; // Disabled devices don't get polled or show up in the list
  bool get isEnabled =>
      throw _privateConstructorUsedError; // There are two vars for brightness to discern
// API responses from slider updates
  int get brightness =>
      throw _privateConstructorUsedError; // the currently active device color
  @JsonKey()
  Color get color =>
      throw _privateConstructorUsedError; // group this wled device is part of
  String get group => throw _privateConstructorUsedError;

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
      {String address,
      String name,
      DeviceStatus status,
      bool nameIsCustom,
      bool isSaved,
      bool isEnabled,
      int brightness,
      @JsonKey() Color color,
      String group});
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
    Object? group = freezed,
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
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String address,
      String name,
      DeviceStatus status,
      bool nameIsCustom,
      bool isSaved,
      bool isEnabled,
      int brightness,
      @JsonKey() Color color,
      String group});
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
    Object? group = freezed,
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
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@ColorConverter()
class _$_WledDevice implements _WledDevice {
  const _$_WledDevice(
      {required this.address,
      required this.name,
      this.status = DeviceStatus.functional,
      this.nameIsCustom = false,
      this.isSaved = false,
      this.isEnabled = true,
      this.brightness = 255,
      @JsonKey() this.color = ColorConverter.defaultColor,
      this.group = ''});

  factory _$_WledDevice.fromJson(Map<String, dynamic> json) =>
      _$$_WledDeviceFromJson(json);

  @override // device IP (can also be hostname if applicable)
  final String address;
  @override // device display name ("Server Description")
  final String name;
  @JsonKey(defaultValue: DeviceStatus.functional)
  @override // Current connection status
  final DeviceStatus status;
  @JsonKey(defaultValue: false)
  @override // If the light name is custom, the name returned
// by the API response will be ignored
  final bool nameIsCustom;
  @JsonKey(defaultValue: false)
  @override // if the wled device is saved to the local device
  final bool isSaved;
  @JsonKey(defaultValue: true)
  @override // Disabled devices don't get polled or show up in the list
  final bool isEnabled;
  @JsonKey(defaultValue: 255)
  @override // There are two vars for brightness to discern
// API responses from slider updates
  final int brightness;
  @override // the currently active device color
  @JsonKey()
  final Color color;
  @JsonKey(defaultValue: '')
  @override // group this wled device is part of
  final String group;

  @override
  String toString() {
    return 'WledDevice(address: $address, name: $name, status: $status, nameIsCustom: $nameIsCustom, isSaved: $isSaved, isEnabled: $isEnabled, brightness: $brightness, color: $color, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WledDevice &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.nameIsCustom, nameIsCustom) ||
                other.nameIsCustom == nameIsCustom) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, name, status,
      nameIsCustom, isSaved, isEnabled, brightness, color, group);

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
      {required String address,
      required String name,
      DeviceStatus status,
      bool nameIsCustom,
      bool isSaved,
      bool isEnabled,
      int brightness,
      @JsonKey() Color color,
      String group}) = _$_WledDevice;

  factory _WledDevice.fromJson(Map<String, dynamic> json) =
      _$_WledDevice.fromJson;

  @override // device IP (can also be hostname if applicable)
  String get address;
  @override // device display name ("Server Description")
  String get name;
  @override // Current connection status
  DeviceStatus get status;
  @override // If the light name is custom, the name returned
// by the API response will be ignored
  bool get nameIsCustom;
  @override // if the wled device is saved to the local device
  bool get isSaved;
  @override // Disabled devices don't get polled or show up in the list
  bool get isEnabled;
  @override // There are two vars for brightness to discern
// API responses from slider updates
  int get brightness;
  @override // the currently active device color
  @JsonKey()
  Color get color;
  @override // group this wled device is part of
  String get group;
  @override
  @JsonKey(ignore: true)
  _$WledDeviceCopyWith<_WledDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
