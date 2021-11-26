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

  Started started() {
    return const Started();
  }

  Back back() {
    return const Back();
  }
}

/// @nodoc
const $DeviceControlEvent = _$DeviceControlEventTearOff();

/// @nodoc
mixin _$DeviceControlEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Back value) back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Back value)? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceControlEventCopyWith<$Res> {
  factory $DeviceControlEventCopyWith(
          DeviceControlEvent value, $Res Function(DeviceControlEvent) then) =
      _$DeviceControlEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceControlEventCopyWithImpl<$Res>
    implements $DeviceControlEventCopyWith<$Res> {
  _$DeviceControlEventCopyWithImpl(this._value, this._then);

  final DeviceControlEvent _value;
  // ignore: unused_field
  final $Res Function(DeviceControlEvent) _then;
}

/// @nodoc
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res> extends _$DeviceControlEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'DeviceControlEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() back,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? back,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Back value) back,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Back value)? back,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements DeviceControlEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class $BackCopyWith<$Res> {
  factory $BackCopyWith(Back value, $Res Function(Back) then) =
      _$BackCopyWithImpl<$Res>;
}

/// @nodoc
class _$BackCopyWithImpl<$Res> extends _$DeviceControlEventCopyWithImpl<$Res>
    implements $BackCopyWith<$Res> {
  _$BackCopyWithImpl(Back _value, $Res Function(Back) _then)
      : super(_value, (v) => _then(v as Back));

  @override
  Back get _value => super._value as Back;
}

/// @nodoc

class _$Back implements Back {
  const _$Back();

  @override
  String toString() {
    return 'DeviceControlEvent.back()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Back);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() back,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? back,
  }) {
    return back?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Back value) back,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Back value)? back,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Back value)? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class Back implements DeviceControlEvent {
  const factory Back() = _$Back;
}

/// @nodoc
class _$DeviceControlStateTearOff {
  const _$DeviceControlStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loaded loaded({required String name, required String address}) {
    return Loaded(
      name: name,
      address: address,
    );
  }
}

/// @nodoc
const $DeviceControlState = _$DeviceControlStateTearOff();

/// @nodoc
mixin _$DeviceControlState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, String address) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, String address)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, String address)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceControlStateCopyWith<$Res> {
  factory $DeviceControlStateCopyWith(
          DeviceControlState value, $Res Function(DeviceControlState) then) =
      _$DeviceControlStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceControlStateCopyWithImpl<$Res>
    implements $DeviceControlStateCopyWith<$Res> {
  _$DeviceControlStateCopyWithImpl(this._value, this._then);

  final DeviceControlState _value;
  // ignore: unused_field
  final $Res Function(DeviceControlState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$DeviceControlStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'DeviceControlState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, String address) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, String address)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, String address)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DeviceControlState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({String name, String address});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$DeviceControlStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(Loaded(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded({required this.name, required this.address});

  @override
  final String name;
  @override
  final String address;

  @override
  String toString() {
    return 'DeviceControlState.loaded(name: $name, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String name, String address) loaded,
  }) {
    return loaded(name, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, String address)? loaded,
  }) {
    return loaded?.call(name, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String name, String address)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(name, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements DeviceControlState {
  const factory Loaded({required String name, required String address}) =
      _$Loaded;

  String get name;
  String get address;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}
