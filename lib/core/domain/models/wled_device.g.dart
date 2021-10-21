// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wled_device.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceStatusAdapter extends TypeAdapter<DeviceStatus> {
  @override
  final int typeId = 0;

  @override
  DeviceStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DeviceStatus.functional;
      case 1:
        return DeviceStatus.unreachable;
      case 2:
        return DeviceStatus.error;
      default:
        return DeviceStatus.functional;
    }
  }

  @override
  void write(BinaryWriter writer, DeviceStatus obj) {
    switch (obj) {
      case DeviceStatus.functional:
        writer.writeByte(0);
        break;
      case DeviceStatus.unreachable:
        writer.writeByte(1);
        break;
      case DeviceStatus.error:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WledDevice _$$_WledDeviceFromJson(Map<String, dynamic> json) =>
    _$_WledDevice(
      address: json['address'] as String,
      name: json['name'] as String,
      status: _$enumDecodeNullable(_$DeviceStatusEnumMap, json['status']) ??
          DeviceStatus.functional,
      nameIsCustom: json['nameIsCustom'] as bool? ?? false,
      isSaved: json['isSaved'] as bool? ?? false,
      isEnabled: json['isEnabled'] as bool? ?? true,
      brightness: json['brightness'] as int? ?? 255,
      color: json['color'] == null
          ? ColorConverter.defaultColor
          : const ColorConverter().fromJson(json['color'] as int),
    );

Map<String, dynamic> _$$_WledDeviceToJson(_$_WledDevice instance) =>
    <String, dynamic>{
      'address': instance.address,
      'name': instance.name,
      'status': _$DeviceStatusEnumMap[instance.status],
      'nameIsCustom': instance.nameIsCustom,
      'isSaved': instance.isSaved,
      'isEnabled': instance.isEnabled,
      'brightness': instance.brightness,
      'color': const ColorConverter().toJson(instance.color),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$DeviceStatusEnumMap = {
  DeviceStatus.functional: 'functional',
  DeviceStatus.unreachable: 'unreachable',
  DeviceStatus.error: 'error',
};
