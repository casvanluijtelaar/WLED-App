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

  ListUpdate listUpdate() {
    return const ListUpdate();
  }

  ListDiscovered listDiscovered(List<WledDevice> devices) {
    return ListDiscovered(
      devices,
    );
  }

  ListAdd listAdd() {
    return const ListAdd();
  }

  ListPower listPower() {
    return const ListPower();
  }

  ListMove listMove(int oldIndex, int newIndex) {
    return ListMove(
      oldIndex,
      newIndex,
    );
  }

  ListPeriodic listPeriodic() {
    return const ListPeriodic();
  }

  ListDeviceUpdate listDeviceUpdate(WledDevice device) {
    return ListDeviceUpdate(
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
    required TResult Function() listUpdate,
    required TResult Function(List<WledDevice> devices) listDiscovered,
    required TResult Function() listAdd,
    required TResult Function() listPower,
    required TResult Function(int oldIndex, int newIndex) listMove,
    required TResult Function() listPeriodic,
    required TResult Function(WledDevice device) listDeviceUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListUpdate value) listUpdate,
    required TResult Function(ListDiscovered value) listDiscovered,
    required TResult Function(ListAdd value) listAdd,
    required TResult Function(ListPower value) listPower,
    required TResult Function(ListMove value) listMove,
    required TResult Function(ListPeriodic value) listPeriodic,
    required TResult Function(ListDeviceUpdate value) listDeviceUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
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
abstract class $ListUpdateCopyWith<$Res> {
  factory $ListUpdateCopyWith(
          ListUpdate value, $Res Function(ListUpdate) then) =
      _$ListUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListUpdateCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements $ListUpdateCopyWith<$Res> {
  _$ListUpdateCopyWithImpl(ListUpdate _value, $Res Function(ListUpdate) _then)
      : super(_value, (v) => _then(v as ListUpdate));

  @override
  ListUpdate get _value => super._value as ListUpdate;
}

/// @nodoc

class _$ListUpdate implements ListUpdate {
  const _$ListUpdate();

  @override
  String toString() {
    return 'DeviceListEvent.listUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listUpdate,
    required TResult Function(List<WledDevice> devices) listDiscovered,
    required TResult Function() listAdd,
    required TResult Function() listPower,
    required TResult Function(int oldIndex, int newIndex) listMove,
    required TResult Function() listPeriodic,
    required TResult Function(WledDevice device) listDeviceUpdate,
  }) {
    return listUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
  }) {
    return listUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listUpdate != null) {
      return listUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListUpdate value) listUpdate,
    required TResult Function(ListDiscovered value) listDiscovered,
    required TResult Function(ListAdd value) listAdd,
    required TResult Function(ListPower value) listPower,
    required TResult Function(ListMove value) listMove,
    required TResult Function(ListPeriodic value) listPeriodic,
    required TResult Function(ListDeviceUpdate value) listDeviceUpdate,
  }) {
    return listUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
  }) {
    return listUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listUpdate != null) {
      return listUpdate(this);
    }
    return orElse();
  }
}

abstract class ListUpdate implements DeviceListEvent {
  const factory ListUpdate() = _$ListUpdate;
}

/// @nodoc
abstract class $ListDiscoveredCopyWith<$Res> {
  factory $ListDiscoveredCopyWith(
          ListDiscovered value, $Res Function(ListDiscovered) then) =
      _$ListDiscoveredCopyWithImpl<$Res>;
  $Res call({List<WledDevice> devices});
}

/// @nodoc
class _$ListDiscoveredCopyWithImpl<$Res>
    extends _$DeviceListEventCopyWithImpl<$Res>
    implements $ListDiscoveredCopyWith<$Res> {
  _$ListDiscoveredCopyWithImpl(
      ListDiscovered _value, $Res Function(ListDiscovered) _then)
      : super(_value, (v) => _then(v as ListDiscovered));

  @override
  ListDiscovered get _value => super._value as ListDiscovered;

  @override
  $Res call({
    Object? devices = freezed,
  }) {
    return _then(ListDiscovered(
      devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<WledDevice>,
    ));
  }
}

/// @nodoc

class _$ListDiscovered implements ListDiscovered {
  const _$ListDiscovered(this.devices);

  @override
  final List<WledDevice> devices;

  @override
  String toString() {
    return 'DeviceListEvent.listDiscovered(devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListDiscovered &&
            const DeepCollectionEquality().equals(other.devices, devices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(devices));

  @JsonKey(ignore: true)
  @override
  $ListDiscoveredCopyWith<ListDiscovered> get copyWith =>
      _$ListDiscoveredCopyWithImpl<ListDiscovered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listUpdate,
    required TResult Function(List<WledDevice> devices) listDiscovered,
    required TResult Function() listAdd,
    required TResult Function() listPower,
    required TResult Function(int oldIndex, int newIndex) listMove,
    required TResult Function() listPeriodic,
    required TResult Function(WledDevice device) listDeviceUpdate,
  }) {
    return listDiscovered(devices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
  }) {
    return listDiscovered?.call(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listDiscovered != null) {
      return listDiscovered(devices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListUpdate value) listUpdate,
    required TResult Function(ListDiscovered value) listDiscovered,
    required TResult Function(ListAdd value) listAdd,
    required TResult Function(ListPower value) listPower,
    required TResult Function(ListMove value) listMove,
    required TResult Function(ListPeriodic value) listPeriodic,
    required TResult Function(ListDeviceUpdate value) listDeviceUpdate,
  }) {
    return listDiscovered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
  }) {
    return listDiscovered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listDiscovered != null) {
      return listDiscovered(this);
    }
    return orElse();
  }
}

abstract class ListDiscovered implements DeviceListEvent {
  const factory ListDiscovered(List<WledDevice> devices) = _$ListDiscovered;

  List<WledDevice> get devices;
  @JsonKey(ignore: true)
  $ListDiscoveredCopyWith<ListDiscovered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListAddCopyWith<$Res> {
  factory $ListAddCopyWith(ListAdd value, $Res Function(ListAdd) then) =
      _$ListAddCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListAddCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements $ListAddCopyWith<$Res> {
  _$ListAddCopyWithImpl(ListAdd _value, $Res Function(ListAdd) _then)
      : super(_value, (v) => _then(v as ListAdd));

  @override
  ListAdd get _value => super._value as ListAdd;
}

/// @nodoc

class _$ListAdd implements ListAdd {
  const _$ListAdd();

  @override
  String toString() {
    return 'DeviceListEvent.listAdd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListAdd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listUpdate,
    required TResult Function(List<WledDevice> devices) listDiscovered,
    required TResult Function() listAdd,
    required TResult Function() listPower,
    required TResult Function(int oldIndex, int newIndex) listMove,
    required TResult Function() listPeriodic,
    required TResult Function(WledDevice device) listDeviceUpdate,
  }) {
    return listAdd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
  }) {
    return listAdd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listAdd != null) {
      return listAdd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListUpdate value) listUpdate,
    required TResult Function(ListDiscovered value) listDiscovered,
    required TResult Function(ListAdd value) listAdd,
    required TResult Function(ListPower value) listPower,
    required TResult Function(ListMove value) listMove,
    required TResult Function(ListPeriodic value) listPeriodic,
    required TResult Function(ListDeviceUpdate value) listDeviceUpdate,
  }) {
    return listAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
  }) {
    return listAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listAdd != null) {
      return listAdd(this);
    }
    return orElse();
  }
}

abstract class ListAdd implements DeviceListEvent {
  const factory ListAdd() = _$ListAdd;
}

/// @nodoc
abstract class $ListPowerCopyWith<$Res> {
  factory $ListPowerCopyWith(ListPower value, $Res Function(ListPower) then) =
      _$ListPowerCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListPowerCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements $ListPowerCopyWith<$Res> {
  _$ListPowerCopyWithImpl(ListPower _value, $Res Function(ListPower) _then)
      : super(_value, (v) => _then(v as ListPower));

  @override
  ListPower get _value => super._value as ListPower;
}

/// @nodoc

class _$ListPower implements ListPower {
  const _$ListPower();

  @override
  String toString() {
    return 'DeviceListEvent.listPower()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListPower);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listUpdate,
    required TResult Function(List<WledDevice> devices) listDiscovered,
    required TResult Function() listAdd,
    required TResult Function() listPower,
    required TResult Function(int oldIndex, int newIndex) listMove,
    required TResult Function() listPeriodic,
    required TResult Function(WledDevice device) listDeviceUpdate,
  }) {
    return listPower();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
  }) {
    return listPower?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listPower != null) {
      return listPower();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListUpdate value) listUpdate,
    required TResult Function(ListDiscovered value) listDiscovered,
    required TResult Function(ListAdd value) listAdd,
    required TResult Function(ListPower value) listPower,
    required TResult Function(ListMove value) listMove,
    required TResult Function(ListPeriodic value) listPeriodic,
    required TResult Function(ListDeviceUpdate value) listDeviceUpdate,
  }) {
    return listPower(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
  }) {
    return listPower?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listPower != null) {
      return listPower(this);
    }
    return orElse();
  }
}

abstract class ListPower implements DeviceListEvent {
  const factory ListPower() = _$ListPower;
}

/// @nodoc
abstract class $ListMoveCopyWith<$Res> {
  factory $ListMoveCopyWith(ListMove value, $Res Function(ListMove) then) =
      _$ListMoveCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class _$ListMoveCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements $ListMoveCopyWith<$Res> {
  _$ListMoveCopyWithImpl(ListMove _value, $Res Function(ListMove) _then)
      : super(_value, (v) => _then(v as ListMove));

  @override
  ListMove get _value => super._value as ListMove;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(ListMove(
      oldIndex == freezed
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListMove implements ListMove {
  const _$ListMove(this.oldIndex, this.newIndex);

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'DeviceListEvent.listMove(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListMove &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldIndex, newIndex);

  @JsonKey(ignore: true)
  @override
  $ListMoveCopyWith<ListMove> get copyWith =>
      _$ListMoveCopyWithImpl<ListMove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listUpdate,
    required TResult Function(List<WledDevice> devices) listDiscovered,
    required TResult Function() listAdd,
    required TResult Function() listPower,
    required TResult Function(int oldIndex, int newIndex) listMove,
    required TResult Function() listPeriodic,
    required TResult Function(WledDevice device) listDeviceUpdate,
  }) {
    return listMove(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
  }) {
    return listMove?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listMove != null) {
      return listMove(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListUpdate value) listUpdate,
    required TResult Function(ListDiscovered value) listDiscovered,
    required TResult Function(ListAdd value) listAdd,
    required TResult Function(ListPower value) listPower,
    required TResult Function(ListMove value) listMove,
    required TResult Function(ListPeriodic value) listPeriodic,
    required TResult Function(ListDeviceUpdate value) listDeviceUpdate,
  }) {
    return listMove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
  }) {
    return listMove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listMove != null) {
      return listMove(this);
    }
    return orElse();
  }
}

abstract class ListMove implements DeviceListEvent {
  const factory ListMove(int oldIndex, int newIndex) = _$ListMove;

  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  $ListMoveCopyWith<ListMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPeriodicCopyWith<$Res> {
  factory $ListPeriodicCopyWith(
          ListPeriodic value, $Res Function(ListPeriodic) then) =
      _$ListPeriodicCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListPeriodicCopyWithImpl<$Res>
    extends _$DeviceListEventCopyWithImpl<$Res>
    implements $ListPeriodicCopyWith<$Res> {
  _$ListPeriodicCopyWithImpl(
      ListPeriodic _value, $Res Function(ListPeriodic) _then)
      : super(_value, (v) => _then(v as ListPeriodic));

  @override
  ListPeriodic get _value => super._value as ListPeriodic;
}

/// @nodoc

class _$ListPeriodic implements ListPeriodic {
  const _$ListPeriodic();

  @override
  String toString() {
    return 'DeviceListEvent.listPeriodic()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListPeriodic);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listUpdate,
    required TResult Function(List<WledDevice> devices) listDiscovered,
    required TResult Function() listAdd,
    required TResult Function() listPower,
    required TResult Function(int oldIndex, int newIndex) listMove,
    required TResult Function() listPeriodic,
    required TResult Function(WledDevice device) listDeviceUpdate,
  }) {
    return listPeriodic();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
  }) {
    return listPeriodic?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listPeriodic != null) {
      return listPeriodic();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListUpdate value) listUpdate,
    required TResult Function(ListDiscovered value) listDiscovered,
    required TResult Function(ListAdd value) listAdd,
    required TResult Function(ListPower value) listPower,
    required TResult Function(ListMove value) listMove,
    required TResult Function(ListPeriodic value) listPeriodic,
    required TResult Function(ListDeviceUpdate value) listDeviceUpdate,
  }) {
    return listPeriodic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
  }) {
    return listPeriodic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listPeriodic != null) {
      return listPeriodic(this);
    }
    return orElse();
  }
}

abstract class ListPeriodic implements DeviceListEvent {
  const factory ListPeriodic() = _$ListPeriodic;
}

/// @nodoc
abstract class $ListDeviceUpdateCopyWith<$Res> {
  factory $ListDeviceUpdateCopyWith(
          ListDeviceUpdate value, $Res Function(ListDeviceUpdate) then) =
      _$ListDeviceUpdateCopyWithImpl<$Res>;
  $Res call({WledDevice device});

  $WledDeviceCopyWith<$Res> get device;
}

/// @nodoc
class _$ListDeviceUpdateCopyWithImpl<$Res>
    extends _$DeviceListEventCopyWithImpl<$Res>
    implements $ListDeviceUpdateCopyWith<$Res> {
  _$ListDeviceUpdateCopyWithImpl(
      ListDeviceUpdate _value, $Res Function(ListDeviceUpdate) _then)
      : super(_value, (v) => _then(v as ListDeviceUpdate));

  @override
  ListDeviceUpdate get _value => super._value as ListDeviceUpdate;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(ListDeviceUpdate(
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

class _$ListDeviceUpdate implements ListDeviceUpdate {
  const _$ListDeviceUpdate(this.device);

  @override
  final WledDevice device;

  @override
  String toString() {
    return 'DeviceListEvent.listDeviceUpdate(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListDeviceUpdate &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  $ListDeviceUpdateCopyWith<ListDeviceUpdate> get copyWith =>
      _$ListDeviceUpdateCopyWithImpl<ListDeviceUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listUpdate,
    required TResult Function(List<WledDevice> devices) listDiscovered,
    required TResult Function() listAdd,
    required TResult Function() listPower,
    required TResult Function(int oldIndex, int newIndex) listMove,
    required TResult Function() listPeriodic,
    required TResult Function(WledDevice device) listDeviceUpdate,
  }) {
    return listDeviceUpdate(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
  }) {
    return listDeviceUpdate?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listUpdate,
    TResult Function(List<WledDevice> devices)? listDiscovered,
    TResult Function()? listAdd,
    TResult Function()? listPower,
    TResult Function(int oldIndex, int newIndex)? listMove,
    TResult Function()? listPeriodic,
    TResult Function(WledDevice device)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listDeviceUpdate != null) {
      return listDeviceUpdate(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListUpdate value) listUpdate,
    required TResult Function(ListDiscovered value) listDiscovered,
    required TResult Function(ListAdd value) listAdd,
    required TResult Function(ListPower value) listPower,
    required TResult Function(ListMove value) listMove,
    required TResult Function(ListPeriodic value) listPeriodic,
    required TResult Function(ListDeviceUpdate value) listDeviceUpdate,
  }) {
    return listDeviceUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
  }) {
    return listDeviceUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListUpdate value)? listUpdate,
    TResult Function(ListDiscovered value)? listDiscovered,
    TResult Function(ListAdd value)? listAdd,
    TResult Function(ListPower value)? listPower,
    TResult Function(ListMove value)? listMove,
    TResult Function(ListPeriodic value)? listPeriodic,
    TResult Function(ListDeviceUpdate value)? listDeviceUpdate,
    required TResult orElse(),
  }) {
    if (listDeviceUpdate != null) {
      return listDeviceUpdate(this);
    }
    return orElse();
  }
}

abstract class ListDeviceUpdate implements DeviceListEvent {
  const factory ListDeviceUpdate(WledDevice device) = _$ListDeviceUpdate;

  WledDevice get device;
  @JsonKey(ignore: true)
  $ListDeviceUpdateCopyWith<ListDeviceUpdate> get copyWith =>
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
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
        (other.runtimeType == runtimeType &&
            other is Found &&
            const DeepCollectionEquality().equals(other.devices, devices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(devices));

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

  List<WledDevice> get devices;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Empty);
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
