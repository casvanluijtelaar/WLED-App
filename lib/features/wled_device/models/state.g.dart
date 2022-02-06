// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceState _$$_DeviceStateFromJson(Map<String, dynamic> json) =>
    _$_DeviceState(
      isEnabled: json['on'] as bool? ?? false,
      brightness: json['bri'] as int? ?? 0,
      transition: json['transition'] as int? ?? 0,
      tt: json['tt'] as int? ?? 0,
      presetId: json['ps'] as int? ?? -1,
      presetSaveSlot: json['psave'] as int? ?? 0,
      playlist: json['pl'] as int? ?? 0,
      nightlight: json['nl'] == null
          ? const Nightlight()
          : Nightlight.fromJson(json['nl'] as Map<String, dynamic>),
      udpn: json['udpn'] == null
          ? const Udpn()
          : Udpn.fromJson(json['udpn'] as Map<String, dynamic>),
      verbose: json['v'] as bool? ?? false,
      reboot: json['rb'] as bool? ?? false,
      liveoverride: json['lor'] as int? ?? 0,
      time: json['time'] as int? ?? 0,
      mainSegment: json['mainseg'] as int? ?? 0,
      segments: (json['seg'] as List<dynamic>?)
              ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Segment>[],
    );

Map<String, dynamic> _$$_DeviceStateToJson(_$_DeviceState instance) =>
    <String, dynamic>{
      'on': instance.isEnabled,
      'bri': instance.brightness,
      'transition': instance.transition,
      'tt': instance.tt,
      'ps': instance.presetId,
      'psave': instance.presetSaveSlot,
      'pl': instance.playlist,
      'nl': instance.nightlight,
      'udpn': instance.udpn,
      'v': instance.verbose,
      'rb': instance.reboot,
      'lor': instance.liveoverride,
      'time': instance.time,
      'mainseg': instance.mainSegment,
      'seg': instance.segments,
    };

_$_Nightlight _$$_NightlightFromJson(Map<String, dynamic> json) =>
    _$_Nightlight(
      isEnabled: json['on'] as bool? ?? false,
      duration: json['dur'] as int? ?? 1,
      mode: json['mode'] as int? ?? 0,
      targetBrightness: json['tbri'] as int? ?? 0,
      timeRemaining: json['rem'] as int? ?? -1,
    );

Map<String, dynamic> _$$_NightlightToJson(_$_Nightlight instance) =>
    <String, dynamic>{
      'on': instance.isEnabled,
      'dur': instance.duration,
      'mode': instance.mode,
      'tbri': instance.targetBrightness,
      'rem': instance.timeRemaining,
    };

_$_Udpn _$$_UdpnFromJson(Map<String, dynamic> json) => _$_Udpn(
      send: json['send'] as bool? ?? false,
      receive: json['recv'] as bool? ?? false,
      nn: json['nn'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UdpnToJson(_$_Udpn instance) => <String, dynamic>{
      'send': instance.send,
      'recv': instance.receive,
      'nn': instance.nn,
    };

_$_Segment _$$_SegmentFromJson(Map<String, dynamic> json) => _$_Segment(
      id: json['id'] as int? ?? 0,
      start: json['start'] as int? ?? 0,
      stop: json['stop'] as int? ?? 0,
      length: json['len'] as int? ?? 0,
      grouping: json['grp'] as int? ?? 0,
      spacing: json['spc'] as int? ?? 0,
      offset: json['of'] as int? ?? 0,
      colors: json['col'] == null
          ? const <Color>[]
          : const ColorConverter().fromJson(json['col'] as List<List<int>>),
      effect: json['fx'] as int? ?? 0,
      effectSpeed: json['sx'] as int? ?? 100,
      effectIntensity: json['ix'] as int? ?? 100,
      paletteId: json['pal'] as int? ?? 0,
      selected: json['sel'] as bool? ?? false,
      reverse: json['rev'] as bool? ?? false,
      enabled: json['on'] as bool? ?? false,
      brightness: json['bri'] as int? ?? 0,
      mirror: json['mi'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SegmentToJson(_$_Segment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': instance.start,
      'stop': instance.stop,
      'len': instance.length,
      'grp': instance.grouping,
      'spc': instance.spacing,
      'of': instance.offset,
      'col': const ColorConverter().toJson(instance.colors),
      'fx': instance.effect,
      'sx': instance.effectSpeed,
      'ix': instance.effectIntensity,
      'pal': instance.paletteId,
      'sel': instance.selected,
      'rev': instance.reverse,
      'on': instance.enabled,
      'bri': instance.brightness,
      'mi': instance.mirror,
    };
