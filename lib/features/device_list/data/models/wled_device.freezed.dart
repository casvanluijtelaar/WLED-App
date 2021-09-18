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

/// @nodoc
class _$WledDeviceTearOff {
  const _$WledDeviceTearOff();

  _WledDevice call(
      {required String address,
      required String name,
      DeviceStatus status = DeviceStatus.standard,
      bool nameIsCustom = false,
      bool isEnabled = true,
      double brightness = 0.9,
      Color color = const Color.fromRGBO(255, 255, 255, 0.2)}) {
    return _WledDevice(
      address: address,
      name: name,
      status: status,
      nameIsCustom: nameIsCustom,
      isEnabled: isEnabled,
      brightness: brightness,
      color: color,
    );
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
      throw _privateConstructorUsedError; // Disabled devices don't get polled or show up in the list
  bool get isEnabled =>
      throw _privateConstructorUsedError; // There are two vars for brightness to discern
// API responses from slider updates
  double get brightness =>
      throw _privateConstructorUsedError; // the currently active device color
  Color get color => throw _privateConstructorUsedError;

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
      bool isEnabled,
      double brightness,
      Color color});
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
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as double,
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
      {String address,
      String name,
      DeviceStatus status,
      bool nameIsCustom,
      bool isEnabled,
      double brightness,
      Color color});
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
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as double,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_WledDevice with DiagnosticableTreeMixin implements _WledDevice {
  const _$_WledDevice(
      {required this.address,
      required this.name,
      this.status = DeviceStatus.standard,
      this.nameIsCustom = false,
      this.isEnabled = true,
      this.brightness = 0.9,
      this.color = const Color.fromRGBO(255, 255, 255, 0.2)});

  @override // device IP (can also be hostname if applicable)
  final String address;
  @override // device display name ("Server Description")
  final String name;
  @JsonKey(defaultValue: DeviceStatus.standard)
  @override // Current connection status
  final DeviceStatus status;
  @JsonKey(defaultValue: false)
  @override // If the light name is custom, the name returned
// by the API response will be ignored
  final bool nameIsCustom;
  @JsonKey(defaultValue: true)
  @override // Disabled devices don't get polled or show up in the list
  final bool isEnabled;
  @JsonKey(defaultValue: 0.9)
  @override // There are two vars for brightness to discern
// API responses from slider updates
  final double brightness;
  @JsonKey(defaultValue: const Color.fromRGBO(255, 255, 255, 0.2))
  @override // the currently active device color
  final Color color;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WledDevice(address: $address, name: $name, status: $status, nameIsCustom: $nameIsCustom, isEnabled: $isEnabled, brightness: $brightness, color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WledDevice'))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('nameIsCustom', nameIsCustom))
      ..add(DiagnosticsProperty('isEnabled', isEnabled))
      ..add(DiagnosticsProperty('brightness', brightness))
      ..add(DiagnosticsProperty('color', color));
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
      const DeepCollectionEquality().hash(isEnabled) ^
      const DeepCollectionEquality().hash(brightness) ^
      const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$WledDeviceCopyWith<_WledDevice> get copyWith =>
      __$WledDeviceCopyWithImpl<_WledDevice>(this, _$identity);
}

abstract class _WledDevice implements WledDevice {
  const factory _WledDevice(
      {required String address,
      required String name,
      DeviceStatus status,
      bool nameIsCustom,
      bool isEnabled,
      double brightness,
      Color color}) = _$_WledDevice;

  @override // device IP (can also be hostname if applicable)
  String get address => throw _privateConstructorUsedError;
  @override // device display name ("Server Description")
  String get name => throw _privateConstructorUsedError;
  @override // Current connection status
  DeviceStatus get status => throw _privateConstructorUsedError;
  @override // If the light name is custom, the name returned
// by the API response will be ignored
  bool get nameIsCustom => throw _privateConstructorUsedError;
  @override // Disabled devices don't get polled or show up in the list
  bool get isEnabled => throw _privateConstructorUsedError;
  @override // There are two vars for brightness to discern
// API responses from slider updates
  double get brightness => throw _privateConstructorUsedError;
  @override // the currently active device color
  Color get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WledDeviceCopyWith<_WledDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
