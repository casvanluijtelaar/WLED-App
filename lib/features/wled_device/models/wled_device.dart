import 'package:freezed_annotation/freezed_annotation.dart';

import 'info.dart';
import 'state.dart';

part 'wled_device.freezed.dart';
part 'wled_device.g.dart';

enum DeviceStatus {
  unreachable,
  error,
  functional,
}

@freezed
class WledDevice with _$WledDevice {
  const factory WledDevice({
    // state contains the current state of the light. All values may be
    // modified by the client
    @JsonKey(name: 'state') required DeviceState state,
    // info contains general information about the device. No value can
    // be modified using this API
    @JsonKey(name: 'info') required DeviceInfo info,
    // effects contains an array of the effect mode names
    @JsonKey(name: 'effects') required List<String> effects,
    // palettes contains an array of the palette names
    @JsonKey(name: 'palettes') required List<String> palettes,
    // Whether this device is saved to the local system
    @Default(false) @JsonKey(ignore: true) bool isSaved,
    // current status of the functionality of this device
    @Default(DeviceStatus.unreachable)
    @JsonKey(ignore: true)
        DeviceStatus status,
  }) = _WledDevice;

  factory WledDevice.fromJson(Map<String, dynamic> json) =>
      _$WledDeviceFromJson(json);
}
