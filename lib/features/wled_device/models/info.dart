import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class DeviceInfo with _$DeviceInfo {
  const factory DeviceInfo({
    // Version name.
    @JsonKey(name: 'ver') required String version,
    // Build ID (YYMMDDB, B = daily build index).
    @JsonKey(name: 'vid') required int buildId,
    // Contains info about the LED setup.
    @JsonKey(name: 'leds') required LedsDeviceInfo leds,
    // If true, an UI with only a single button for toggling sync should toggle
    // receive+send, otherwise send only
    @JsonKey(name: 'str') required bool sendReceiveToggle,
    // Friendly name of the light. Intended for display in lists and titles.
    @JsonKey(name: 'name') required String name,
    // The UDP port for realtime packets and WLED broadcast.
    @JsonKey(name: 'udpport') required int udpPort,
    // If true, the software is currently receiving realtime data via UDP
    // or E1.31.
    @JsonKey(name: 'live') required bool live,
    // DeviceInfo about the realtime data source
    @JsonKey(name: 'lm') required String lm,
    // Realtime data source IP address
    @JsonKey(name: 'lip') required String lip,
    // Number of currently connected WebSockets clients. -1 indicates that
    // WS is unsupported in this build.
    @JsonKey(name: 'ws') required int websockets,
    // Number of effects included.
    @JsonKey(name: 'fxcount') required int effectsCount,
    // Number of palettes configured.
    @JsonKey(name: 'palcount') required int paletteCount,
    // DeviceInfo about current signal strength
    @JsonKey(name: 'wifi') required Wifi wifi,
    // DeviceInfo about the embedded LittleFS filesystem (since 0.11.0)
    @JsonKey(name: 'fs') required FileSystem fs,
    // Number of other WLED devices discovered on the network. -1 if Node
    // discovery disabled. (since 0.12.0)
    @JsonKey(name: 'ndc') required int numberOfDevicesOnNetwork,
    // Name of the platform.
    @JsonKey(name: 'arch') required String platformname,
    // Version of the underlying (Arduino core) SDK.
    @JsonKey(name: 'core') required String sdkVersion,
    // Version of LwIP. 1 or 2 on ESP8266, 0 (does not apply) on ESP32.
    // Deprecated, removal in 0.14.0
    @JsonKey(name: 'lwip') required int lwIpVersion,
    // Bytes of heap memory (RAM) currently available. Problematic if <10k.
    @JsonKey(name: 'freeheap') required int availableHeapMemory,
    // Time since the last boot/reset in seconds.
    @JsonKey(name: 'uptime') required int uptime,
    // The producer/vendor of the light. Always WLED for standard installations.
    @JsonKey(name: 'brand') required String vendorName,
    // The product name. Always FOSS for standard installations.
    @JsonKey(name: 'product') required String productName,
    // The hexadecimal hardware MAC address of the light, lowercase and without
    // colons.
    @JsonKey(name: 'mac') required String macAddress,
    // The IP address of this instance. Empty string if not connected.
    // (since 0.13.0)
    @JsonKey(name: 'ip') required String ipAddress,
  }) = _DeviceInfo;

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);
}

@freezed
class LedsDeviceInfo with _$LedsDeviceInfo {
  const factory LedsDeviceInfo({
    // Total LED count.
    @JsonKey(name: 'count') required int count,
    // Current frames per second. (available since 0.12.0)
    @JsonKey(name: 'fps') required int fps,
    // true if LEDs are 4-channel (RGBW).
    @JsonKey(name: 'rgbw') required bool isRgbw,
    // true if a white channel slider should be displayed.
    // (available since 0.10.0)
    @JsonKey(name: 'wv') required bool showWhiteChannelSlider,
    // Current LED power usage in milliamps as determined by the ABL. 0 if ABL
    // is disabled.
    @JsonKey(name: 'pwr') required int power,
    // Maximum power budget in milliamps for the ABL. 0 if ABL is disabled.
    @JsonKey(name: 'maxpwr') required int maxPower,
    // Maximum number of segments supported by this version.
    @JsonKey(name: 'maxseg') required int maxSegments,
  }) = _LedsDeviceInfo;

  factory LedsDeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$LedsDeviceInfoFromJson(json);
}

@freezed
class Wifi with _$Wifi {
  const factory Wifi({
    // The BSSID of the currently connected network.
    @JsonKey(name: 'bssid') required String bssid,
    // Relative signal quality of the current connection.
    @JsonKey(name: 'signal') required int signalStrength,
    // The current WiFi channel.
    @JsonKey(name: 'channel') required int channel,
  }) = _Wifi;

  factory Wifi.fromJson(Map<String, dynamic> json) => _$WifiFromJson(json);
}

@freezed
class FileSystem with _$FileSystem {
  const factory FileSystem({
    // Estimate of used filesystem space in kilobytes
    @JsonKey(name: 'u') required int spaceUsed,
    // Total filesystem size in kilobytes
    @JsonKey(name: 't') required int spaceTotal,
    // Unix timestamp for the last modification to the presets.json file.
    // Not accurate after boot or after using /edit
    @JsonKey(name: 'pmt') required int presetModificationTime,
  }) = _FileSystem;

  factory FileSystem.fromJson(Map<String, dynamic> json) =>
      _$FileSystemFromJson(json);
}
