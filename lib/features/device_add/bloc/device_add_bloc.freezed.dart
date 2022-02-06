// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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
}

/// @nodoc
const $DeviceAddEvent = _$DeviceAddEventTearOff();

/// @nodoc
mixin _$DeviceAddEvent {
  WledDevice? get device => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WledDevice? device) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceAddEventCopyWith<DeviceAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceAddEventCopyWith<$Res> {
  factory $DeviceAddEventCopyWith(
          DeviceAddEvent value, $Res Function(DeviceAddEvent) then) =
      _$DeviceAddEventCopyWithImpl<$Res>;
  $Res call({WledDevice? device});

  $WledDeviceCopyWith<$Res>? get device;
}

/// @nodoc
class _$DeviceAddEventCopyWithImpl<$Res>
    implements $DeviceAddEventCopyWith<$Res> {
  _$DeviceAddEventCopyWithImpl(this._value, this._then);

  final DeviceAddEvent _value;
  // ignore: unused_field
  final $Res Function(DeviceAddEvent) _then;

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
abstract class $InitialCopyWith<$Res> implements $DeviceAddEventCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({WledDevice? device});

  @override
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
            const DeepCollectionEquality().equals(other.device, device));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(device));

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WledDevice? device) initial,
  }) {
    return initial(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
  }) {
    return initial?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WledDevice? device)? initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
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

  @override
  WledDevice? get device;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$DeviceAddStateTearOff {
  const _$DeviceAddStateTearOff();

  _DeviceAddState call() {
    return const _DeviceAddState();
  }
}

/// @nodoc
const $DeviceAddState = _$DeviceAddStateTearOff();

/// @nodoc
mixin _$DeviceAddState {}

/// @nodoc
abstract class $DeviceAddStateCopyWith<$Res> {
  factory $DeviceAddStateCopyWith(
          DeviceAddState value, $Res Function(DeviceAddState) then) =
      _$DeviceAddStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceAddStateCopyWithImpl<$Res>
    implements $DeviceAddStateCopyWith<$Res> {
  _$DeviceAddStateCopyWithImpl(this._value, this._then);

  final DeviceAddState _value;
  // ignore: unused_field
  final $Res Function(DeviceAddState) _then;
}

/// @nodoc
abstract class _$DeviceAddStateCopyWith<$Res> {
  factory _$DeviceAddStateCopyWith(
          _DeviceAddState value, $Res Function(_DeviceAddState) then) =
      __$DeviceAddStateCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$_DeviceAddState implements _DeviceAddState {
  const _$_DeviceAddState();

  @override
  String toString() {
    return 'DeviceAddState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeviceAddState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _DeviceAddState implements DeviceAddState {
  const factory _DeviceAddState() = _$_DeviceAddState;
}
