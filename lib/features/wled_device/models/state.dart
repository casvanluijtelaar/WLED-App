import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wled/features/wled_device/wled_device.dart';

part 'state.freezed.dart';
part 'state.g.dart';

@freezed
class DeviceState with _$DeviceState {
  const factory DeviceState({
    // On/Off state of the light
    @Default(false) @JsonKey(name: 'on') bool isEnabled, 
    // Brightness of the light. If on is false, contains last brightness when 
    // light was on (aka brightness when on is set to true. Setting bri to 0 is 
    // supported but it is recommended to use the range 1-255 and use on: false 
    // to turn off. The state response will never havethe value 0 for bri.
    @Default(0) @JsonKey(name: 'bri') int brightness, // 0-255
    // Duration of the crossfade between different colors/brightness levels. 
    // One unit is 100ms, so a value of 4 results in atransition of 400ms.
    @Default(0) @JsonKey(name: 'transition') int transition,
    // Similar to transition, but applies to just the current API call. 
    // Not included in state response.
    @Default(0) @JsonKey(name: 'tt') int tt, // 0 - 255
    // ID of currently set preset.
    @Default(-1) @JsonKey(name: 'ps') int presetId, // -1 - 65535
    // Save current light config to specified preset slot. Not included 
    // in state response.
    @Default(0) @JsonKey(name: 'psave') int presetSaveSlot, // 1 - 16
    // ID of currently set playlist. For now, this sets the preset cycle 
    // feature, -1 is off and 0 is on.
    @Default(0) @JsonKey(name: 'pl') int playlist, // -1 - 0
    @Default(Nightlight()) @JsonKey(name: 'nl') Nightlight nightlight,
    @Default(Udpn()) @JsonKey(name: 'udpn') Udpn udpn,
     // If set to true in a JSON POST command, the response will contain the 
     // full JSON state object. Not included in state response
    @Default(false) @JsonKey(name: 'v') bool verbose,
    // If set to true, device will reboot immediately. 
    // Not included in state response.
    @Default(false) @JsonKey(name: 'rb') bool reboot,
    // Live data override. 0 is off, 1 is override until live data ends, 
    // 2 is override until ESP reboot (available since 0.10.0)
    @Default(0) @JsonKey(name: 'lor') int liveoverride, // 0 - 2
    // Set module time to unix timestamp. Not included in state response.
    @Default(0) @JsonKey(name: 'time') int time, // uint32
    // Main Segment, 0 to info.leds.maxseg-1
    @Default(0) @JsonKey(name: 'mainseg') int mainSegment, 
    // Segments are individual parts of the LED strip. In 0.9.0 this will 
    // enables running different effects on differentparts of the strip.
    @Default(<Segment>[]) @JsonKey(name: 'seg') List<Segment> segments, 
  }) = _DeviceState;

  factory DeviceState.fromJson(Map<String, dynamic> json) =>
      _$DeviceStateFromJson(json);
}


@freezed
class Nightlight with _$Nightlight {
  const factory Nightlight({
    // Nightlight currently active
    @Default(false) @JsonKey(name: 'on') bool isEnabled, // true - false
    // Duration of nightlight in minutes
    @Default(1) @JsonKey(name: 'dur') int duration, // 1 - 255\
    // Nightlight mode (0: instant, 1: fade, 2: color fade, 3: sunrise) 
    // (available since 0.10.2)
    @Default(0) @JsonKey(name: 'mode') int mode, // 0 - 3
    // Target brightness of nightlight feature
    @Default(0) @JsonKey(name: 'tbri') int targetBrightness, // 0 - 255
    // Remaining nightlight duration in seconds, -1 if not active. 
    // Only in state response, can not be set.
    @Default(-1) @JsonKey(name: 'rem', ) int timeRemaining, // -1 - 15300

  }) = _Nightlight;

  factory Nightlight.fromJson(Map<String, dynamic> json) =>
      _$NightlightFromJson(json);
}

@freezed
class Udpn with _$Udpn {
  const factory Udpn({
    // Send WLED broadcast (UDP sync) packet on state change
    @Default(false) @JsonKey(name: 'send') bool send, // true - false
    // Receive broadcast packets
    @Default(false) @JsonKey(name: 'recv') bool receive, // true - false
    // Don't send a broadcast packet (applies to just the current API call). 
    // Not included in state response.
    @Default(false) @JsonKey(name: 'nn') bool nn, // true - false   
  }) = _Udpn;

  factory Udpn.fromJson(Map<String, dynamic> json) =>
      _$UdpnFromJson(json);
}



@freezed
class Segment with _$Segment {


  const factory Segment({
    // Zero-indexed ID of the segment. May be omitted, in that case the ID will 
    // be inferred from the order of the segment objects in the seg array. As 
    // such, not included in state response.
    @Default(0) @JsonKey(name: 'id') int id, // 0 to info.maxseg -1
    // LED the segment starts at.
    @Default(0) @JsonKey(name: 'start') int start, // 0 to info.leds.count -1
    // LED the segment stops at, not included in range. If stop is set to a 
    // lower or equal value than start (setting to 0 is recommended), 
    // the segment is invalidated and deleted.
    @Default(0) @JsonKey(name: 'stop') int stop, // 0 to info.leds.count
    // Length of the segment (stop - start). stop has preference, 
    // so if it is included, len is ignored.
    @Default(0) @JsonKey(name: 'len') int length, // 0 to info.leds.count
    // Grouping (how many consecutive LEDs of the same segment will be grouped 
    // to the same color)
    @Default(0) @JsonKey(name: 'grp') int grouping, // 0 to 255
    // Spacing (how many LEDs are turned off and skipped between each group)
    @Default(0) @JsonKey(name: 'spc') int spacing, // 0 to 255
    // Offset (how many LEDs to rotate the virtual start of the segments, 
    // available since 0.13.0)
    @Default(0) @JsonKey(name: 'of') int offset, // -length+1 to length
    // Array that has up to 3 color arrays as elements, the primary, secondary 
    // (background) and tertiary colors of the segment. Each color is an array 
    // of 3 or 4 bytes, which represent an RGB(W) color.
    // ignore: lines_longer_than_80_chars
    @Default(<Color>[]) @ColorConverter() @JsonKey(name: 'col') List<Color> colors, 
    // ID of the effect or ~ to increment, ~- to decrement, or r for random.
    @Default(0) @JsonKey(name: 'fx') int effect, // 0 to info.fxcount -1
    // Relative effect speed
    @Default(100) @JsonKey(name: 'sx') int effectSpeed, // 0 to 255
    // Effect intensity
    @Default(100) @JsonKey(name: 'ix') int effectIntensity, // 0 to 255
    // ID of the color palette or ~ to increment, ~- to decrement, 
    // or r for random.
    @Default(0) @JsonKey(name: 'pal') int paletteId, // 0 to info.palcount -1
    // true if the segment is selected. Selected segments will have their state 
    // (color/FX) updated by APIs that don't support segments (currently any 
    // API except this JSON API). If no segment is selected, the first segment 
    // (id:0) will behave as if selected. WLED will report the state of the 
    // first (lowest id) segment that is selected to APIs (UDP sync, HTTP, 
    // MQTT, Blynk...).
    @Default(false) @JsonKey(name: 'sel') bool selected,
    // Flips the segment, causing animations to change direction.
    @Default(false) @JsonKey(name: 'rev') bool reverse,
    // Turns on and off the individual segment. (available since 0.10.0)
    @Default(false) @JsonKey(name: 'on') bool enabled,
    // Sets the individual segment brightness (available since 0.10.0)
    @Default(0) @JsonKey(name: 'bri') int brightness, // 0 to 255
    // Mirrors the segment (available since 0.10.2)
    @Default(false) @JsonKey(name: 'mi') bool mirror, // 0 to 255
  }) = _Segment;

  factory Segment.fromJson(Map<String, dynamic> json) =>
      _$SegmentFromJson(json);
}
