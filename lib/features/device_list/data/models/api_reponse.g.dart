// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponse _$$_ApiResponseFromJson(Map<String, dynamic> json) =>
    _$_ApiResponse(
      brightness: (json['brightness'] as num).toDouble(),
      isOn: json['isOn'] as bool,
      color: const ColorConverter().fromJson(json['color'] as int),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ApiResponseToJson(_$_ApiResponse instance) =>
    <String, dynamic>{
      'brightness': instance.brightness,
      'isOn': instance.isOn,
      'color': const ColorConverter().toJson(instance.color),
      'name': instance.name,
    };
