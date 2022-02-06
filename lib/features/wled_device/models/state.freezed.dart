// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceState _$DeviceStateFromJson(Map<String, dynamic> json) {
  return _DeviceState.fromJson(json);
}

/// @nodoc
class _$DeviceStateTearOff {
  const _$DeviceStateTearOff();

  _DeviceState call(
      {@JsonKey(name: 'on') bool isEnabled = false,
      @JsonKey(name: 'bri') int brightness = 0,
      @JsonKey(name: 'transition') int transition = 0,
      @JsonKey(name: 'tt') int tt = 0,
      @JsonKey(name: 'ps') int presetId = -1,
      @JsonKey(name: 'psave') int presetSaveSlot = 0,
      @JsonKey(name: 'pl') int playlist = 0,
      @JsonKey(name: 'nl') Nightlight nightlight = const Nightlight(),
      @JsonKey(name: 'udpn') Udpn udpn = const Udpn(),
      @JsonKey(name: 'v') bool verbose = false,
      @JsonKey(name: 'rb') bool reboot = false,
      @JsonKey(name: 'lor') int liveoverride = 0,
      @JsonKey(name: 'time') int time = 0,
      @JsonKey(name: 'mainseg') int mainSegment = 0,
      @JsonKey(name: 'seg') List<Segment> segments = const <Segment>[]}) {
    return _DeviceState(
      isEnabled: isEnabled,
      brightness: brightness,
      transition: transition,
      tt: tt,
      presetId: presetId,
      presetSaveSlot: presetSaveSlot,
      playlist: playlist,
      nightlight: nightlight,
      udpn: udpn,
      verbose: verbose,
      reboot: reboot,
      liveoverride: liveoverride,
      time: time,
      mainSegment: mainSegment,
      segments: segments,
    );
  }

  DeviceState fromJson(Map<String, Object?> json) {
    return DeviceState.fromJson(json);
  }
}

/// @nodoc
const $DeviceState = _$DeviceStateTearOff();

/// @nodoc
mixin _$DeviceState {
// On/Off state of the light
  @JsonKey(name: 'on')
  bool get isEnabled =>
      throw _privateConstructorUsedError; // Brightness of the light. If on is false, contains last brightness when
// light was on (aka brightness when on is set to true. Setting bri to 0 is
// supported but it is recommended to use the range 1-255 and use on: false
// to turn off. The state response will never havethe value 0 for bri.
  @JsonKey(name: 'bri')
  int get brightness => throw _privateConstructorUsedError; // 0-255
// Duration of the crossfade between different colors/brightness levels.
// One unit is 100ms, so a value of 4 results in atransition of 400ms.
  @JsonKey(name: 'transition')
  int get transition =>
      throw _privateConstructorUsedError; // Similar to transition, but applies to just the current API call.
// Not included in state response.
  @JsonKey(name: 'tt')
  int get tt => throw _privateConstructorUsedError; // 0 - 255
// ID of currently set preset.
  @JsonKey(name: 'ps')
  int get presetId => throw _privateConstructorUsedError; // -1 - 65535
// Save current light config to specified preset slot. Not included
// in state response.
  @JsonKey(name: 'psave')
  int get presetSaveSlot => throw _privateConstructorUsedError; // 1 - 16
// ID of currently set playlist. For now, this sets the preset cycle
// feature, -1 is off and 0 is on.
  @JsonKey(name: 'pl')
  int get playlist => throw _privateConstructorUsedError; // -1 - 0
  @JsonKey(name: 'nl')
  Nightlight get nightlight => throw _privateConstructorUsedError;
  @JsonKey(name: 'udpn')
  Udpn get udpn =>
      throw _privateConstructorUsedError; // If set to true in a JSON POST command, the response will contain the
// full JSON state object. Not included in state response
  @JsonKey(name: 'v')
  bool get verbose =>
      throw _privateConstructorUsedError; // If set to true, device will reboot immediately.
// Not included in state response.
  @JsonKey(name: 'rb')
  bool get reboot =>
      throw _privateConstructorUsedError; // Live data override. 0 is off, 1 is override until live data ends,
// 2 is override until ESP reboot (available since 0.10.0)
  @JsonKey(name: 'lor')
  int get liveoverride => throw _privateConstructorUsedError; // 0 - 2
// Set module time to unix timestamp. Not included in state response.
  @JsonKey(name: 'time')
  int get time => throw _privateConstructorUsedError; // uint32
// Main Segment, 0 to info.leds.maxseg-1
  @JsonKey(name: 'mainseg')
  int get mainSegment =>
      throw _privateConstructorUsedError; // Segments are individual parts of the LED strip. In 0.9.0 this will
// enables running different effects on differentparts of the strip.
  @JsonKey(name: 'seg')
  List<Segment> get segments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceStateCopyWith<DeviceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStateCopyWith<$Res> {
  factory $DeviceStateCopyWith(
          DeviceState value, $Res Function(DeviceState) then) =
      _$DeviceStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'on') bool isEnabled,
      @JsonKey(name: 'bri') int brightness,
      @JsonKey(name: 'transition') int transition,
      @JsonKey(name: 'tt') int tt,
      @JsonKey(name: 'ps') int presetId,
      @JsonKey(name: 'psave') int presetSaveSlot,
      @JsonKey(name: 'pl') int playlist,
      @JsonKey(name: 'nl') Nightlight nightlight,
      @JsonKey(name: 'udpn') Udpn udpn,
      @JsonKey(name: 'v') bool verbose,
      @JsonKey(name: 'rb') bool reboot,
      @JsonKey(name: 'lor') int liveoverride,
      @JsonKey(name: 'time') int time,
      @JsonKey(name: 'mainseg') int mainSegment,
      @JsonKey(name: 'seg') List<Segment> segments});

  $NightlightCopyWith<$Res> get nightlight;
  $UdpnCopyWith<$Res> get udpn;
}

/// @nodoc
class _$DeviceStateCopyWithImpl<$Res> implements $DeviceStateCopyWith<$Res> {
  _$DeviceStateCopyWithImpl(this._value, this._then);

  final DeviceState _value;
  // ignore: unused_field
  final $Res Function(DeviceState) _then;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? brightness = freezed,
    Object? transition = freezed,
    Object? tt = freezed,
    Object? presetId = freezed,
    Object? presetSaveSlot = freezed,
    Object? playlist = freezed,
    Object? nightlight = freezed,
    Object? udpn = freezed,
    Object? verbose = freezed,
    Object? reboot = freezed,
    Object? liveoverride = freezed,
    Object? time = freezed,
    Object? mainSegment = freezed,
    Object? segments = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      transition: transition == freezed
          ? _value.transition
          : transition // ignore: cast_nullable_to_non_nullable
              as int,
      tt: tt == freezed
          ? _value.tt
          : tt // ignore: cast_nullable_to_non_nullable
              as int,
      presetId: presetId == freezed
          ? _value.presetId
          : presetId // ignore: cast_nullable_to_non_nullable
              as int,
      presetSaveSlot: presetSaveSlot == freezed
          ? _value.presetSaveSlot
          : presetSaveSlot // ignore: cast_nullable_to_non_nullable
              as int,
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as int,
      nightlight: nightlight == freezed
          ? _value.nightlight
          : nightlight // ignore: cast_nullable_to_non_nullable
              as Nightlight,
      udpn: udpn == freezed
          ? _value.udpn
          : udpn // ignore: cast_nullable_to_non_nullable
              as Udpn,
      verbose: verbose == freezed
          ? _value.verbose
          : verbose // ignore: cast_nullable_to_non_nullable
              as bool,
      reboot: reboot == freezed
          ? _value.reboot
          : reboot // ignore: cast_nullable_to_non_nullable
              as bool,
      liveoverride: liveoverride == freezed
          ? _value.liveoverride
          : liveoverride // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      mainSegment: mainSegment == freezed
          ? _value.mainSegment
          : mainSegment // ignore: cast_nullable_to_non_nullable
              as int,
      segments: segments == freezed
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>,
    ));
  }

  @override
  $NightlightCopyWith<$Res> get nightlight {
    return $NightlightCopyWith<$Res>(_value.nightlight, (value) {
      return _then(_value.copyWith(nightlight: value));
    });
  }

  @override
  $UdpnCopyWith<$Res> get udpn {
    return $UdpnCopyWith<$Res>(_value.udpn, (value) {
      return _then(_value.copyWith(udpn: value));
    });
  }
}

/// @nodoc
abstract class _$DeviceStateCopyWith<$Res>
    implements $DeviceStateCopyWith<$Res> {
  factory _$DeviceStateCopyWith(
          _DeviceState value, $Res Function(_DeviceState) then) =
      __$DeviceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'on') bool isEnabled,
      @JsonKey(name: 'bri') int brightness,
      @JsonKey(name: 'transition') int transition,
      @JsonKey(name: 'tt') int tt,
      @JsonKey(name: 'ps') int presetId,
      @JsonKey(name: 'psave') int presetSaveSlot,
      @JsonKey(name: 'pl') int playlist,
      @JsonKey(name: 'nl') Nightlight nightlight,
      @JsonKey(name: 'udpn') Udpn udpn,
      @JsonKey(name: 'v') bool verbose,
      @JsonKey(name: 'rb') bool reboot,
      @JsonKey(name: 'lor') int liveoverride,
      @JsonKey(name: 'time') int time,
      @JsonKey(name: 'mainseg') int mainSegment,
      @JsonKey(name: 'seg') List<Segment> segments});

  @override
  $NightlightCopyWith<$Res> get nightlight;
  @override
  $UdpnCopyWith<$Res> get udpn;
}

/// @nodoc
class __$DeviceStateCopyWithImpl<$Res> extends _$DeviceStateCopyWithImpl<$Res>
    implements _$DeviceStateCopyWith<$Res> {
  __$DeviceStateCopyWithImpl(
      _DeviceState _value, $Res Function(_DeviceState) _then)
      : super(_value, (v) => _then(v as _DeviceState));

  @override
  _DeviceState get _value => super._value as _DeviceState;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? brightness = freezed,
    Object? transition = freezed,
    Object? tt = freezed,
    Object? presetId = freezed,
    Object? presetSaveSlot = freezed,
    Object? playlist = freezed,
    Object? nightlight = freezed,
    Object? udpn = freezed,
    Object? verbose = freezed,
    Object? reboot = freezed,
    Object? liveoverride = freezed,
    Object? time = freezed,
    Object? mainSegment = freezed,
    Object? segments = freezed,
  }) {
    return _then(_DeviceState(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      transition: transition == freezed
          ? _value.transition
          : transition // ignore: cast_nullable_to_non_nullable
              as int,
      tt: tt == freezed
          ? _value.tt
          : tt // ignore: cast_nullable_to_non_nullable
              as int,
      presetId: presetId == freezed
          ? _value.presetId
          : presetId // ignore: cast_nullable_to_non_nullable
              as int,
      presetSaveSlot: presetSaveSlot == freezed
          ? _value.presetSaveSlot
          : presetSaveSlot // ignore: cast_nullable_to_non_nullable
              as int,
      playlist: playlist == freezed
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as int,
      nightlight: nightlight == freezed
          ? _value.nightlight
          : nightlight // ignore: cast_nullable_to_non_nullable
              as Nightlight,
      udpn: udpn == freezed
          ? _value.udpn
          : udpn // ignore: cast_nullable_to_non_nullable
              as Udpn,
      verbose: verbose == freezed
          ? _value.verbose
          : verbose // ignore: cast_nullable_to_non_nullable
              as bool,
      reboot: reboot == freezed
          ? _value.reboot
          : reboot // ignore: cast_nullable_to_non_nullable
              as bool,
      liveoverride: liveoverride == freezed
          ? _value.liveoverride
          : liveoverride // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      mainSegment: mainSegment == freezed
          ? _value.mainSegment
          : mainSegment // ignore: cast_nullable_to_non_nullable
              as int,
      segments: segments == freezed
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceState implements _DeviceState {
  const _$_DeviceState(
      {@JsonKey(name: 'on') this.isEnabled = false,
      @JsonKey(name: 'bri') this.brightness = 0,
      @JsonKey(name: 'transition') this.transition = 0,
      @JsonKey(name: 'tt') this.tt = 0,
      @JsonKey(name: 'ps') this.presetId = -1,
      @JsonKey(name: 'psave') this.presetSaveSlot = 0,
      @JsonKey(name: 'pl') this.playlist = 0,
      @JsonKey(name: 'nl') this.nightlight = const Nightlight(),
      @JsonKey(name: 'udpn') this.udpn = const Udpn(),
      @JsonKey(name: 'v') this.verbose = false,
      @JsonKey(name: 'rb') this.reboot = false,
      @JsonKey(name: 'lor') this.liveoverride = 0,
      @JsonKey(name: 'time') this.time = 0,
      @JsonKey(name: 'mainseg') this.mainSegment = 0,
      @JsonKey(name: 'seg') this.segments = const <Segment>[]});

  factory _$_DeviceState.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceStateFromJson(json);

  @override // On/Off state of the light
  @JsonKey(name: 'on')
  final bool isEnabled;
  @override // Brightness of the light. If on is false, contains last brightness when
// light was on (aka brightness when on is set to true. Setting bri to 0 is
// supported but it is recommended to use the range 1-255 and use on: false
// to turn off. The state response will never havethe value 0 for bri.
  @JsonKey(name: 'bri')
  final int brightness;
  @override // 0-255
// Duration of the crossfade between different colors/brightness levels.
// One unit is 100ms, so a value of 4 results in atransition of 400ms.
  @JsonKey(name: 'transition')
  final int transition;
  @override // Similar to transition, but applies to just the current API call.
// Not included in state response.
  @JsonKey(name: 'tt')
  final int tt;
  @override // 0 - 255
// ID of currently set preset.
  @JsonKey(name: 'ps')
  final int presetId;
  @override // -1 - 65535
// Save current light config to specified preset slot. Not included
// in state response.
  @JsonKey(name: 'psave')
  final int presetSaveSlot;
  @override // 1 - 16
// ID of currently set playlist. For now, this sets the preset cycle
// feature, -1 is off and 0 is on.
  @JsonKey(name: 'pl')
  final int playlist;
  @override // -1 - 0
  @JsonKey(name: 'nl')
  final Nightlight nightlight;
  @override
  @JsonKey(name: 'udpn')
  final Udpn udpn;
  @override // If set to true in a JSON POST command, the response will contain the
// full JSON state object. Not included in state response
  @JsonKey(name: 'v')
  final bool verbose;
  @override // If set to true, device will reboot immediately.
// Not included in state response.
  @JsonKey(name: 'rb')
  final bool reboot;
  @override // Live data override. 0 is off, 1 is override until live data ends,
// 2 is override until ESP reboot (available since 0.10.0)
  @JsonKey(name: 'lor')
  final int liveoverride;
  @override // 0 - 2
// Set module time to unix timestamp. Not included in state response.
  @JsonKey(name: 'time')
  final int time;
  @override // uint32
// Main Segment, 0 to info.leds.maxseg-1
  @JsonKey(name: 'mainseg')
  final int mainSegment;
  @override // Segments are individual parts of the LED strip. In 0.9.0 this will
// enables running different effects on differentparts of the strip.
  @JsonKey(name: 'seg')
  final List<Segment> segments;

  @override
  String toString() {
    return 'DeviceState(isEnabled: $isEnabled, brightness: $brightness, transition: $transition, tt: $tt, presetId: $presetId, presetSaveSlot: $presetSaveSlot, playlist: $playlist, nightlight: $nightlight, udpn: $udpn, verbose: $verbose, reboot: $reboot, liveoverride: $liveoverride, time: $time, mainSegment: $mainSegment, segments: $segments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeviceState &&
            const DeepCollectionEquality().equals(other.isEnabled, isEnabled) &&
            const DeepCollectionEquality()
                .equals(other.brightness, brightness) &&
            const DeepCollectionEquality()
                .equals(other.transition, transition) &&
            const DeepCollectionEquality().equals(other.tt, tt) &&
            const DeepCollectionEquality().equals(other.presetId, presetId) &&
            const DeepCollectionEquality()
                .equals(other.presetSaveSlot, presetSaveSlot) &&
            const DeepCollectionEquality().equals(other.playlist, playlist) &&
            const DeepCollectionEquality()
                .equals(other.nightlight, nightlight) &&
            const DeepCollectionEquality().equals(other.udpn, udpn) &&
            const DeepCollectionEquality().equals(other.verbose, verbose) &&
            const DeepCollectionEquality().equals(other.reboot, reboot) &&
            const DeepCollectionEquality()
                .equals(other.liveoverride, liveoverride) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.mainSegment, mainSegment) &&
            const DeepCollectionEquality().equals(other.segments, segments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isEnabled),
      const DeepCollectionEquality().hash(brightness),
      const DeepCollectionEquality().hash(transition),
      const DeepCollectionEquality().hash(tt),
      const DeepCollectionEquality().hash(presetId),
      const DeepCollectionEquality().hash(presetSaveSlot),
      const DeepCollectionEquality().hash(playlist),
      const DeepCollectionEquality().hash(nightlight),
      const DeepCollectionEquality().hash(udpn),
      const DeepCollectionEquality().hash(verbose),
      const DeepCollectionEquality().hash(reboot),
      const DeepCollectionEquality().hash(liveoverride),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(mainSegment),
      const DeepCollectionEquality().hash(segments));

  @JsonKey(ignore: true)
  @override
  _$DeviceStateCopyWith<_DeviceState> get copyWith =>
      __$DeviceStateCopyWithImpl<_DeviceState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceStateToJson(this);
  }
}

abstract class _DeviceState implements DeviceState {
  const factory _DeviceState(
      {@JsonKey(name: 'on') bool isEnabled,
      @JsonKey(name: 'bri') int brightness,
      @JsonKey(name: 'transition') int transition,
      @JsonKey(name: 'tt') int tt,
      @JsonKey(name: 'ps') int presetId,
      @JsonKey(name: 'psave') int presetSaveSlot,
      @JsonKey(name: 'pl') int playlist,
      @JsonKey(name: 'nl') Nightlight nightlight,
      @JsonKey(name: 'udpn') Udpn udpn,
      @JsonKey(name: 'v') bool verbose,
      @JsonKey(name: 'rb') bool reboot,
      @JsonKey(name: 'lor') int liveoverride,
      @JsonKey(name: 'time') int time,
      @JsonKey(name: 'mainseg') int mainSegment,
      @JsonKey(name: 'seg') List<Segment> segments}) = _$_DeviceState;

  factory _DeviceState.fromJson(Map<String, dynamic> json) =
      _$_DeviceState.fromJson;

  @override // On/Off state of the light
  @JsonKey(name: 'on')
  bool get isEnabled;
  @override // Brightness of the light. If on is false, contains last brightness when
// light was on (aka brightness when on is set to true. Setting bri to 0 is
// supported but it is recommended to use the range 1-255 and use on: false
// to turn off. The state response will never havethe value 0 for bri.
  @JsonKey(name: 'bri')
  int get brightness;
  @override // 0-255
// Duration of the crossfade between different colors/brightness levels.
// One unit is 100ms, so a value of 4 results in atransition of 400ms.
  @JsonKey(name: 'transition')
  int get transition;
  @override // Similar to transition, but applies to just the current API call.
// Not included in state response.
  @JsonKey(name: 'tt')
  int get tt;
  @override // 0 - 255
// ID of currently set preset.
  @JsonKey(name: 'ps')
  int get presetId;
  @override // -1 - 65535
// Save current light config to specified preset slot. Not included
// in state response.
  @JsonKey(name: 'psave')
  int get presetSaveSlot;
  @override // 1 - 16
// ID of currently set playlist. For now, this sets the preset cycle
// feature, -1 is off and 0 is on.
  @JsonKey(name: 'pl')
  int get playlist;
  @override // -1 - 0
  @JsonKey(name: 'nl')
  Nightlight get nightlight;
  @override
  @JsonKey(name: 'udpn')
  Udpn get udpn;
  @override // If set to true in a JSON POST command, the response will contain the
// full JSON state object. Not included in state response
  @JsonKey(name: 'v')
  bool get verbose;
  @override // If set to true, device will reboot immediately.
// Not included in state response.
  @JsonKey(name: 'rb')
  bool get reboot;
  @override // Live data override. 0 is off, 1 is override until live data ends,
// 2 is override until ESP reboot (available since 0.10.0)
  @JsonKey(name: 'lor')
  int get liveoverride;
  @override // 0 - 2
// Set module time to unix timestamp. Not included in state response.
  @JsonKey(name: 'time')
  int get time;
  @override // uint32
// Main Segment, 0 to info.leds.maxseg-1
  @JsonKey(name: 'mainseg')
  int get mainSegment;
  @override // Segments are individual parts of the LED strip. In 0.9.0 this will
// enables running different effects on differentparts of the strip.
  @JsonKey(name: 'seg')
  List<Segment> get segments;
  @override
  @JsonKey(ignore: true)
  _$DeviceStateCopyWith<_DeviceState> get copyWith =>
      throw _privateConstructorUsedError;
}

Nightlight _$NightlightFromJson(Map<String, dynamic> json) {
  return _Nightlight.fromJson(json);
}

/// @nodoc
class _$NightlightTearOff {
  const _$NightlightTearOff();

  _Nightlight call(
      {@JsonKey(name: 'on') bool isEnabled = false,
      @JsonKey(name: 'dur') int duration = 1,
      @JsonKey(name: 'mode') int mode = 0,
      @JsonKey(name: 'tbri') int targetBrightness = 0,
      @JsonKey(name: 'rem') int timeRemaining = -1}) {
    return _Nightlight(
      isEnabled: isEnabled,
      duration: duration,
      mode: mode,
      targetBrightness: targetBrightness,
      timeRemaining: timeRemaining,
    );
  }

  Nightlight fromJson(Map<String, Object?> json) {
    return Nightlight.fromJson(json);
  }
}

/// @nodoc
const $Nightlight = _$NightlightTearOff();

/// @nodoc
mixin _$Nightlight {
// Nightlight currently active
  @JsonKey(name: 'on')
  bool get isEnabled => throw _privateConstructorUsedError; // true - false
// Duration of nightlight in minutes
  @JsonKey(name: 'dur')
  int get duration => throw _privateConstructorUsedError; // 1 - 255\
// Nightlight mode (0: instant, 1: fade, 2: color fade, 3: sunrise)
// (available since 0.10.2)
  @JsonKey(name: 'mode')
  int get mode => throw _privateConstructorUsedError; // 0 - 3
// Target brightness of nightlight feature
  @JsonKey(name: 'tbri')
  int get targetBrightness => throw _privateConstructorUsedError; // 0 - 255
// Remaining nightlight duration in seconds, -1 if not active.
// Only in state response, can not be set.
  @JsonKey(name: 'rem')
  int get timeRemaining => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NightlightCopyWith<Nightlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NightlightCopyWith<$Res> {
  factory $NightlightCopyWith(
          Nightlight value, $Res Function(Nightlight) then) =
      _$NightlightCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'on') bool isEnabled,
      @JsonKey(name: 'dur') int duration,
      @JsonKey(name: 'mode') int mode,
      @JsonKey(name: 'tbri') int targetBrightness,
      @JsonKey(name: 'rem') int timeRemaining});
}

/// @nodoc
class _$NightlightCopyWithImpl<$Res> implements $NightlightCopyWith<$Res> {
  _$NightlightCopyWithImpl(this._value, this._then);

  final Nightlight _value;
  // ignore: unused_field
  final $Res Function(Nightlight) _then;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? duration = freezed,
    Object? mode = freezed,
    Object? targetBrightness = freezed,
    Object? timeRemaining = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as int,
      targetBrightness: targetBrightness == freezed
          ? _value.targetBrightness
          : targetBrightness // ignore: cast_nullable_to_non_nullable
              as int,
      timeRemaining: timeRemaining == freezed
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$NightlightCopyWith<$Res> implements $NightlightCopyWith<$Res> {
  factory _$NightlightCopyWith(
          _Nightlight value, $Res Function(_Nightlight) then) =
      __$NightlightCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'on') bool isEnabled,
      @JsonKey(name: 'dur') int duration,
      @JsonKey(name: 'mode') int mode,
      @JsonKey(name: 'tbri') int targetBrightness,
      @JsonKey(name: 'rem') int timeRemaining});
}

/// @nodoc
class __$NightlightCopyWithImpl<$Res> extends _$NightlightCopyWithImpl<$Res>
    implements _$NightlightCopyWith<$Res> {
  __$NightlightCopyWithImpl(
      _Nightlight _value, $Res Function(_Nightlight) _then)
      : super(_value, (v) => _then(v as _Nightlight));

  @override
  _Nightlight get _value => super._value as _Nightlight;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? duration = freezed,
    Object? mode = freezed,
    Object? targetBrightness = freezed,
    Object? timeRemaining = freezed,
  }) {
    return _then(_Nightlight(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as int,
      targetBrightness: targetBrightness == freezed
          ? _value.targetBrightness
          : targetBrightness // ignore: cast_nullable_to_non_nullable
              as int,
      timeRemaining: timeRemaining == freezed
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nightlight implements _Nightlight {
  const _$_Nightlight(
      {@JsonKey(name: 'on') this.isEnabled = false,
      @JsonKey(name: 'dur') this.duration = 1,
      @JsonKey(name: 'mode') this.mode = 0,
      @JsonKey(name: 'tbri') this.targetBrightness = 0,
      @JsonKey(name: 'rem') this.timeRemaining = -1});

  factory _$_Nightlight.fromJson(Map<String, dynamic> json) =>
      _$$_NightlightFromJson(json);

  @override // Nightlight currently active
  @JsonKey(name: 'on')
  final bool isEnabled;
  @override // true - false
// Duration of nightlight in minutes
  @JsonKey(name: 'dur')
  final int duration;
  @override // 1 - 255\
// Nightlight mode (0: instant, 1: fade, 2: color fade, 3: sunrise)
// (available since 0.10.2)
  @JsonKey(name: 'mode')
  final int mode;
  @override // 0 - 3
// Target brightness of nightlight feature
  @JsonKey(name: 'tbri')
  final int targetBrightness;
  @override // 0 - 255
// Remaining nightlight duration in seconds, -1 if not active.
// Only in state response, can not be set.
  @JsonKey(name: 'rem')
  final int timeRemaining;

  @override
  String toString() {
    return 'Nightlight(isEnabled: $isEnabled, duration: $duration, mode: $mode, targetBrightness: $targetBrightness, timeRemaining: $timeRemaining)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Nightlight &&
            const DeepCollectionEquality().equals(other.isEnabled, isEnabled) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality()
                .equals(other.targetBrightness, targetBrightness) &&
            const DeepCollectionEquality()
                .equals(other.timeRemaining, timeRemaining));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isEnabled),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(targetBrightness),
      const DeepCollectionEquality().hash(timeRemaining));

  @JsonKey(ignore: true)
  @override
  _$NightlightCopyWith<_Nightlight> get copyWith =>
      __$NightlightCopyWithImpl<_Nightlight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NightlightToJson(this);
  }
}

abstract class _Nightlight implements Nightlight {
  const factory _Nightlight(
      {@JsonKey(name: 'on') bool isEnabled,
      @JsonKey(name: 'dur') int duration,
      @JsonKey(name: 'mode') int mode,
      @JsonKey(name: 'tbri') int targetBrightness,
      @JsonKey(name: 'rem') int timeRemaining}) = _$_Nightlight;

  factory _Nightlight.fromJson(Map<String, dynamic> json) =
      _$_Nightlight.fromJson;

  @override // Nightlight currently active
  @JsonKey(name: 'on')
  bool get isEnabled;
  @override // true - false
// Duration of nightlight in minutes
  @JsonKey(name: 'dur')
  int get duration;
  @override // 1 - 255\
// Nightlight mode (0: instant, 1: fade, 2: color fade, 3: sunrise)
// (available since 0.10.2)
  @JsonKey(name: 'mode')
  int get mode;
  @override // 0 - 3
// Target brightness of nightlight feature
  @JsonKey(name: 'tbri')
  int get targetBrightness;
  @override // 0 - 255
// Remaining nightlight duration in seconds, -1 if not active.
// Only in state response, can not be set.
  @JsonKey(name: 'rem')
  int get timeRemaining;
  @override
  @JsonKey(ignore: true)
  _$NightlightCopyWith<_Nightlight> get copyWith =>
      throw _privateConstructorUsedError;
}

Udpn _$UdpnFromJson(Map<String, dynamic> json) {
  return _Udpn.fromJson(json);
}

/// @nodoc
class _$UdpnTearOff {
  const _$UdpnTearOff();

  _Udpn call(
      {@JsonKey(name: 'send') bool send = false,
      @JsonKey(name: 'recv') bool receive = false,
      @JsonKey(name: 'nn') bool nn = false}) {
    return _Udpn(
      send: send,
      receive: receive,
      nn: nn,
    );
  }

  Udpn fromJson(Map<String, Object?> json) {
    return Udpn.fromJson(json);
  }
}

/// @nodoc
const $Udpn = _$UdpnTearOff();

/// @nodoc
mixin _$Udpn {
// Send WLED broadcast (UDP sync) packet on state change
  @JsonKey(name: 'send')
  bool get send => throw _privateConstructorUsedError; // true - false
// Receive broadcast packets
  @JsonKey(name: 'recv')
  bool get receive => throw _privateConstructorUsedError; // true - false
// Don't send a broadcast packet (applies to just the current API call).
// Not included in state response.
  @JsonKey(name: 'nn')
  bool get nn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UdpnCopyWith<Udpn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UdpnCopyWith<$Res> {
  factory $UdpnCopyWith(Udpn value, $Res Function(Udpn) then) =
      _$UdpnCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'send') bool send,
      @JsonKey(name: 'recv') bool receive,
      @JsonKey(name: 'nn') bool nn});
}

/// @nodoc
class _$UdpnCopyWithImpl<$Res> implements $UdpnCopyWith<$Res> {
  _$UdpnCopyWithImpl(this._value, this._then);

  final Udpn _value;
  // ignore: unused_field
  final $Res Function(Udpn) _then;

  @override
  $Res call({
    Object? send = freezed,
    Object? receive = freezed,
    Object? nn = freezed,
  }) {
    return _then(_value.copyWith(
      send: send == freezed
          ? _value.send
          : send // ignore: cast_nullable_to_non_nullable
              as bool,
      receive: receive == freezed
          ? _value.receive
          : receive // ignore: cast_nullable_to_non_nullable
              as bool,
      nn: nn == freezed
          ? _value.nn
          : nn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UdpnCopyWith<$Res> implements $UdpnCopyWith<$Res> {
  factory _$UdpnCopyWith(_Udpn value, $Res Function(_Udpn) then) =
      __$UdpnCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'send') bool send,
      @JsonKey(name: 'recv') bool receive,
      @JsonKey(name: 'nn') bool nn});
}

/// @nodoc
class __$UdpnCopyWithImpl<$Res> extends _$UdpnCopyWithImpl<$Res>
    implements _$UdpnCopyWith<$Res> {
  __$UdpnCopyWithImpl(_Udpn _value, $Res Function(_Udpn) _then)
      : super(_value, (v) => _then(v as _Udpn));

  @override
  _Udpn get _value => super._value as _Udpn;

  @override
  $Res call({
    Object? send = freezed,
    Object? receive = freezed,
    Object? nn = freezed,
  }) {
    return _then(_Udpn(
      send: send == freezed
          ? _value.send
          : send // ignore: cast_nullable_to_non_nullable
              as bool,
      receive: receive == freezed
          ? _value.receive
          : receive // ignore: cast_nullable_to_non_nullable
              as bool,
      nn: nn == freezed
          ? _value.nn
          : nn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Udpn implements _Udpn {
  const _$_Udpn(
      {@JsonKey(name: 'send') this.send = false,
      @JsonKey(name: 'recv') this.receive = false,
      @JsonKey(name: 'nn') this.nn = false});

  factory _$_Udpn.fromJson(Map<String, dynamic> json) => _$$_UdpnFromJson(json);

  @override // Send WLED broadcast (UDP sync) packet on state change
  @JsonKey(name: 'send')
  final bool send;
  @override // true - false
// Receive broadcast packets
  @JsonKey(name: 'recv')
  final bool receive;
  @override // true - false
// Don't send a broadcast packet (applies to just the current API call).
// Not included in state response.
  @JsonKey(name: 'nn')
  final bool nn;

  @override
  String toString() {
    return 'Udpn(send: $send, receive: $receive, nn: $nn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Udpn &&
            const DeepCollectionEquality().equals(other.send, send) &&
            const DeepCollectionEquality().equals(other.receive, receive) &&
            const DeepCollectionEquality().equals(other.nn, nn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(send),
      const DeepCollectionEquality().hash(receive),
      const DeepCollectionEquality().hash(nn));

  @JsonKey(ignore: true)
  @override
  _$UdpnCopyWith<_Udpn> get copyWith =>
      __$UdpnCopyWithImpl<_Udpn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UdpnToJson(this);
  }
}

abstract class _Udpn implements Udpn {
  const factory _Udpn(
      {@JsonKey(name: 'send') bool send,
      @JsonKey(name: 'recv') bool receive,
      @JsonKey(name: 'nn') bool nn}) = _$_Udpn;

  factory _Udpn.fromJson(Map<String, dynamic> json) = _$_Udpn.fromJson;

  @override // Send WLED broadcast (UDP sync) packet on state change
  @JsonKey(name: 'send')
  bool get send;
  @override // true - false
// Receive broadcast packets
  @JsonKey(name: 'recv')
  bool get receive;
  @override // true - false
// Don't send a broadcast packet (applies to just the current API call).
// Not included in state response.
  @JsonKey(name: 'nn')
  bool get nn;
  @override
  @JsonKey(ignore: true)
  _$UdpnCopyWith<_Udpn> get copyWith => throw _privateConstructorUsedError;
}

Segment _$SegmentFromJson(Map<String, dynamic> json) {
  return _Segment.fromJson(json);
}

/// @nodoc
class _$SegmentTearOff {
  const _$SegmentTearOff();

  _Segment call(
      {@JsonKey(name: 'id')
          int id = 0,
      @JsonKey(name: 'start')
          int start = 0,
      @JsonKey(name: 'stop')
          int stop = 0,
      @JsonKey(name: 'len')
          int length = 0,
      @JsonKey(name: 'grp')
          int grouping = 0,
      @JsonKey(name: 'spc')
          int spacing = 0,
      @JsonKey(name: 'of')
          int offset = 0,
      @ColorConverter()
      @JsonKey(name: 'col')
          List<Color> colors = const <Color>[],
      @JsonKey(name: 'fx')
          int effect = 0,
      @JsonKey(name: 'sx')
          int effectSpeed = 100,
      @JsonKey(name: 'ix')
          int effectIntensity = 100,
      @JsonKey(name: 'pal')
          int paletteId = 0,
      @JsonKey(name: 'sel')
          bool selected = false,
      @JsonKey(name: 'rev')
          bool reverse = false,
      @JsonKey(name: 'on')
          bool enabled = false,
      @JsonKey(name: 'bri')
          int brightness = 0,
      @JsonKey(name: 'mi')
          bool mirror = false}) {
    return _Segment(
      id: id,
      start: start,
      stop: stop,
      length: length,
      grouping: grouping,
      spacing: spacing,
      offset: offset,
      colors: colors,
      effect: effect,
      effectSpeed: effectSpeed,
      effectIntensity: effectIntensity,
      paletteId: paletteId,
      selected: selected,
      reverse: reverse,
      enabled: enabled,
      brightness: brightness,
      mirror: mirror,
    );
  }

  Segment fromJson(Map<String, Object?> json) {
    return Segment.fromJson(json);
  }
}

/// @nodoc
const $Segment = _$SegmentTearOff();

/// @nodoc
mixin _$Segment {
// Zero-indexed ID of the segment. May be omitted, in that case the ID will
// be inferred from the order of the segment objects in the seg array. As
// such, not included in state response.
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError; // 0 to info.maxseg -1
// LED the segment starts at.
  @JsonKey(name: 'start')
  int get start =>
      throw _privateConstructorUsedError; // 0 to info.leds.count -1
// LED the segment stops at, not included in range. If stop is set to a
// lower or equal value than start (setting to 0 is recommended),
// the segment is invalidated and deleted.
  @JsonKey(name: 'stop')
  int get stop => throw _privateConstructorUsedError; // 0 to info.leds.count
// Length of the segment (stop - start). stop has preference,
// so if it is included, len is ignored.
  @JsonKey(name: 'len')
  int get length => throw _privateConstructorUsedError; // 0 to info.leds.count
// Grouping (how many consecutive LEDs of the same segment will be grouped
// to the same color)
  @JsonKey(name: 'grp')
  int get grouping => throw _privateConstructorUsedError; // 0 to 255
// Spacing (how many LEDs are turned off and skipped between each group)
  @JsonKey(name: 'spc')
  int get spacing => throw _privateConstructorUsedError; // 0 to 255
// Offset (how many LEDs to rotate the virtual start of the segments,
// available since 0.13.0)
  @JsonKey(name: 'of')
  int get offset => throw _privateConstructorUsedError; // -length+1 to length
// Array that has up to 3 color arrays as elements, the primary, secondary
// (background) and tertiary colors of the segment. Each color is an array
// of 3 or 4 bytes, which represent an RGB(W) color.
// ignore: lines_longer_than_80_chars
  @ColorConverter()
  @JsonKey(name: 'col')
  List<Color> get colors =>
      throw _privateConstructorUsedError; // ID of the effect or ~ to increment, ~- to decrement, or r for random.
  @JsonKey(name: 'fx')
  int get effect => throw _privateConstructorUsedError; // 0 to info.fxcount -1
// Relative effect speed
  @JsonKey(name: 'sx')
  int get effectSpeed => throw _privateConstructorUsedError; // 0 to 255
// Effect intensity
  @JsonKey(name: 'ix')
  int get effectIntensity => throw _privateConstructorUsedError; // 0 to 255
// ID of the color palette or ~ to increment, ~- to decrement,
// or r for random.
  @JsonKey(name: 'pal')
  int get paletteId =>
      throw _privateConstructorUsedError; // 0 to info.palcount -1
// true if the segment is selected. Selected segments will have their state
// (color/FX) updated by APIs that don't support segments (currently any
// API except this JSON API). If no segment is selected, the first segment
// (id:0) will behave as if selected. WLED will report the state of the
// first (lowest id) segment that is selected to APIs (UDP sync, HTTP,
// MQTT, Blynk...).
  @JsonKey(name: 'sel')
  bool get selected =>
      throw _privateConstructorUsedError; // Flips the segment, causing animations to change direction.
  @JsonKey(name: 'rev')
  bool get reverse =>
      throw _privateConstructorUsedError; // Turns on and off the individual segment. (available since 0.10.0)
  @JsonKey(name: 'on')
  bool get enabled =>
      throw _privateConstructorUsedError; // Sets the individual segment brightness (available since 0.10.0)
  @JsonKey(name: 'bri')
  int get brightness => throw _privateConstructorUsedError; // 0 to 255
// Mirrors the segment (available since 0.10.2)
  @JsonKey(name: 'mi')
  bool get mirror => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SegmentCopyWith<Segment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SegmentCopyWith<$Res> {
  factory $SegmentCopyWith(Segment value, $Res Function(Segment) then) =
      _$SegmentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'start') int start,
      @JsonKey(name: 'stop') int stop,
      @JsonKey(name: 'len') int length,
      @JsonKey(name: 'grp') int grouping,
      @JsonKey(name: 'spc') int spacing,
      @JsonKey(name: 'of') int offset,
      @ColorConverter() @JsonKey(name: 'col') List<Color> colors,
      @JsonKey(name: 'fx') int effect,
      @JsonKey(name: 'sx') int effectSpeed,
      @JsonKey(name: 'ix') int effectIntensity,
      @JsonKey(name: 'pal') int paletteId,
      @JsonKey(name: 'sel') bool selected,
      @JsonKey(name: 'rev') bool reverse,
      @JsonKey(name: 'on') bool enabled,
      @JsonKey(name: 'bri') int brightness,
      @JsonKey(name: 'mi') bool mirror});
}

/// @nodoc
class _$SegmentCopyWithImpl<$Res> implements $SegmentCopyWith<$Res> {
  _$SegmentCopyWithImpl(this._value, this._then);

  final Segment _value;
  // ignore: unused_field
  final $Res Function(Segment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? start = freezed,
    Object? stop = freezed,
    Object? length = freezed,
    Object? grouping = freezed,
    Object? spacing = freezed,
    Object? offset = freezed,
    Object? colors = freezed,
    Object? effect = freezed,
    Object? effectSpeed = freezed,
    Object? effectIntensity = freezed,
    Object? paletteId = freezed,
    Object? selected = freezed,
    Object? reverse = freezed,
    Object? enabled = freezed,
    Object? brightness = freezed,
    Object? mirror = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      stop: stop == freezed
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as int,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      grouping: grouping == freezed
          ? _value.grouping
          : grouping // ignore: cast_nullable_to_non_nullable
              as int,
      spacing: spacing == freezed
          ? _value.spacing
          : spacing // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      effect: effect == freezed
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as int,
      effectSpeed: effectSpeed == freezed
          ? _value.effectSpeed
          : effectSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      effectIntensity: effectIntensity == freezed
          ? _value.effectIntensity
          : effectIntensity // ignore: cast_nullable_to_non_nullable
              as int,
      paletteId: paletteId == freezed
          ? _value.paletteId
          : paletteId // ignore: cast_nullable_to_non_nullable
              as int,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      reverse: reverse == freezed
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      mirror: mirror == freezed
          ? _value.mirror
          : mirror // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SegmentCopyWith<$Res> implements $SegmentCopyWith<$Res> {
  factory _$SegmentCopyWith(_Segment value, $Res Function(_Segment) then) =
      __$SegmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'start') int start,
      @JsonKey(name: 'stop') int stop,
      @JsonKey(name: 'len') int length,
      @JsonKey(name: 'grp') int grouping,
      @JsonKey(name: 'spc') int spacing,
      @JsonKey(name: 'of') int offset,
      @ColorConverter() @JsonKey(name: 'col') List<Color> colors,
      @JsonKey(name: 'fx') int effect,
      @JsonKey(name: 'sx') int effectSpeed,
      @JsonKey(name: 'ix') int effectIntensity,
      @JsonKey(name: 'pal') int paletteId,
      @JsonKey(name: 'sel') bool selected,
      @JsonKey(name: 'rev') bool reverse,
      @JsonKey(name: 'on') bool enabled,
      @JsonKey(name: 'bri') int brightness,
      @JsonKey(name: 'mi') bool mirror});
}

/// @nodoc
class __$SegmentCopyWithImpl<$Res> extends _$SegmentCopyWithImpl<$Res>
    implements _$SegmentCopyWith<$Res> {
  __$SegmentCopyWithImpl(_Segment _value, $Res Function(_Segment) _then)
      : super(_value, (v) => _then(v as _Segment));

  @override
  _Segment get _value => super._value as _Segment;

  @override
  $Res call({
    Object? id = freezed,
    Object? start = freezed,
    Object? stop = freezed,
    Object? length = freezed,
    Object? grouping = freezed,
    Object? spacing = freezed,
    Object? offset = freezed,
    Object? colors = freezed,
    Object? effect = freezed,
    Object? effectSpeed = freezed,
    Object? effectIntensity = freezed,
    Object? paletteId = freezed,
    Object? selected = freezed,
    Object? reverse = freezed,
    Object? enabled = freezed,
    Object? brightness = freezed,
    Object? mirror = freezed,
  }) {
    return _then(_Segment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      stop: stop == freezed
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as int,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      grouping: grouping == freezed
          ? _value.grouping
          : grouping // ignore: cast_nullable_to_non_nullable
              as int,
      spacing: spacing == freezed
          ? _value.spacing
          : spacing // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      effect: effect == freezed
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as int,
      effectSpeed: effectSpeed == freezed
          ? _value.effectSpeed
          : effectSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      effectIntensity: effectIntensity == freezed
          ? _value.effectIntensity
          : effectIntensity // ignore: cast_nullable_to_non_nullable
              as int,
      paletteId: paletteId == freezed
          ? _value.paletteId
          : paletteId // ignore: cast_nullable_to_non_nullable
              as int,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      reverse: reverse == freezed
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as int,
      mirror: mirror == freezed
          ? _value.mirror
          : mirror // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Segment implements _Segment {
  const _$_Segment(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'start') this.start = 0,
      @JsonKey(name: 'stop') this.stop = 0,
      @JsonKey(name: 'len') this.length = 0,
      @JsonKey(name: 'grp') this.grouping = 0,
      @JsonKey(name: 'spc') this.spacing = 0,
      @JsonKey(name: 'of') this.offset = 0,
      @ColorConverter() @JsonKey(name: 'col') this.colors = const <Color>[],
      @JsonKey(name: 'fx') this.effect = 0,
      @JsonKey(name: 'sx') this.effectSpeed = 100,
      @JsonKey(name: 'ix') this.effectIntensity = 100,
      @JsonKey(name: 'pal') this.paletteId = 0,
      @JsonKey(name: 'sel') this.selected = false,
      @JsonKey(name: 'rev') this.reverse = false,
      @JsonKey(name: 'on') this.enabled = false,
      @JsonKey(name: 'bri') this.brightness = 0,
      @JsonKey(name: 'mi') this.mirror = false});

  factory _$_Segment.fromJson(Map<String, dynamic> json) =>
      _$$_SegmentFromJson(json);

  @override // Zero-indexed ID of the segment. May be omitted, in that case the ID will
// be inferred from the order of the segment objects in the seg array. As
// such, not included in state response.
  @JsonKey(name: 'id')
  final int id;
  @override // 0 to info.maxseg -1
// LED the segment starts at.
  @JsonKey(name: 'start')
  final int start;
  @override // 0 to info.leds.count -1
// LED the segment stops at, not included in range. If stop is set to a
// lower or equal value than start (setting to 0 is recommended),
// the segment is invalidated and deleted.
  @JsonKey(name: 'stop')
  final int stop;
  @override // 0 to info.leds.count
// Length of the segment (stop - start). stop has preference,
// so if it is included, len is ignored.
  @JsonKey(name: 'len')
  final int length;
  @override // 0 to info.leds.count
// Grouping (how many consecutive LEDs of the same segment will be grouped
// to the same color)
  @JsonKey(name: 'grp')
  final int grouping;
  @override // 0 to 255
// Spacing (how many LEDs are turned off and skipped between each group)
  @JsonKey(name: 'spc')
  final int spacing;
  @override // 0 to 255
// Offset (how many LEDs to rotate the virtual start of the segments,
// available since 0.13.0)
  @JsonKey(name: 'of')
  final int offset;
  @override // -length+1 to length
// Array that has up to 3 color arrays as elements, the primary, secondary
// (background) and tertiary colors of the segment. Each color is an array
// of 3 or 4 bytes, which represent an RGB(W) color.
// ignore: lines_longer_than_80_chars
  @ColorConverter()
  @JsonKey(name: 'col')
  final List<Color> colors;
  @override // ID of the effect or ~ to increment, ~- to decrement, or r for random.
  @JsonKey(name: 'fx')
  final int effect;
  @override // 0 to info.fxcount -1
// Relative effect speed
  @JsonKey(name: 'sx')
  final int effectSpeed;
  @override // 0 to 255
// Effect intensity
  @JsonKey(name: 'ix')
  final int effectIntensity;
  @override // 0 to 255
// ID of the color palette or ~ to increment, ~- to decrement,
// or r for random.
  @JsonKey(name: 'pal')
  final int paletteId;
  @override // 0 to info.palcount -1
// true if the segment is selected. Selected segments will have their state
// (color/FX) updated by APIs that don't support segments (currently any
// API except this JSON API). If no segment is selected, the first segment
// (id:0) will behave as if selected. WLED will report the state of the
// first (lowest id) segment that is selected to APIs (UDP sync, HTTP,
// MQTT, Blynk...).
  @JsonKey(name: 'sel')
  final bool selected;
  @override // Flips the segment, causing animations to change direction.
  @JsonKey(name: 'rev')
  final bool reverse;
  @override // Turns on and off the individual segment. (available since 0.10.0)
  @JsonKey(name: 'on')
  final bool enabled;
  @override // Sets the individual segment brightness (available since 0.10.0)
  @JsonKey(name: 'bri')
  final int brightness;
  @override // 0 to 255
// Mirrors the segment (available since 0.10.2)
  @JsonKey(name: 'mi')
  final bool mirror;

  @override
  String toString() {
    return 'Segment(id: $id, start: $start, stop: $stop, length: $length, grouping: $grouping, spacing: $spacing, offset: $offset, colors: $colors, effect: $effect, effectSpeed: $effectSpeed, effectIntensity: $effectIntensity, paletteId: $paletteId, selected: $selected, reverse: $reverse, enabled: $enabled, brightness: $brightness, mirror: $mirror)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Segment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.stop, stop) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.grouping, grouping) &&
            const DeepCollectionEquality().equals(other.spacing, spacing) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.colors, colors) &&
            const DeepCollectionEquality().equals(other.effect, effect) &&
            const DeepCollectionEquality()
                .equals(other.effectSpeed, effectSpeed) &&
            const DeepCollectionEquality()
                .equals(other.effectIntensity, effectIntensity) &&
            const DeepCollectionEquality().equals(other.paletteId, paletteId) &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality().equals(other.reverse, reverse) &&
            const DeepCollectionEquality().equals(other.enabled, enabled) &&
            const DeepCollectionEquality()
                .equals(other.brightness, brightness) &&
            const DeepCollectionEquality().equals(other.mirror, mirror));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(stop),
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(grouping),
      const DeepCollectionEquality().hash(spacing),
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(colors),
      const DeepCollectionEquality().hash(effect),
      const DeepCollectionEquality().hash(effectSpeed),
      const DeepCollectionEquality().hash(effectIntensity),
      const DeepCollectionEquality().hash(paletteId),
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(reverse),
      const DeepCollectionEquality().hash(enabled),
      const DeepCollectionEquality().hash(brightness),
      const DeepCollectionEquality().hash(mirror));

  @JsonKey(ignore: true)
  @override
  _$SegmentCopyWith<_Segment> get copyWith =>
      __$SegmentCopyWithImpl<_Segment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SegmentToJson(this);
  }
}

abstract class _Segment implements Segment {
  const factory _Segment(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'start') int start,
      @JsonKey(name: 'stop') int stop,
      @JsonKey(name: 'len') int length,
      @JsonKey(name: 'grp') int grouping,
      @JsonKey(name: 'spc') int spacing,
      @JsonKey(name: 'of') int offset,
      @ColorConverter() @JsonKey(name: 'col') List<Color> colors,
      @JsonKey(name: 'fx') int effect,
      @JsonKey(name: 'sx') int effectSpeed,
      @JsonKey(name: 'ix') int effectIntensity,
      @JsonKey(name: 'pal') int paletteId,
      @JsonKey(name: 'sel') bool selected,
      @JsonKey(name: 'rev') bool reverse,
      @JsonKey(name: 'on') bool enabled,
      @JsonKey(name: 'bri') int brightness,
      @JsonKey(name: 'mi') bool mirror}) = _$_Segment;

  factory _Segment.fromJson(Map<String, dynamic> json) = _$_Segment.fromJson;

  @override // Zero-indexed ID of the segment. May be omitted, in that case the ID will
// be inferred from the order of the segment objects in the seg array. As
// such, not included in state response.
  @JsonKey(name: 'id')
  int get id;
  @override // 0 to info.maxseg -1
// LED the segment starts at.
  @JsonKey(name: 'start')
  int get start;
  @override // 0 to info.leds.count -1
// LED the segment stops at, not included in range. If stop is set to a
// lower or equal value than start (setting to 0 is recommended),
// the segment is invalidated and deleted.
  @JsonKey(name: 'stop')
  int get stop;
  @override // 0 to info.leds.count
// Length of the segment (stop - start). stop has preference,
// so if it is included, len is ignored.
  @JsonKey(name: 'len')
  int get length;
  @override // 0 to info.leds.count
// Grouping (how many consecutive LEDs of the same segment will be grouped
// to the same color)
  @JsonKey(name: 'grp')
  int get grouping;
  @override // 0 to 255
// Spacing (how many LEDs are turned off and skipped between each group)
  @JsonKey(name: 'spc')
  int get spacing;
  @override // 0 to 255
// Offset (how many LEDs to rotate the virtual start of the segments,
// available since 0.13.0)
  @JsonKey(name: 'of')
  int get offset;
  @override // -length+1 to length
// Array that has up to 3 color arrays as elements, the primary, secondary
// (background) and tertiary colors of the segment. Each color is an array
// of 3 or 4 bytes, which represent an RGB(W) color.
// ignore: lines_longer_than_80_chars
  @ColorConverter()
  @JsonKey(name: 'col')
  List<Color> get colors;
  @override // ID of the effect or ~ to increment, ~- to decrement, or r for random.
  @JsonKey(name: 'fx')
  int get effect;
  @override // 0 to info.fxcount -1
// Relative effect speed
  @JsonKey(name: 'sx')
  int get effectSpeed;
  @override // 0 to 255
// Effect intensity
  @JsonKey(name: 'ix')
  int get effectIntensity;
  @override // 0 to 255
// ID of the color palette or ~ to increment, ~- to decrement,
// or r for random.
  @JsonKey(name: 'pal')
  int get paletteId;
  @override // 0 to info.palcount -1
// true if the segment is selected. Selected segments will have their state
// (color/FX) updated by APIs that don't support segments (currently any
// API except this JSON API). If no segment is selected, the first segment
// (id:0) will behave as if selected. WLED will report the state of the
// first (lowest id) segment that is selected to APIs (UDP sync, HTTP,
// MQTT, Blynk...).
  @JsonKey(name: 'sel')
  bool get selected;
  @override // Flips the segment, causing animations to change direction.
  @JsonKey(name: 'rev')
  bool get reverse;
  @override // Turns on and off the individual segment. (available since 0.10.0)
  @JsonKey(name: 'on')
  bool get enabled;
  @override // Sets the individual segment brightness (available since 0.10.0)
  @JsonKey(name: 'bri')
  int get brightness;
  @override // 0 to 255
// Mirrors the segment (available since 0.10.2)
  @JsonKey(name: 'mi')
  bool get mirror;
  @override
  @JsonKey(ignore: true)
  _$SegmentCopyWith<_Segment> get copyWith =>
      throw _privateConstructorUsedError;
}
