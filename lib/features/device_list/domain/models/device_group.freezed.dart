// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceGroup _$DeviceGroupFromJson(Map<String, dynamic> json) {
  return _DeviceGroup.fromJson(json);
}

/// @nodoc
class _$DeviceGroupTearOff {
  const _$DeviceGroupTearOff();

  _DeviceGroup call(
      {@HiveField(0) String name = '',
      @HiveField(1) List<WledDevice> devices = const <WledDevice>[]}) {
    return _DeviceGroup(
      name: name,
      devices: devices,
    );
  }

  DeviceGroup fromJson(Map<String, Object> json) {
    return DeviceGroup.fromJson(json);
  }
}

/// @nodoc
const $DeviceGroup = _$DeviceGroupTearOff();

/// @nodoc
mixin _$DeviceGroup {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  List<WledDevice> get devices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceGroupCopyWith<DeviceGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceGroupCopyWith<$Res> {
  factory $DeviceGroupCopyWith(
          DeviceGroup value, $Res Function(DeviceGroup) then) =
      _$DeviceGroupCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String name, @HiveField(1) List<WledDevice> devices});
}

/// @nodoc
class _$DeviceGroupCopyWithImpl<$Res> implements $DeviceGroupCopyWith<$Res> {
  _$DeviceGroupCopyWithImpl(this._value, this._then);

  final DeviceGroup _value;
  // ignore: unused_field
  final $Res Function(DeviceGroup) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? devices = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<WledDevice>,
    ));
  }
}

/// @nodoc
abstract class _$DeviceGroupCopyWith<$Res>
    implements $DeviceGroupCopyWith<$Res> {
  factory _$DeviceGroupCopyWith(
          _DeviceGroup value, $Res Function(_DeviceGroup) then) =
      __$DeviceGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String name, @HiveField(1) List<WledDevice> devices});
}

/// @nodoc
class __$DeviceGroupCopyWithImpl<$Res> extends _$DeviceGroupCopyWithImpl<$Res>
    implements _$DeviceGroupCopyWith<$Res> {
  __$DeviceGroupCopyWithImpl(
      _DeviceGroup _value, $Res Function(_DeviceGroup) _then)
      : super(_value, (v) => _then(v as _DeviceGroup));

  @override
  _DeviceGroup get _value => super._value as _DeviceGroup;

  @override
  $Res call({
    Object? name = freezed,
    Object? devices = freezed,
  }) {
    return _then(_DeviceGroup(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<WledDevice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3)
class _$_DeviceGroup implements _DeviceGroup {
  const _$_DeviceGroup(
      {@HiveField(0) this.name = '',
      @HiveField(1) this.devices = const <WledDevice>[]});

  factory _$_DeviceGroup.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceGroupFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  @HiveField(0)
  final String name;
  @JsonKey(defaultValue: const <WledDevice>[])
  @override
  @HiveField(1)
  final List<WledDevice> devices;

  @override
  String toString() {
    return 'DeviceGroup(name: $name, devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceGroup &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.devices, devices) ||
                const DeepCollectionEquality().equals(other.devices, devices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(devices);

  @JsonKey(ignore: true)
  @override
  _$DeviceGroupCopyWith<_DeviceGroup> get copyWith =>
      __$DeviceGroupCopyWithImpl<_DeviceGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceGroupToJson(this);
  }
}

abstract class _DeviceGroup implements DeviceGroup {
  const factory _DeviceGroup(
      {@HiveField(0) String name,
      @HiveField(1) List<WledDevice> devices}) = _$_DeviceGroup;

  factory _DeviceGroup.fromJson(Map<String, dynamic> json) =
      _$_DeviceGroup.fromJson;

  @override
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  List<WledDevice> get devices => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeviceGroupCopyWith<_DeviceGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
