// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_add_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeviceAddEventTearOff {
  const _$DeviceAddEventTearOff();

  Initial initial(WledDevice? device) {
    return Initial(
      device,
    );
  }

  IpChanged ipChanged(String ip) {
    return IpChanged(
      ip,
    );
  }

  IpUnfocused ipUnfocused() {
    return const IpUnfocused();
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

  NameUnfocused nameUnfocused() {
    return const NameUnfocused();
  }

  Submitted submitted() {
    return const Submitted();
  }

  Canceled canceled() {
    return const Canceled();
  }
}

/// @nodoc
const $DeviceAddEvent = _$DeviceAddEventTearOff();

/// @nodoc
mixin _$DeviceAddEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WledDevice? device) initial,
    required TResult Function(String ip) ipChanged,
    required TResult Function() ipUnfocused,
    required TResult Function(String name) nameChanged,
    required TResult Function() nameUnfocused,
    required TResult Function() submitted,
    required TResult Function() canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IpChanged value) ipChanged,
    required TResult Function(IpUnfocused value) ipUnfocused,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(NameUnfocused value) nameUnfocused,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Canceled value) canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceAddEventCopyWith<$Res> {
  factory $DeviceAddEventCopyWith(
          DeviceAddEvent value, $Res Function(DeviceAddEvent) then) =
      _$DeviceAddEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceAddEventCopyWithImpl<$Res>
    implements $DeviceAddEventCopyWith<$Res> {
  _$DeviceAddEventCopyWithImpl(this._value, this._then);

  final DeviceAddEvent _value;
  // ignore: unused_field
  final $Res Function(DeviceAddEvent) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  $Res call({WledDevice? device});

  $WledDeviceCopyWith<$Res>? get device;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$DeviceAddEventCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(Initial(
      device == freezed
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

class _$Initial implements Initial {
  const _$Initial(this.device);

  @override
  final WledDevice? device;

  @override
  String toString() {
    return 'DeviceAddEvent.initial(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initial &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WledDevice? device) initial,
    required TResult Function(String ip) ipChanged,
    required TResult Function() ipUnfocused,
    required TResult Function(String name) nameChanged,
    required TResult Function() nameUnfocused,
    required TResult Function() submitted,
    required TResult Function() canceled,
  }) {
    return initial(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
  }) {
    return initial?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IpChanged value) ipChanged,
    required TResult Function(IpUnfocused value) ipUnfocused,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(NameUnfocused value) nameUnfocused,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Canceled value) canceled,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DeviceAddEvent {
  const factory Initial(WledDevice? device) = _$Initial;

  WledDevice? get device;
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpChangedCopyWith<$Res> {
  factory $IpChangedCopyWith(IpChanged value, $Res Function(IpChanged) then) =
      _$IpChangedCopyWithImpl<$Res>;
  $Res call({String ip});
}

/// @nodoc
class _$IpChangedCopyWithImpl<$Res> extends _$DeviceAddEventCopyWithImpl<$Res>
    implements $IpChangedCopyWith<$Res> {
  _$IpChangedCopyWithImpl(IpChanged _value, $Res Function(IpChanged) _then)
      : super(_value, (v) => _then(v as IpChanged));

  @override
  IpChanged get _value => super._value as IpChanged;

  @override
  $Res call({
    Object? ip = freezed,
  }) {
    return _then(IpChanged(
      ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IpChanged implements IpChanged {
  const _$IpChanged(this.ip);

  @override
  final String ip;

  @override
  String toString() {
    return 'DeviceAddEvent.ipChanged(ip: $ip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IpChanged &&
            (identical(other.ip, ip) || other.ip == ip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ip);

  @JsonKey(ignore: true)
  @override
  $IpChangedCopyWith<IpChanged> get copyWith =>
      _$IpChangedCopyWithImpl<IpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WledDevice? device) initial,
    required TResult Function(String ip) ipChanged,
    required TResult Function() ipUnfocused,
    required TResult Function(String name) nameChanged,
    required TResult Function() nameUnfocused,
    required TResult Function() submitted,
    required TResult Function() canceled,
  }) {
    return ipChanged(ip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
  }) {
    return ipChanged?.call(ip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (ipChanged != null) {
      return ipChanged(ip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IpChanged value) ipChanged,
    required TResult Function(IpUnfocused value) ipUnfocused,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(NameUnfocused value) nameUnfocused,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Canceled value) canceled,
  }) {
    return ipChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
  }) {
    return ipChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (ipChanged != null) {
      return ipChanged(this);
    }
    return orElse();
  }
}

abstract class IpChanged implements DeviceAddEvent {
  const factory IpChanged(String ip) = _$IpChanged;

  String get ip;
  @JsonKey(ignore: true)
  $IpChangedCopyWith<IpChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpUnfocusedCopyWith<$Res> {
  factory $IpUnfocusedCopyWith(
          IpUnfocused value, $Res Function(IpUnfocused) then) =
      _$IpUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class _$IpUnfocusedCopyWithImpl<$Res> extends _$DeviceAddEventCopyWithImpl<$Res>
    implements $IpUnfocusedCopyWith<$Res> {
  _$IpUnfocusedCopyWithImpl(
      IpUnfocused _value, $Res Function(IpUnfocused) _then)
      : super(_value, (v) => _then(v as IpUnfocused));

  @override
  IpUnfocused get _value => super._value as IpUnfocused;
}

/// @nodoc

class _$IpUnfocused implements IpUnfocused {
  const _$IpUnfocused();

  @override
  String toString() {
    return 'DeviceAddEvent.ipUnfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IpUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WledDevice? device) initial,
    required TResult Function(String ip) ipChanged,
    required TResult Function() ipUnfocused,
    required TResult Function(String name) nameChanged,
    required TResult Function() nameUnfocused,
    required TResult Function() submitted,
    required TResult Function() canceled,
  }) {
    return ipUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
  }) {
    return ipUnfocused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (ipUnfocused != null) {
      return ipUnfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IpChanged value) ipChanged,
    required TResult Function(IpUnfocused value) ipUnfocused,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(NameUnfocused value) nameUnfocused,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Canceled value) canceled,
  }) {
    return ipUnfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
  }) {
    return ipUnfocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (ipUnfocused != null) {
      return ipUnfocused(this);
    }
    return orElse();
  }
}

abstract class IpUnfocused implements DeviceAddEvent {
  const factory IpUnfocused() = _$IpUnfocused;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res> extends _$DeviceAddEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'DeviceAddEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WledDevice? device) initial,
    required TResult Function(String ip) ipChanged,
    required TResult Function() ipUnfocused,
    required TResult Function(String name) nameChanged,
    required TResult Function() nameUnfocused,
    required TResult Function() submitted,
    required TResult Function() canceled,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IpChanged value) ipChanged,
    required TResult Function(IpUnfocused value) ipUnfocused,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(NameUnfocused value) nameUnfocused,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Canceled value) canceled,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements DeviceAddEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameUnfocusedCopyWith<$Res> {
  factory $NameUnfocusedCopyWith(
          NameUnfocused value, $Res Function(NameUnfocused) then) =
      _$NameUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NameUnfocusedCopyWithImpl<$Res>
    extends _$DeviceAddEventCopyWithImpl<$Res>
    implements $NameUnfocusedCopyWith<$Res> {
  _$NameUnfocusedCopyWithImpl(
      NameUnfocused _value, $Res Function(NameUnfocused) _then)
      : super(_value, (v) => _then(v as NameUnfocused));

  @override
  NameUnfocused get _value => super._value as NameUnfocused;
}

/// @nodoc

class _$NameUnfocused implements NameUnfocused {
  const _$NameUnfocused();

  @override
  String toString() {
    return 'DeviceAddEvent.nameUnfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NameUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WledDevice? device) initial,
    required TResult Function(String ip) ipChanged,
    required TResult Function() ipUnfocused,
    required TResult Function(String name) nameChanged,
    required TResult Function() nameUnfocused,
    required TResult Function() submitted,
    required TResult Function() canceled,
  }) {
    return nameUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
  }) {
    return nameUnfocused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (nameUnfocused != null) {
      return nameUnfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IpChanged value) ipChanged,
    required TResult Function(IpUnfocused value) ipUnfocused,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(NameUnfocused value) nameUnfocused,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Canceled value) canceled,
  }) {
    return nameUnfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
  }) {
    return nameUnfocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (nameUnfocused != null) {
      return nameUnfocused(this);
    }
    return orElse();
  }
}

abstract class NameUnfocused implements DeviceAddEvent {
  const factory NameUnfocused() = _$NameUnfocused;
}

/// @nodoc
abstract class $SubmittedCopyWith<$Res> {
  factory $SubmittedCopyWith(Submitted value, $Res Function(Submitted) then) =
      _$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmittedCopyWithImpl<$Res> extends _$DeviceAddEventCopyWithImpl<$Res>
    implements $SubmittedCopyWith<$Res> {
  _$SubmittedCopyWithImpl(Submitted _value, $Res Function(Submitted) _then)
      : super(_value, (v) => _then(v as Submitted));

  @override
  Submitted get _value => super._value as Submitted;
}

/// @nodoc

class _$Submitted implements Submitted {
  const _$Submitted();

  @override
  String toString() {
    return 'DeviceAddEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WledDevice? device) initial,
    required TResult Function(String ip) ipChanged,
    required TResult Function() ipUnfocused,
    required TResult Function(String name) nameChanged,
    required TResult Function() nameUnfocused,
    required TResult Function() submitted,
    required TResult Function() canceled,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IpChanged value) ipChanged,
    required TResult Function(IpUnfocused value) ipUnfocused,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(NameUnfocused value) nameUnfocused,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Canceled value) canceled,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements DeviceAddEvent {
  const factory Submitted() = _$Submitted;
}

/// @nodoc
abstract class $CanceledCopyWith<$Res> {
  factory $CanceledCopyWith(Canceled value, $Res Function(Canceled) then) =
      _$CanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanceledCopyWithImpl<$Res> extends _$DeviceAddEventCopyWithImpl<$Res>
    implements $CanceledCopyWith<$Res> {
  _$CanceledCopyWithImpl(Canceled _value, $Res Function(Canceled) _then)
      : super(_value, (v) => _then(v as Canceled));

  @override
  Canceled get _value => super._value as Canceled;
}

/// @nodoc

class _$Canceled implements Canceled {
  const _$Canceled();

  @override
  String toString() {
    return 'DeviceAddEvent.canceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Canceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WledDevice? device) initial,
    required TResult Function(String ip) ipChanged,
    required TResult Function() ipUnfocused,
    required TResult Function(String name) nameChanged,
    required TResult Function() nameUnfocused,
    required TResult Function() submitted,
    required TResult Function() canceled,
  }) {
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
  }) {
    return canceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    TResult Function(String ip)? ipChanged,
    TResult Function()? ipUnfocused,
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    TResult Function()? submitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IpChanged value) ipChanged,
    required TResult Function(IpUnfocused value) ipUnfocused,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(NameUnfocused value) nameUnfocused,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Canceled value) canceled,
  }) {
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
  }) {
    return canceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IpChanged value)? ipChanged,
    TResult Function(IpUnfocused value)? ipUnfocused,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(NameUnfocused value)? nameUnfocused,
    TResult Function(Submitted value)? submitted,
    TResult Function(Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class Canceled implements DeviceAddEvent {
  const factory Canceled() = _$Canceled;
}

/// @nodoc
class _$DeviceAddStateTearOff {
  const _$DeviceAddStateTearOff();

  _DeviceAddState call(
      {Ip ip = const Ip.pure(),
      Name name = const Name.pure(),
      FormzStatus status = FormzStatus.pure}) {
    return _DeviceAddState(
      ip: ip,
      name: name,
      status: status,
    );
  }

  DeviceAddLoading initial(
      {Ip ip = const Ip.pure(),
      Name name = const Name.pure(),
      FormzStatus status = FormzStatus.pure}) {
    return DeviceAddLoading(
      ip: ip,
      name: name,
      status: status,
    );
  }
}

/// @nodoc
const $DeviceAddState = _$DeviceAddStateTearOff();

/// @nodoc
mixin _$DeviceAddState {
  Ip get ip => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Ip ip, Name name, FormzStatus status) $default, {
    required TResult Function(Ip ip, Name name, FormzStatus status) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Ip ip, Name name, FormzStatus status)? $default, {
    TResult Function(Ip ip, Name name, FormzStatus status)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Ip ip, Name name, FormzStatus status)? $default, {
    TResult Function(Ip ip, Name name, FormzStatus status)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DeviceAddState value) $default, {
    required TResult Function(DeviceAddLoading value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DeviceAddState value)? $default, {
    TResult Function(DeviceAddLoading value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DeviceAddState value)? $default, {
    TResult Function(DeviceAddLoading value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceAddStateCopyWith<DeviceAddState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceAddStateCopyWith<$Res> {
  factory $DeviceAddStateCopyWith(
          DeviceAddState value, $Res Function(DeviceAddState) then) =
      _$DeviceAddStateCopyWithImpl<$Res>;
  $Res call({Ip ip, Name name, FormzStatus status});
}

/// @nodoc
class _$DeviceAddStateCopyWithImpl<$Res>
    implements $DeviceAddStateCopyWith<$Res> {
  _$DeviceAddStateCopyWithImpl(this._value, this._then);

  final DeviceAddState _value;
  // ignore: unused_field
  final $Res Function(DeviceAddState) _then;

  @override
  $Res call({
    Object? ip = freezed,
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      ip: ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as Ip,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$DeviceAddStateCopyWith<$Res>
    implements $DeviceAddStateCopyWith<$Res> {
  factory _$DeviceAddStateCopyWith(
          _DeviceAddState value, $Res Function(_DeviceAddState) then) =
      __$DeviceAddStateCopyWithImpl<$Res>;
  @override
  $Res call({Ip ip, Name name, FormzStatus status});
}

/// @nodoc
class __$DeviceAddStateCopyWithImpl<$Res>
    extends _$DeviceAddStateCopyWithImpl<$Res>
    implements _$DeviceAddStateCopyWith<$Res> {
  __$DeviceAddStateCopyWithImpl(
      _DeviceAddState _value, $Res Function(_DeviceAddState) _then)
      : super(_value, (v) => _then(v as _DeviceAddState));

  @override
  _DeviceAddState get _value => super._value as _DeviceAddState;

  @override
  $Res call({
    Object? ip = freezed,
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_DeviceAddState(
      ip: ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as Ip,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_DeviceAddState implements _DeviceAddState {
  const _$_DeviceAddState(
      {this.ip = const Ip.pure(),
      this.name = const Name.pure(),
      this.status = FormzStatus.pure});

  @JsonKey(defaultValue: const Ip.pure())
  @override
  final Ip ip;
  @JsonKey(defaultValue: const Name.pure())
  @override
  final Name name;
  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'DeviceAddState(ip: $ip, name: $name, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeviceAddState &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ip, name, status);

  @JsonKey(ignore: true)
  @override
  _$DeviceAddStateCopyWith<_DeviceAddState> get copyWith =>
      __$DeviceAddStateCopyWithImpl<_DeviceAddState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Ip ip, Name name, FormzStatus status) $default, {
    required TResult Function(Ip ip, Name name, FormzStatus status) initial,
  }) {
    return $default(ip, name, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Ip ip, Name name, FormzStatus status)? $default, {
    TResult Function(Ip ip, Name name, FormzStatus status)? initial,
  }) {
    return $default?.call(ip, name, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Ip ip, Name name, FormzStatus status)? $default, {
    TResult Function(Ip ip, Name name, FormzStatus status)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(ip, name, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DeviceAddState value) $default, {
    required TResult Function(DeviceAddLoading value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DeviceAddState value)? $default, {
    TResult Function(DeviceAddLoading value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DeviceAddState value)? $default, {
    TResult Function(DeviceAddLoading value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _DeviceAddState implements DeviceAddState {
  const factory _DeviceAddState({Ip ip, Name name, FormzStatus status}) =
      _$_DeviceAddState;

  @override
  Ip get ip;
  @override
  Name get name;
  @override
  FormzStatus get status;
  @override
  @JsonKey(ignore: true)
  _$DeviceAddStateCopyWith<_DeviceAddState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceAddLoadingCopyWith<$Res>
    implements $DeviceAddStateCopyWith<$Res> {
  factory $DeviceAddLoadingCopyWith(
          DeviceAddLoading value, $Res Function(DeviceAddLoading) then) =
      _$DeviceAddLoadingCopyWithImpl<$Res>;
  @override
  $Res call({Ip ip, Name name, FormzStatus status});
}

/// @nodoc
class _$DeviceAddLoadingCopyWithImpl<$Res>
    extends _$DeviceAddStateCopyWithImpl<$Res>
    implements $DeviceAddLoadingCopyWith<$Res> {
  _$DeviceAddLoadingCopyWithImpl(
      DeviceAddLoading _value, $Res Function(DeviceAddLoading) _then)
      : super(_value, (v) => _then(v as DeviceAddLoading));

  @override
  DeviceAddLoading get _value => super._value as DeviceAddLoading;

  @override
  $Res call({
    Object? ip = freezed,
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(DeviceAddLoading(
      ip: ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as Ip,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$DeviceAddLoading implements DeviceAddLoading {
  const _$DeviceAddLoading(
      {this.ip = const Ip.pure(),
      this.name = const Name.pure(),
      this.status = FormzStatus.pure});

  @JsonKey(defaultValue: const Ip.pure())
  @override
  final Ip ip;
  @JsonKey(defaultValue: const Name.pure())
  @override
  final Name name;
  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'DeviceAddState.initial(ip: $ip, name: $name, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeviceAddLoading &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ip, name, status);

  @JsonKey(ignore: true)
  @override
  $DeviceAddLoadingCopyWith<DeviceAddLoading> get copyWith =>
      _$DeviceAddLoadingCopyWithImpl<DeviceAddLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Ip ip, Name name, FormzStatus status) $default, {
    required TResult Function(Ip ip, Name name, FormzStatus status) initial,
  }) {
    return initial(ip, name, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Ip ip, Name name, FormzStatus status)? $default, {
    TResult Function(Ip ip, Name name, FormzStatus status)? initial,
  }) {
    return initial?.call(ip, name, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Ip ip, Name name, FormzStatus status)? $default, {
    TResult Function(Ip ip, Name name, FormzStatus status)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(ip, name, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DeviceAddState value) $default, {
    required TResult Function(DeviceAddLoading value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DeviceAddState value)? $default, {
    TResult Function(DeviceAddLoading value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DeviceAddState value)? $default, {
    TResult Function(DeviceAddLoading value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DeviceAddLoading implements DeviceAddState {
  const factory DeviceAddLoading({Ip ip, Name name, FormzStatus status}) =
      _$DeviceAddLoading;

  @override
  Ip get ip;
  @override
  Name get name;
  @override
  FormzStatus get status;
  @override
  @JsonKey(ignore: true)
  $DeviceAddLoadingCopyWith<DeviceAddLoading> get copyWith =>
      throw _privateConstructorUsedError;
}
