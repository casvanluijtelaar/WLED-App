// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wled_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WledDevice _$$_WledDeviceFromJson(Map<String, dynamic> json) =>
    _$_WledDevice(
      state: DeviceState.fromJson(json['state'] as Map<String, dynamic>),
      info: DeviceInfo.fromJson(json['info'] as Map<String, dynamic>),
      effects:
          (json['effects'] as List<dynamic>).map((e) => e as String).toList(),
      palettes:
          (json['palettes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_WledDeviceToJson(_$_WledDevice instance) =>
    <String, dynamic>{
      'state': instance.state,
      'info': instance.info,
      'effects': instance.effects,
      'palettes': instance.palettes,
    };
