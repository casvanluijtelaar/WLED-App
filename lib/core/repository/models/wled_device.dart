import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'package:wled/core/core.dart';

part 'wled_device.freezed.dart';
part 'wled_device.g.dart';

@HiveType(typeId: 0)
enum DeviceStatus {
  @HiveField(0)
  functional,
  @HiveField(1)
  unreachable,
  @HiveField(2)
  error,
}

@freezed
@immutable
class WledDevice with _$WledDevice {
  @ColorConverter()
  @HiveType(typeId: 1)
  const factory WledDevice({
    // device IP (can also be hostname if applicable)
    @HiveField(0) required String address,
    // device display name ("Server Description")
    @HiveField(1) required String name,
    // Current connection status
    @HiveField(2) @Default(DeviceStatus.functional) DeviceStatus status,
    // If the light name is custom, the name returned
    // by the API response will be ignored
    @HiveField(3) @Default(false) bool nameIsCustom,
    // if the wled device is saved to the local device
    @HiveField(4) @Default(false) bool isSaved,
    // Disabled devices don't get polled or show up in the list
    @HiveField(5) @Default(true) bool isEnabled,
    // There are two vars for brightness to discern
    // API responses from slider updates
    @HiveField(6) @Default(255) int brightness,
    // the currently active device color
    @HiveField(7) @Default(ColorConverter.defaultColor) @JsonKey() Color color,
  }) = _WledDevice;

  factory WledDevice.fromJson(Map<String, dynamic> json) =>
      _$WledDeviceFromJson(json);
}

class WledDeviceAdapter extends TypeAdapter<WledDevice> {
  @override
  final typeId = 1;

  @override
  WledDevice read(BinaryReader reader) {
    return WledDevice.fromJson(Map<String, dynamic>.from(reader.read() as Map));
  }

  @override
  void write(BinaryWriter writer, WledDevice obj) {
    writer.write(obj.toJson());
  }
}
