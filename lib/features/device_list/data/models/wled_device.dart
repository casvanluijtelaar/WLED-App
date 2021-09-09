import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'wled_device.freezed.dart';

enum DeviceStatus { standard, unreachable, error }

@freezed
class WledDevice with _$WledDevice {
  const factory WledDevice({
    // device IP (can also be hostname if applicable)
    required String networkAddress,
    // device display name ("Server Description")
    required String name,
    // Current connection status
    @Default(DeviceStatus.standard) DeviceStatus status,
    // If the light name is custom, the name returned
    // by the API response will be ignored
    @Default(false) bool nameIsCustom,
    // Disabled devices don't get polled or show up in the list
    @Default(true) bool isEnabled,
    // There are two vars for brightness to discern
    // API responses from slider updates
    @Default(0.9) double brightness,
    // the currently active device color
    @Default(Color.fromRGBO(255, 255, 255, 0.2)) Color color,
  }) = _WledDevice;
}
