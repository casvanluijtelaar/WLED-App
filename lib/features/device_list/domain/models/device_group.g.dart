// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceGroup _$$_DeviceGroupFromJson(Map<String, dynamic> json) =>
    _$_DeviceGroup(
      name: json['name'] as String? ?? '',
      devices: (json['devices'] as List<dynamic>?)
              ?.map((e) => WledDevice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_DeviceGroupToJson(_$_DeviceGroup instance) =>
    <String, dynamic>{
      'name': instance.name,
      'devices': instance.devices,
    };
