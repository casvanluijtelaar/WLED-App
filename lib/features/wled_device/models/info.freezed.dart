// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) {
  return _DeviceInfo.fromJson(json);
}

/// @nodoc
class _$DeviceInfoTearOff {
  const _$DeviceInfoTearOff();

  _DeviceInfo call(
      {@JsonKey(name: 'ver') required String version,
      @JsonKey(name: 'vid') required int buildId,
      @JsonKey(name: 'leds') required LedsDeviceInfo leds,
      @JsonKey(name: 'str') required bool sendReceiveToggle,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'udpport') required int udpPort,
      @JsonKey(name: 'live') required bool live,
      @JsonKey(name: 'lm') required String lm,
      @JsonKey(name: 'lip') required String lip,
      @JsonKey(name: 'ws') required int websockets,
      @JsonKey(name: 'fxcount') required int effectsCount,
      @JsonKey(name: 'palcount') required int paletteCount,
      @JsonKey(name: 'wifi') required Wifi wifi,
      @JsonKey(name: 'fs') required FileSystem fs,
      @JsonKey(name: 'ndc') required int numberOfDevicesOnNetwork,
      @JsonKey(name: 'arch') required String platformname,
      @JsonKey(name: 'core') required String sdkVersion,
      @JsonKey(name: 'lwip') required int lwIpVersion,
      @JsonKey(name: 'freeheap') required int availableHeapMemory,
      @JsonKey(name: 'uptime') required int uptime,
      @JsonKey(name: 'brand') required String vendorName,
      @JsonKey(name: 'product') required String productName,
      @JsonKey(name: 'mac') required String macAddress,
      @JsonKey(name: 'ip') required String ipAddress}) {
    return _DeviceInfo(
      version: version,
      buildId: buildId,
      leds: leds,
      sendReceiveToggle: sendReceiveToggle,
      name: name,
      udpPort: udpPort,
      live: live,
      lm: lm,
      lip: lip,
      websockets: websockets,
      effectsCount: effectsCount,
      paletteCount: paletteCount,
      wifi: wifi,
      fs: fs,
      numberOfDevicesOnNetwork: numberOfDevicesOnNetwork,
      platformname: platformname,
      sdkVersion: sdkVersion,
      lwIpVersion: lwIpVersion,
      availableHeapMemory: availableHeapMemory,
      uptime: uptime,
      vendorName: vendorName,
      productName: productName,
      macAddress: macAddress,
      ipAddress: ipAddress,
    );
  }

  DeviceInfo fromJson(Map<String, Object?> json) {
    return DeviceInfo.fromJson(json);
  }
}

/// @nodoc
const $DeviceInfo = _$DeviceInfoTearOff();

/// @nodoc
mixin _$DeviceInfo {
// Version name.
  @JsonKey(name: 'ver')
  String get version =>
      throw _privateConstructorUsedError; // Build ID (YYMMDDB, B = daily build index).
  @JsonKey(name: 'vid')
  int get buildId =>
      throw _privateConstructorUsedError; // Contains info about the LED setup.
  @JsonKey(name: 'leds')
  LedsDeviceInfo get leds =>
      throw _privateConstructorUsedError; // If true, an UI with only a single button for toggling sync should toggle
// receive+send, otherwise send only
  @JsonKey(name: 'str')
  bool get sendReceiveToggle =>
      throw _privateConstructorUsedError; // Friendly name of the light. Intended for display in lists and titles.
  @JsonKey(name: 'name')
  String get name =>
      throw _privateConstructorUsedError; // The UDP port for realtime packets and WLED broadcast.
  @JsonKey(name: 'udpport')
  int get udpPort =>
      throw _privateConstructorUsedError; // If true, the software is currently receiving realtime data via UDP
// or E1.31.
  @JsonKey(name: 'live')
  bool get live =>
      throw _privateConstructorUsedError; // DeviceInfo about the realtime data source
  @JsonKey(name: 'lm')
  String get lm =>
      throw _privateConstructorUsedError; // Realtime data source IP address
  @JsonKey(name: 'lip')
  String get lip =>
      throw _privateConstructorUsedError; // Number of currently connected WebSockets clients. -1 indicates that
// WS is unsupported in this build.
  @JsonKey(name: 'ws')
  int get websockets =>
      throw _privateConstructorUsedError; // Number of effects included.
  @JsonKey(name: 'fxcount')
  int get effectsCount =>
      throw _privateConstructorUsedError; // Number of palettes configured.
  @JsonKey(name: 'palcount')
  int get paletteCount =>
      throw _privateConstructorUsedError; // DeviceInfo about current signal strength
  @JsonKey(name: 'wifi')
  Wifi get wifi =>
      throw _privateConstructorUsedError; // DeviceInfo about the embedded LittleFS filesystem (since 0.11.0)
  @JsonKey(name: 'fs')
  FileSystem get fs =>
      throw _privateConstructorUsedError; // Number of other WLED devices discovered on the network. -1 if Node
// discovery disabled. (since 0.12.0)
  @JsonKey(name: 'ndc')
  int get numberOfDevicesOnNetwork =>
      throw _privateConstructorUsedError; // Name of the platform.
  @JsonKey(name: 'arch')
  String get platformname =>
      throw _privateConstructorUsedError; // Version of the underlying (Arduino core) SDK.
  @JsonKey(name: 'core')
  String get sdkVersion =>
      throw _privateConstructorUsedError; // Version of LwIP. 1 or 2 on ESP8266, 0 (does not apply) on ESP32.
// Deprecated, removal in 0.14.0
  @JsonKey(name: 'lwip')
  int get lwIpVersion =>
      throw _privateConstructorUsedError; // Bytes of heap memory (RAM) currently available. Problematic if <10k.
  @JsonKey(name: 'freeheap')
  int get availableHeapMemory =>
      throw _privateConstructorUsedError; // Time since the last boot/reset in seconds.
  @JsonKey(name: 'uptime')
  int get uptime =>
      throw _privateConstructorUsedError; // The producer/vendor of the light. Always WLED for standard installations.
  @JsonKey(name: 'brand')
  String get vendorName =>
      throw _privateConstructorUsedError; // The product name. Always FOSS for standard installations.
  @JsonKey(name: 'product')
  String get productName =>
      throw _privateConstructorUsedError; // The hexadecimal hardware MAC address of the light, lowercase and without
// colons.
  @JsonKey(name: 'mac')
  String get macAddress =>
      throw _privateConstructorUsedError; // The IP address of this instance. Empty string if not connected.
// (since 0.13.0)
  @JsonKey(name: 'ip')
  String get ipAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceInfoCopyWith<DeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoCopyWith(
          DeviceInfo value, $Res Function(DeviceInfo) then) =
      _$DeviceInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ver') String version,
      @JsonKey(name: 'vid') int buildId,
      @JsonKey(name: 'leds') LedsDeviceInfo leds,
      @JsonKey(name: 'str') bool sendReceiveToggle,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'udpport') int udpPort,
      @JsonKey(name: 'live') bool live,
      @JsonKey(name: 'lm') String lm,
      @JsonKey(name: 'lip') String lip,
      @JsonKey(name: 'ws') int websockets,
      @JsonKey(name: 'fxcount') int effectsCount,
      @JsonKey(name: 'palcount') int paletteCount,
      @JsonKey(name: 'wifi') Wifi wifi,
      @JsonKey(name: 'fs') FileSystem fs,
      @JsonKey(name: 'ndc') int numberOfDevicesOnNetwork,
      @JsonKey(name: 'arch') String platformname,
      @JsonKey(name: 'core') String sdkVersion,
      @JsonKey(name: 'lwip') int lwIpVersion,
      @JsonKey(name: 'freeheap') int availableHeapMemory,
      @JsonKey(name: 'uptime') int uptime,
      @JsonKey(name: 'brand') String vendorName,
      @JsonKey(name: 'product') String productName,
      @JsonKey(name: 'mac') String macAddress,
      @JsonKey(name: 'ip') String ipAddress});

  $LedsDeviceInfoCopyWith<$Res> get leds;
  $WifiCopyWith<$Res> get wifi;
  $FileSystemCopyWith<$Res> get fs;
}

/// @nodoc
class _$DeviceInfoCopyWithImpl<$Res> implements $DeviceInfoCopyWith<$Res> {
  _$DeviceInfoCopyWithImpl(this._value, this._then);

  final DeviceInfo _value;
  // ignore: unused_field
  final $Res Function(DeviceInfo) _then;

  @override
  $Res call({
    Object? version = freezed,
    Object? buildId = freezed,
    Object? leds = freezed,
    Object? sendReceiveToggle = freezed,
    Object? name = freezed,
    Object? udpPort = freezed,
    Object? live = freezed,
    Object? lm = freezed,
    Object? lip = freezed,
    Object? websockets = freezed,
    Object? effectsCount = freezed,
    Object? paletteCount = freezed,
    Object? wifi = freezed,
    Object? fs = freezed,
    Object? numberOfDevicesOnNetwork = freezed,
    Object? platformname = freezed,
    Object? sdkVersion = freezed,
    Object? lwIpVersion = freezed,
    Object? availableHeapMemory = freezed,
    Object? uptime = freezed,
    Object? vendorName = freezed,
    Object? productName = freezed,
    Object? macAddress = freezed,
    Object? ipAddress = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildId: buildId == freezed
          ? _value.buildId
          : buildId // ignore: cast_nullable_to_non_nullable
              as int,
      leds: leds == freezed
          ? _value.leds
          : leds // ignore: cast_nullable_to_non_nullable
              as LedsDeviceInfo,
      sendReceiveToggle: sendReceiveToggle == freezed
          ? _value.sendReceiveToggle
          : sendReceiveToggle // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      udpPort: udpPort == freezed
          ? _value.udpPort
          : udpPort // ignore: cast_nullable_to_non_nullable
              as int,
      live: live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as bool,
      lm: lm == freezed
          ? _value.lm
          : lm // ignore: cast_nullable_to_non_nullable
              as String,
      lip: lip == freezed
          ? _value.lip
          : lip // ignore: cast_nullable_to_non_nullable
              as String,
      websockets: websockets == freezed
          ? _value.websockets
          : websockets // ignore: cast_nullable_to_non_nullable
              as int,
      effectsCount: effectsCount == freezed
          ? _value.effectsCount
          : effectsCount // ignore: cast_nullable_to_non_nullable
              as int,
      paletteCount: paletteCount == freezed
          ? _value.paletteCount
          : paletteCount // ignore: cast_nullable_to_non_nullable
              as int,
      wifi: wifi == freezed
          ? _value.wifi
          : wifi // ignore: cast_nullable_to_non_nullable
              as Wifi,
      fs: fs == freezed
          ? _value.fs
          : fs // ignore: cast_nullable_to_non_nullable
              as FileSystem,
      numberOfDevicesOnNetwork: numberOfDevicesOnNetwork == freezed
          ? _value.numberOfDevicesOnNetwork
          : numberOfDevicesOnNetwork // ignore: cast_nullable_to_non_nullable
              as int,
      platformname: platformname == freezed
          ? _value.platformname
          : platformname // ignore: cast_nullable_to_non_nullable
              as String,
      sdkVersion: sdkVersion == freezed
          ? _value.sdkVersion
          : sdkVersion // ignore: cast_nullable_to_non_nullable
              as String,
      lwIpVersion: lwIpVersion == freezed
          ? _value.lwIpVersion
          : lwIpVersion // ignore: cast_nullable_to_non_nullable
              as int,
      availableHeapMemory: availableHeapMemory == freezed
          ? _value.availableHeapMemory
          : availableHeapMemory // ignore: cast_nullable_to_non_nullable
              as int,
      uptime: uptime == freezed
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: vendorName == freezed
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      macAddress: macAddress == freezed
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: ipAddress == freezed
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $LedsDeviceInfoCopyWith<$Res> get leds {
    return $LedsDeviceInfoCopyWith<$Res>(_value.leds, (value) {
      return _then(_value.copyWith(leds: value));
    });
  }

  @override
  $WifiCopyWith<$Res> get wifi {
    return $WifiCopyWith<$Res>(_value.wifi, (value) {
      return _then(_value.copyWith(wifi: value));
    });
  }

  @override
  $FileSystemCopyWith<$Res> get fs {
    return $FileSystemCopyWith<$Res>(_value.fs, (value) {
      return _then(_value.copyWith(fs: value));
    });
  }
}

/// @nodoc
abstract class _$DeviceInfoCopyWith<$Res> implements $DeviceInfoCopyWith<$Res> {
  factory _$DeviceInfoCopyWith(
          _DeviceInfo value, $Res Function(_DeviceInfo) then) =
      __$DeviceInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ver') String version,
      @JsonKey(name: 'vid') int buildId,
      @JsonKey(name: 'leds') LedsDeviceInfo leds,
      @JsonKey(name: 'str') bool sendReceiveToggle,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'udpport') int udpPort,
      @JsonKey(name: 'live') bool live,
      @JsonKey(name: 'lm') String lm,
      @JsonKey(name: 'lip') String lip,
      @JsonKey(name: 'ws') int websockets,
      @JsonKey(name: 'fxcount') int effectsCount,
      @JsonKey(name: 'palcount') int paletteCount,
      @JsonKey(name: 'wifi') Wifi wifi,
      @JsonKey(name: 'fs') FileSystem fs,
      @JsonKey(name: 'ndc') int numberOfDevicesOnNetwork,
      @JsonKey(name: 'arch') String platformname,
      @JsonKey(name: 'core') String sdkVersion,
      @JsonKey(name: 'lwip') int lwIpVersion,
      @JsonKey(name: 'freeheap') int availableHeapMemory,
      @JsonKey(name: 'uptime') int uptime,
      @JsonKey(name: 'brand') String vendorName,
      @JsonKey(name: 'product') String productName,
      @JsonKey(name: 'mac') String macAddress,
      @JsonKey(name: 'ip') String ipAddress});

  @override
  $LedsDeviceInfoCopyWith<$Res> get leds;
  @override
  $WifiCopyWith<$Res> get wifi;
  @override
  $FileSystemCopyWith<$Res> get fs;
}

/// @nodoc
class __$DeviceInfoCopyWithImpl<$Res> extends _$DeviceInfoCopyWithImpl<$Res>
    implements _$DeviceInfoCopyWith<$Res> {
  __$DeviceInfoCopyWithImpl(
      _DeviceInfo _value, $Res Function(_DeviceInfo) _then)
      : super(_value, (v) => _then(v as _DeviceInfo));

  @override
  _DeviceInfo get _value => super._value as _DeviceInfo;

  @override
  $Res call({
    Object? version = freezed,
    Object? buildId = freezed,
    Object? leds = freezed,
    Object? sendReceiveToggle = freezed,
    Object? name = freezed,
    Object? udpPort = freezed,
    Object? live = freezed,
    Object? lm = freezed,
    Object? lip = freezed,
    Object? websockets = freezed,
    Object? effectsCount = freezed,
    Object? paletteCount = freezed,
    Object? wifi = freezed,
    Object? fs = freezed,
    Object? numberOfDevicesOnNetwork = freezed,
    Object? platformname = freezed,
    Object? sdkVersion = freezed,
    Object? lwIpVersion = freezed,
    Object? availableHeapMemory = freezed,
    Object? uptime = freezed,
    Object? vendorName = freezed,
    Object? productName = freezed,
    Object? macAddress = freezed,
    Object? ipAddress = freezed,
  }) {
    return _then(_DeviceInfo(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildId: buildId == freezed
          ? _value.buildId
          : buildId // ignore: cast_nullable_to_non_nullable
              as int,
      leds: leds == freezed
          ? _value.leds
          : leds // ignore: cast_nullable_to_non_nullable
              as LedsDeviceInfo,
      sendReceiveToggle: sendReceiveToggle == freezed
          ? _value.sendReceiveToggle
          : sendReceiveToggle // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      udpPort: udpPort == freezed
          ? _value.udpPort
          : udpPort // ignore: cast_nullable_to_non_nullable
              as int,
      live: live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as bool,
      lm: lm == freezed
          ? _value.lm
          : lm // ignore: cast_nullable_to_non_nullable
              as String,
      lip: lip == freezed
          ? _value.lip
          : lip // ignore: cast_nullable_to_non_nullable
              as String,
      websockets: websockets == freezed
          ? _value.websockets
          : websockets // ignore: cast_nullable_to_non_nullable
              as int,
      effectsCount: effectsCount == freezed
          ? _value.effectsCount
          : effectsCount // ignore: cast_nullable_to_non_nullable
              as int,
      paletteCount: paletteCount == freezed
          ? _value.paletteCount
          : paletteCount // ignore: cast_nullable_to_non_nullable
              as int,
      wifi: wifi == freezed
          ? _value.wifi
          : wifi // ignore: cast_nullable_to_non_nullable
              as Wifi,
      fs: fs == freezed
          ? _value.fs
          : fs // ignore: cast_nullable_to_non_nullable
              as FileSystem,
      numberOfDevicesOnNetwork: numberOfDevicesOnNetwork == freezed
          ? _value.numberOfDevicesOnNetwork
          : numberOfDevicesOnNetwork // ignore: cast_nullable_to_non_nullable
              as int,
      platformname: platformname == freezed
          ? _value.platformname
          : platformname // ignore: cast_nullable_to_non_nullable
              as String,
      sdkVersion: sdkVersion == freezed
          ? _value.sdkVersion
          : sdkVersion // ignore: cast_nullable_to_non_nullable
              as String,
      lwIpVersion: lwIpVersion == freezed
          ? _value.lwIpVersion
          : lwIpVersion // ignore: cast_nullable_to_non_nullable
              as int,
      availableHeapMemory: availableHeapMemory == freezed
          ? _value.availableHeapMemory
          : availableHeapMemory // ignore: cast_nullable_to_non_nullable
              as int,
      uptime: uptime == freezed
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: vendorName == freezed
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      macAddress: macAddress == freezed
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: ipAddress == freezed
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceInfo implements _DeviceInfo {
  const _$_DeviceInfo(
      {@JsonKey(name: 'ver') required this.version,
      @JsonKey(name: 'vid') required this.buildId,
      @JsonKey(name: 'leds') required this.leds,
      @JsonKey(name: 'str') required this.sendReceiveToggle,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'udpport') required this.udpPort,
      @JsonKey(name: 'live') required this.live,
      @JsonKey(name: 'lm') required this.lm,
      @JsonKey(name: 'lip') required this.lip,
      @JsonKey(name: 'ws') required this.websockets,
      @JsonKey(name: 'fxcount') required this.effectsCount,
      @JsonKey(name: 'palcount') required this.paletteCount,
      @JsonKey(name: 'wifi') required this.wifi,
      @JsonKey(name: 'fs') required this.fs,
      @JsonKey(name: 'ndc') required this.numberOfDevicesOnNetwork,
      @JsonKey(name: 'arch') required this.platformname,
      @JsonKey(name: 'core') required this.sdkVersion,
      @JsonKey(name: 'lwip') required this.lwIpVersion,
      @JsonKey(name: 'freeheap') required this.availableHeapMemory,
      @JsonKey(name: 'uptime') required this.uptime,
      @JsonKey(name: 'brand') required this.vendorName,
      @JsonKey(name: 'product') required this.productName,
      @JsonKey(name: 'mac') required this.macAddress,
      @JsonKey(name: 'ip') required this.ipAddress});

  factory _$_DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceInfoFromJson(json);

  @override // Version name.
  @JsonKey(name: 'ver')
  final String version;
  @override // Build ID (YYMMDDB, B = daily build index).
  @JsonKey(name: 'vid')
  final int buildId;
  @override // Contains info about the LED setup.
  @JsonKey(name: 'leds')
  final LedsDeviceInfo leds;
  @override // If true, an UI with only a single button for toggling sync should toggle
// receive+send, otherwise send only
  @JsonKey(name: 'str')
  final bool sendReceiveToggle;
  @override // Friendly name of the light. Intended for display in lists and titles.
  @JsonKey(name: 'name')
  final String name;
  @override // The UDP port for realtime packets and WLED broadcast.
  @JsonKey(name: 'udpport')
  final int udpPort;
  @override // If true, the software is currently receiving realtime data via UDP
// or E1.31.
  @JsonKey(name: 'live')
  final bool live;
  @override // DeviceInfo about the realtime data source
  @JsonKey(name: 'lm')
  final String lm;
  @override // Realtime data source IP address
  @JsonKey(name: 'lip')
  final String lip;
  @override // Number of currently connected WebSockets clients. -1 indicates that
// WS is unsupported in this build.
  @JsonKey(name: 'ws')
  final int websockets;
  @override // Number of effects included.
  @JsonKey(name: 'fxcount')
  final int effectsCount;
  @override // Number of palettes configured.
  @JsonKey(name: 'palcount')
  final int paletteCount;
  @override // DeviceInfo about current signal strength
  @JsonKey(name: 'wifi')
  final Wifi wifi;
  @override // DeviceInfo about the embedded LittleFS filesystem (since 0.11.0)
  @JsonKey(name: 'fs')
  final FileSystem fs;
  @override // Number of other WLED devices discovered on the network. -1 if Node
// discovery disabled. (since 0.12.0)
  @JsonKey(name: 'ndc')
  final int numberOfDevicesOnNetwork;
  @override // Name of the platform.
  @JsonKey(name: 'arch')
  final String platformname;
  @override // Version of the underlying (Arduino core) SDK.
  @JsonKey(name: 'core')
  final String sdkVersion;
  @override // Version of LwIP. 1 or 2 on ESP8266, 0 (does not apply) on ESP32.
// Deprecated, removal in 0.14.0
  @JsonKey(name: 'lwip')
  final int lwIpVersion;
  @override // Bytes of heap memory (RAM) currently available. Problematic if <10k.
  @JsonKey(name: 'freeheap')
  final int availableHeapMemory;
  @override // Time since the last boot/reset in seconds.
  @JsonKey(name: 'uptime')
  final int uptime;
  @override // The producer/vendor of the light. Always WLED for standard installations.
  @JsonKey(name: 'brand')
  final String vendorName;
  @override // The product name. Always FOSS for standard installations.
  @JsonKey(name: 'product')
  final String productName;
  @override // The hexadecimal hardware MAC address of the light, lowercase and without
// colons.
  @JsonKey(name: 'mac')
  final String macAddress;
  @override // The IP address of this instance. Empty string if not connected.
// (since 0.13.0)
  @JsonKey(name: 'ip')
  final String ipAddress;

  @override
  String toString() {
    return 'DeviceInfo(version: $version, buildId: $buildId, leds: $leds, sendReceiveToggle: $sendReceiveToggle, name: $name, udpPort: $udpPort, live: $live, lm: $lm, lip: $lip, websockets: $websockets, effectsCount: $effectsCount, paletteCount: $paletteCount, wifi: $wifi, fs: $fs, numberOfDevicesOnNetwork: $numberOfDevicesOnNetwork, platformname: $platformname, sdkVersion: $sdkVersion, lwIpVersion: $lwIpVersion, availableHeapMemory: $availableHeapMemory, uptime: $uptime, vendorName: $vendorName, productName: $productName, macAddress: $macAddress, ipAddress: $ipAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeviceInfo &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.buildId, buildId) &&
            const DeepCollectionEquality().equals(other.leds, leds) &&
            const DeepCollectionEquality()
                .equals(other.sendReceiveToggle, sendReceiveToggle) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.udpPort, udpPort) &&
            const DeepCollectionEquality().equals(other.live, live) &&
            const DeepCollectionEquality().equals(other.lm, lm) &&
            const DeepCollectionEquality().equals(other.lip, lip) &&
            const DeepCollectionEquality()
                .equals(other.websockets, websockets) &&
            const DeepCollectionEquality()
                .equals(other.effectsCount, effectsCount) &&
            const DeepCollectionEquality()
                .equals(other.paletteCount, paletteCount) &&
            const DeepCollectionEquality().equals(other.wifi, wifi) &&
            const DeepCollectionEquality().equals(other.fs, fs) &&
            const DeepCollectionEquality().equals(
                other.numberOfDevicesOnNetwork, numberOfDevicesOnNetwork) &&
            const DeepCollectionEquality()
                .equals(other.platformname, platformname) &&
            const DeepCollectionEquality()
                .equals(other.sdkVersion, sdkVersion) &&
            const DeepCollectionEquality()
                .equals(other.lwIpVersion, lwIpVersion) &&
            const DeepCollectionEquality()
                .equals(other.availableHeapMemory, availableHeapMemory) &&
            const DeepCollectionEquality().equals(other.uptime, uptime) &&
            const DeepCollectionEquality()
                .equals(other.vendorName, vendorName) &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality()
                .equals(other.macAddress, macAddress) &&
            const DeepCollectionEquality().equals(other.ipAddress, ipAddress));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(version),
        const DeepCollectionEquality().hash(buildId),
        const DeepCollectionEquality().hash(leds),
        const DeepCollectionEquality().hash(sendReceiveToggle),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(udpPort),
        const DeepCollectionEquality().hash(live),
        const DeepCollectionEquality().hash(lm),
        const DeepCollectionEquality().hash(lip),
        const DeepCollectionEquality().hash(websockets),
        const DeepCollectionEquality().hash(effectsCount),
        const DeepCollectionEquality().hash(paletteCount),
        const DeepCollectionEquality().hash(wifi),
        const DeepCollectionEquality().hash(fs),
        const DeepCollectionEquality().hash(numberOfDevicesOnNetwork),
        const DeepCollectionEquality().hash(platformname),
        const DeepCollectionEquality().hash(sdkVersion),
        const DeepCollectionEquality().hash(lwIpVersion),
        const DeepCollectionEquality().hash(availableHeapMemory),
        const DeepCollectionEquality().hash(uptime),
        const DeepCollectionEquality().hash(vendorName),
        const DeepCollectionEquality().hash(productName),
        const DeepCollectionEquality().hash(macAddress),
        const DeepCollectionEquality().hash(ipAddress)
      ]);

  @JsonKey(ignore: true)
  @override
  _$DeviceInfoCopyWith<_DeviceInfo> get copyWith =>
      __$DeviceInfoCopyWithImpl<_DeviceInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceInfoToJson(this);
  }
}

abstract class _DeviceInfo implements DeviceInfo {
  const factory _DeviceInfo(
      {@JsonKey(name: 'ver') required String version,
      @JsonKey(name: 'vid') required int buildId,
      @JsonKey(name: 'leds') required LedsDeviceInfo leds,
      @JsonKey(name: 'str') required bool sendReceiveToggle,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'udpport') required int udpPort,
      @JsonKey(name: 'live') required bool live,
      @JsonKey(name: 'lm') required String lm,
      @JsonKey(name: 'lip') required String lip,
      @JsonKey(name: 'ws') required int websockets,
      @JsonKey(name: 'fxcount') required int effectsCount,
      @JsonKey(name: 'palcount') required int paletteCount,
      @JsonKey(name: 'wifi') required Wifi wifi,
      @JsonKey(name: 'fs') required FileSystem fs,
      @JsonKey(name: 'ndc') required int numberOfDevicesOnNetwork,
      @JsonKey(name: 'arch') required String platformname,
      @JsonKey(name: 'core') required String sdkVersion,
      @JsonKey(name: 'lwip') required int lwIpVersion,
      @JsonKey(name: 'freeheap') required int availableHeapMemory,
      @JsonKey(name: 'uptime') required int uptime,
      @JsonKey(name: 'brand') required String vendorName,
      @JsonKey(name: 'product') required String productName,
      @JsonKey(name: 'mac') required String macAddress,
      @JsonKey(name: 'ip') required String ipAddress}) = _$_DeviceInfo;

  factory _DeviceInfo.fromJson(Map<String, dynamic> json) =
      _$_DeviceInfo.fromJson;

  @override // Version name.
  @JsonKey(name: 'ver')
  String get version;
  @override // Build ID (YYMMDDB, B = daily build index).
  @JsonKey(name: 'vid')
  int get buildId;
  @override // Contains info about the LED setup.
  @JsonKey(name: 'leds')
  LedsDeviceInfo get leds;
  @override // If true, an UI with only a single button for toggling sync should toggle
// receive+send, otherwise send only
  @JsonKey(name: 'str')
  bool get sendReceiveToggle;
  @override // Friendly name of the light. Intended for display in lists and titles.
  @JsonKey(name: 'name')
  String get name;
  @override // The UDP port for realtime packets and WLED broadcast.
  @JsonKey(name: 'udpport')
  int get udpPort;
  @override // If true, the software is currently receiving realtime data via UDP
// or E1.31.
  @JsonKey(name: 'live')
  bool get live;
  @override // DeviceInfo about the realtime data source
  @JsonKey(name: 'lm')
  String get lm;
  @override // Realtime data source IP address
  @JsonKey(name: 'lip')
  String get lip;
  @override // Number of currently connected WebSockets clients. -1 indicates that
// WS is unsupported in this build.
  @JsonKey(name: 'ws')
  int get websockets;
  @override // Number of effects included.
  @JsonKey(name: 'fxcount')
  int get effectsCount;
  @override // Number of palettes configured.
  @JsonKey(name: 'palcount')
  int get paletteCount;
  @override // DeviceInfo about current signal strength
  @JsonKey(name: 'wifi')
  Wifi get wifi;
  @override // DeviceInfo about the embedded LittleFS filesystem (since 0.11.0)
  @JsonKey(name: 'fs')
  FileSystem get fs;
  @override // Number of other WLED devices discovered on the network. -1 if Node
// discovery disabled. (since 0.12.0)
  @JsonKey(name: 'ndc')
  int get numberOfDevicesOnNetwork;
  @override // Name of the platform.
  @JsonKey(name: 'arch')
  String get platformname;
  @override // Version of the underlying (Arduino core) SDK.
  @JsonKey(name: 'core')
  String get sdkVersion;
  @override // Version of LwIP. 1 or 2 on ESP8266, 0 (does not apply) on ESP32.
// Deprecated, removal in 0.14.0
  @JsonKey(name: 'lwip')
  int get lwIpVersion;
  @override // Bytes of heap memory (RAM) currently available. Problematic if <10k.
  @JsonKey(name: 'freeheap')
  int get availableHeapMemory;
  @override // Time since the last boot/reset in seconds.
  @JsonKey(name: 'uptime')
  int get uptime;
  @override // The producer/vendor of the light. Always WLED for standard installations.
  @JsonKey(name: 'brand')
  String get vendorName;
  @override // The product name. Always FOSS for standard installations.
  @JsonKey(name: 'product')
  String get productName;
  @override // The hexadecimal hardware MAC address of the light, lowercase and without
// colons.
  @JsonKey(name: 'mac')
  String get macAddress;
  @override // The IP address of this instance. Empty string if not connected.
// (since 0.13.0)
  @JsonKey(name: 'ip')
  String get ipAddress;
  @override
  @JsonKey(ignore: true)
  _$DeviceInfoCopyWith<_DeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

LedsDeviceInfo _$LedsDeviceInfoFromJson(Map<String, dynamic> json) {
  return _LedsDeviceInfo.fromJson(json);
}

/// @nodoc
class _$LedsDeviceInfoTearOff {
  const _$LedsDeviceInfoTearOff();

  _LedsDeviceInfo call(
      {@JsonKey(name: 'count') required int count,
      @JsonKey(name: 'fps') required int fps,
      @JsonKey(name: 'rgbw') required bool isRgbw,
      @JsonKey(name: 'wv') required bool showWhiteChannelSlider,
      @JsonKey(name: 'pwr') required int power,
      @JsonKey(name: 'maxpwr') required int maxPower,
      @JsonKey(name: 'maxseg') required int maxSegments}) {
    return _LedsDeviceInfo(
      count: count,
      fps: fps,
      isRgbw: isRgbw,
      showWhiteChannelSlider: showWhiteChannelSlider,
      power: power,
      maxPower: maxPower,
      maxSegments: maxSegments,
    );
  }

  LedsDeviceInfo fromJson(Map<String, Object?> json) {
    return LedsDeviceInfo.fromJson(json);
  }
}

/// @nodoc
const $LedsDeviceInfo = _$LedsDeviceInfoTearOff();

/// @nodoc
mixin _$LedsDeviceInfo {
// Total LED count.
  @JsonKey(name: 'count')
  int get count =>
      throw _privateConstructorUsedError; // Current frames per second. (available since 0.12.0)
  @JsonKey(name: 'fps')
  int get fps =>
      throw _privateConstructorUsedError; // true if LEDs are 4-channel (RGBW).
  @JsonKey(name: 'rgbw')
  bool get isRgbw =>
      throw _privateConstructorUsedError; // true if a white channel slider should be displayed.
// (available since 0.10.0)
  @JsonKey(name: 'wv')
  bool get showWhiteChannelSlider =>
      throw _privateConstructorUsedError; // Current LED power usage in milliamps as determined by the ABL. 0 if ABL
// is disabled.
  @JsonKey(name: 'pwr')
  int get power =>
      throw _privateConstructorUsedError; // Maximum power budget in milliamps for the ABL. 0 if ABL is disabled.
  @JsonKey(name: 'maxpwr')
  int get maxPower =>
      throw _privateConstructorUsedError; // Maximum number of segments supported by this version.
  @JsonKey(name: 'maxseg')
  int get maxSegments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LedsDeviceInfoCopyWith<LedsDeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedsDeviceInfoCopyWith<$Res> {
  factory $LedsDeviceInfoCopyWith(
          LedsDeviceInfo value, $Res Function(LedsDeviceInfo) then) =
      _$LedsDeviceInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'fps') int fps,
      @JsonKey(name: 'rgbw') bool isRgbw,
      @JsonKey(name: 'wv') bool showWhiteChannelSlider,
      @JsonKey(name: 'pwr') int power,
      @JsonKey(name: 'maxpwr') int maxPower,
      @JsonKey(name: 'maxseg') int maxSegments});
}

/// @nodoc
class _$LedsDeviceInfoCopyWithImpl<$Res>
    implements $LedsDeviceInfoCopyWith<$Res> {
  _$LedsDeviceInfoCopyWithImpl(this._value, this._then);

  final LedsDeviceInfo _value;
  // ignore: unused_field
  final $Res Function(LedsDeviceInfo) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? fps = freezed,
    Object? isRgbw = freezed,
    Object? showWhiteChannelSlider = freezed,
    Object? power = freezed,
    Object? maxPower = freezed,
    Object? maxSegments = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      fps: fps == freezed
          ? _value.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as int,
      isRgbw: isRgbw == freezed
          ? _value.isRgbw
          : isRgbw // ignore: cast_nullable_to_non_nullable
              as bool,
      showWhiteChannelSlider: showWhiteChannelSlider == freezed
          ? _value.showWhiteChannelSlider
          : showWhiteChannelSlider // ignore: cast_nullable_to_non_nullable
              as bool,
      power: power == freezed
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int,
      maxPower: maxPower == freezed
          ? _value.maxPower
          : maxPower // ignore: cast_nullable_to_non_nullable
              as int,
      maxSegments: maxSegments == freezed
          ? _value.maxSegments
          : maxSegments // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$LedsDeviceInfoCopyWith<$Res>
    implements $LedsDeviceInfoCopyWith<$Res> {
  factory _$LedsDeviceInfoCopyWith(
          _LedsDeviceInfo value, $Res Function(_LedsDeviceInfo) then) =
      __$LedsDeviceInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'fps') int fps,
      @JsonKey(name: 'rgbw') bool isRgbw,
      @JsonKey(name: 'wv') bool showWhiteChannelSlider,
      @JsonKey(name: 'pwr') int power,
      @JsonKey(name: 'maxpwr') int maxPower,
      @JsonKey(name: 'maxseg') int maxSegments});
}

/// @nodoc
class __$LedsDeviceInfoCopyWithImpl<$Res>
    extends _$LedsDeviceInfoCopyWithImpl<$Res>
    implements _$LedsDeviceInfoCopyWith<$Res> {
  __$LedsDeviceInfoCopyWithImpl(
      _LedsDeviceInfo _value, $Res Function(_LedsDeviceInfo) _then)
      : super(_value, (v) => _then(v as _LedsDeviceInfo));

  @override
  _LedsDeviceInfo get _value => super._value as _LedsDeviceInfo;

  @override
  $Res call({
    Object? count = freezed,
    Object? fps = freezed,
    Object? isRgbw = freezed,
    Object? showWhiteChannelSlider = freezed,
    Object? power = freezed,
    Object? maxPower = freezed,
    Object? maxSegments = freezed,
  }) {
    return _then(_LedsDeviceInfo(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      fps: fps == freezed
          ? _value.fps
          : fps // ignore: cast_nullable_to_non_nullable
              as int,
      isRgbw: isRgbw == freezed
          ? _value.isRgbw
          : isRgbw // ignore: cast_nullable_to_non_nullable
              as bool,
      showWhiteChannelSlider: showWhiteChannelSlider == freezed
          ? _value.showWhiteChannelSlider
          : showWhiteChannelSlider // ignore: cast_nullable_to_non_nullable
              as bool,
      power: power == freezed
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int,
      maxPower: maxPower == freezed
          ? _value.maxPower
          : maxPower // ignore: cast_nullable_to_non_nullable
              as int,
      maxSegments: maxSegments == freezed
          ? _value.maxSegments
          : maxSegments // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LedsDeviceInfo implements _LedsDeviceInfo {
  const _$_LedsDeviceInfo(
      {@JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'fps') required this.fps,
      @JsonKey(name: 'rgbw') required this.isRgbw,
      @JsonKey(name: 'wv') required this.showWhiteChannelSlider,
      @JsonKey(name: 'pwr') required this.power,
      @JsonKey(name: 'maxpwr') required this.maxPower,
      @JsonKey(name: 'maxseg') required this.maxSegments});

  factory _$_LedsDeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$$_LedsDeviceInfoFromJson(json);

  @override // Total LED count.
  @JsonKey(name: 'count')
  final int count;
  @override // Current frames per second. (available since 0.12.0)
  @JsonKey(name: 'fps')
  final int fps;
  @override // true if LEDs are 4-channel (RGBW).
  @JsonKey(name: 'rgbw')
  final bool isRgbw;
  @override // true if a white channel slider should be displayed.
// (available since 0.10.0)
  @JsonKey(name: 'wv')
  final bool showWhiteChannelSlider;
  @override // Current LED power usage in milliamps as determined by the ABL. 0 if ABL
// is disabled.
  @JsonKey(name: 'pwr')
  final int power;
  @override // Maximum power budget in milliamps for the ABL. 0 if ABL is disabled.
  @JsonKey(name: 'maxpwr')
  final int maxPower;
  @override // Maximum number of segments supported by this version.
  @JsonKey(name: 'maxseg')
  final int maxSegments;

  @override
  String toString() {
    return 'LedsDeviceInfo(count: $count, fps: $fps, isRgbw: $isRgbw, showWhiteChannelSlider: $showWhiteChannelSlider, power: $power, maxPower: $maxPower, maxSegments: $maxSegments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedsDeviceInfo &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.fps, fps) &&
            const DeepCollectionEquality().equals(other.isRgbw, isRgbw) &&
            const DeepCollectionEquality()
                .equals(other.showWhiteChannelSlider, showWhiteChannelSlider) &&
            const DeepCollectionEquality().equals(other.power, power) &&
            const DeepCollectionEquality().equals(other.maxPower, maxPower) &&
            const DeepCollectionEquality()
                .equals(other.maxSegments, maxSegments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(fps),
      const DeepCollectionEquality().hash(isRgbw),
      const DeepCollectionEquality().hash(showWhiteChannelSlider),
      const DeepCollectionEquality().hash(power),
      const DeepCollectionEquality().hash(maxPower),
      const DeepCollectionEquality().hash(maxSegments));

  @JsonKey(ignore: true)
  @override
  _$LedsDeviceInfoCopyWith<_LedsDeviceInfo> get copyWith =>
      __$LedsDeviceInfoCopyWithImpl<_LedsDeviceInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LedsDeviceInfoToJson(this);
  }
}

abstract class _LedsDeviceInfo implements LedsDeviceInfo {
  const factory _LedsDeviceInfo(
      {@JsonKey(name: 'count') required int count,
      @JsonKey(name: 'fps') required int fps,
      @JsonKey(name: 'rgbw') required bool isRgbw,
      @JsonKey(name: 'wv') required bool showWhiteChannelSlider,
      @JsonKey(name: 'pwr') required int power,
      @JsonKey(name: 'maxpwr') required int maxPower,
      @JsonKey(name: 'maxseg') required int maxSegments}) = _$_LedsDeviceInfo;

  factory _LedsDeviceInfo.fromJson(Map<String, dynamic> json) =
      _$_LedsDeviceInfo.fromJson;

  @override // Total LED count.
  @JsonKey(name: 'count')
  int get count;
  @override // Current frames per second. (available since 0.12.0)
  @JsonKey(name: 'fps')
  int get fps;
  @override // true if LEDs are 4-channel (RGBW).
  @JsonKey(name: 'rgbw')
  bool get isRgbw;
  @override // true if a white channel slider should be displayed.
// (available since 0.10.0)
  @JsonKey(name: 'wv')
  bool get showWhiteChannelSlider;
  @override // Current LED power usage in milliamps as determined by the ABL. 0 if ABL
// is disabled.
  @JsonKey(name: 'pwr')
  int get power;
  @override // Maximum power budget in milliamps for the ABL. 0 if ABL is disabled.
  @JsonKey(name: 'maxpwr')
  int get maxPower;
  @override // Maximum number of segments supported by this version.
  @JsonKey(name: 'maxseg')
  int get maxSegments;
  @override
  @JsonKey(ignore: true)
  _$LedsDeviceInfoCopyWith<_LedsDeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

Wifi _$WifiFromJson(Map<String, dynamic> json) {
  return _Wifi.fromJson(json);
}

/// @nodoc
class _$WifiTearOff {
  const _$WifiTearOff();

  _Wifi call(
      {@JsonKey(name: 'bssid') required String bssid,
      @JsonKey(name: 'signal') required int signalStrength,
      @JsonKey(name: 'channel') required int channel}) {
    return _Wifi(
      bssid: bssid,
      signalStrength: signalStrength,
      channel: channel,
    );
  }

  Wifi fromJson(Map<String, Object?> json) {
    return Wifi.fromJson(json);
  }
}

/// @nodoc
const $Wifi = _$WifiTearOff();

/// @nodoc
mixin _$Wifi {
// The BSSID of the currently connected network.
  @JsonKey(name: 'bssid')
  String get bssid =>
      throw _privateConstructorUsedError; // Relative signal quality of the current connection.
  @JsonKey(name: 'signal')
  int get signalStrength =>
      throw _privateConstructorUsedError; // The current WiFi channel.
  @JsonKey(name: 'channel')
  int get channel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WifiCopyWith<Wifi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WifiCopyWith<$Res> {
  factory $WifiCopyWith(Wifi value, $Res Function(Wifi) then) =
      _$WifiCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'bssid') String bssid,
      @JsonKey(name: 'signal') int signalStrength,
      @JsonKey(name: 'channel') int channel});
}

/// @nodoc
class _$WifiCopyWithImpl<$Res> implements $WifiCopyWith<$Res> {
  _$WifiCopyWithImpl(this._value, this._then);

  final Wifi _value;
  // ignore: unused_field
  final $Res Function(Wifi) _then;

  @override
  $Res call({
    Object? bssid = freezed,
    Object? signalStrength = freezed,
    Object? channel = freezed,
  }) {
    return _then(_value.copyWith(
      bssid: bssid == freezed
          ? _value.bssid
          : bssid // ignore: cast_nullable_to_non_nullable
              as String,
      signalStrength: signalStrength == freezed
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WifiCopyWith<$Res> implements $WifiCopyWith<$Res> {
  factory _$WifiCopyWith(_Wifi value, $Res Function(_Wifi) then) =
      __$WifiCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'bssid') String bssid,
      @JsonKey(name: 'signal') int signalStrength,
      @JsonKey(name: 'channel') int channel});
}

/// @nodoc
class __$WifiCopyWithImpl<$Res> extends _$WifiCopyWithImpl<$Res>
    implements _$WifiCopyWith<$Res> {
  __$WifiCopyWithImpl(_Wifi _value, $Res Function(_Wifi) _then)
      : super(_value, (v) => _then(v as _Wifi));

  @override
  _Wifi get _value => super._value as _Wifi;

  @override
  $Res call({
    Object? bssid = freezed,
    Object? signalStrength = freezed,
    Object? channel = freezed,
  }) {
    return _then(_Wifi(
      bssid: bssid == freezed
          ? _value.bssid
          : bssid // ignore: cast_nullable_to_non_nullable
              as String,
      signalStrength: signalStrength == freezed
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wifi implements _Wifi {
  const _$_Wifi(
      {@JsonKey(name: 'bssid') required this.bssid,
      @JsonKey(name: 'signal') required this.signalStrength,
      @JsonKey(name: 'channel') required this.channel});

  factory _$_Wifi.fromJson(Map<String, dynamic> json) => _$$_WifiFromJson(json);

  @override // The BSSID of the currently connected network.
  @JsonKey(name: 'bssid')
  final String bssid;
  @override // Relative signal quality of the current connection.
  @JsonKey(name: 'signal')
  final int signalStrength;
  @override // The current WiFi channel.
  @JsonKey(name: 'channel')
  final int channel;

  @override
  String toString() {
    return 'Wifi(bssid: $bssid, signalStrength: $signalStrength, channel: $channel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Wifi &&
            const DeepCollectionEquality().equals(other.bssid, bssid) &&
            const DeepCollectionEquality()
                .equals(other.signalStrength, signalStrength) &&
            const DeepCollectionEquality().equals(other.channel, channel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bssid),
      const DeepCollectionEquality().hash(signalStrength),
      const DeepCollectionEquality().hash(channel));

  @JsonKey(ignore: true)
  @override
  _$WifiCopyWith<_Wifi> get copyWith =>
      __$WifiCopyWithImpl<_Wifi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WifiToJson(this);
  }
}

abstract class _Wifi implements Wifi {
  const factory _Wifi(
      {@JsonKey(name: 'bssid') required String bssid,
      @JsonKey(name: 'signal') required int signalStrength,
      @JsonKey(name: 'channel') required int channel}) = _$_Wifi;

  factory _Wifi.fromJson(Map<String, dynamic> json) = _$_Wifi.fromJson;

  @override // The BSSID of the currently connected network.
  @JsonKey(name: 'bssid')
  String get bssid;
  @override // Relative signal quality of the current connection.
  @JsonKey(name: 'signal')
  int get signalStrength;
  @override // The current WiFi channel.
  @JsonKey(name: 'channel')
  int get channel;
  @override
  @JsonKey(ignore: true)
  _$WifiCopyWith<_Wifi> get copyWith => throw _privateConstructorUsedError;
}

FileSystem _$FileSystemFromJson(Map<String, dynamic> json) {
  return _FileSystem.fromJson(json);
}

/// @nodoc
class _$FileSystemTearOff {
  const _$FileSystemTearOff();

  _FileSystem call(
      {@JsonKey(name: 'u') required int spaceUsed,
      @JsonKey(name: 't') required int spaceTotal,
      @JsonKey(name: 'pmt') required int presetModificationTime}) {
    return _FileSystem(
      spaceUsed: spaceUsed,
      spaceTotal: spaceTotal,
      presetModificationTime: presetModificationTime,
    );
  }

  FileSystem fromJson(Map<String, Object?> json) {
    return FileSystem.fromJson(json);
  }
}

/// @nodoc
const $FileSystem = _$FileSystemTearOff();

/// @nodoc
mixin _$FileSystem {
// Estimate of used filesystem space in kilobytes
  @JsonKey(name: 'u')
  int get spaceUsed =>
      throw _privateConstructorUsedError; // Total filesystem size in kilobytes
  @JsonKey(name: 't')
  int get spaceTotal =>
      throw _privateConstructorUsedError; // Unix timestamp for the last modification to the presets.json file.
// Not accurate after boot or after using /edit
  @JsonKey(name: 'pmt')
  int get presetModificationTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileSystemCopyWith<FileSystem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileSystemCopyWith<$Res> {
  factory $FileSystemCopyWith(
          FileSystem value, $Res Function(FileSystem) then) =
      _$FileSystemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'u') int spaceUsed,
      @JsonKey(name: 't') int spaceTotal,
      @JsonKey(name: 'pmt') int presetModificationTime});
}

/// @nodoc
class _$FileSystemCopyWithImpl<$Res> implements $FileSystemCopyWith<$Res> {
  _$FileSystemCopyWithImpl(this._value, this._then);

  final FileSystem _value;
  // ignore: unused_field
  final $Res Function(FileSystem) _then;

  @override
  $Res call({
    Object? spaceUsed = freezed,
    Object? spaceTotal = freezed,
    Object? presetModificationTime = freezed,
  }) {
    return _then(_value.copyWith(
      spaceUsed: spaceUsed == freezed
          ? _value.spaceUsed
          : spaceUsed // ignore: cast_nullable_to_non_nullable
              as int,
      spaceTotal: spaceTotal == freezed
          ? _value.spaceTotal
          : spaceTotal // ignore: cast_nullable_to_non_nullable
              as int,
      presetModificationTime: presetModificationTime == freezed
          ? _value.presetModificationTime
          : presetModificationTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FileSystemCopyWith<$Res> implements $FileSystemCopyWith<$Res> {
  factory _$FileSystemCopyWith(
          _FileSystem value, $Res Function(_FileSystem) then) =
      __$FileSystemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'u') int spaceUsed,
      @JsonKey(name: 't') int spaceTotal,
      @JsonKey(name: 'pmt') int presetModificationTime});
}

/// @nodoc
class __$FileSystemCopyWithImpl<$Res> extends _$FileSystemCopyWithImpl<$Res>
    implements _$FileSystemCopyWith<$Res> {
  __$FileSystemCopyWithImpl(
      _FileSystem _value, $Res Function(_FileSystem) _then)
      : super(_value, (v) => _then(v as _FileSystem));

  @override
  _FileSystem get _value => super._value as _FileSystem;

  @override
  $Res call({
    Object? spaceUsed = freezed,
    Object? spaceTotal = freezed,
    Object? presetModificationTime = freezed,
  }) {
    return _then(_FileSystem(
      spaceUsed: spaceUsed == freezed
          ? _value.spaceUsed
          : spaceUsed // ignore: cast_nullable_to_non_nullable
              as int,
      spaceTotal: spaceTotal == freezed
          ? _value.spaceTotal
          : spaceTotal // ignore: cast_nullable_to_non_nullable
              as int,
      presetModificationTime: presetModificationTime == freezed
          ? _value.presetModificationTime
          : presetModificationTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileSystem implements _FileSystem {
  const _$_FileSystem(
      {@JsonKey(name: 'u') required this.spaceUsed,
      @JsonKey(name: 't') required this.spaceTotal,
      @JsonKey(name: 'pmt') required this.presetModificationTime});

  factory _$_FileSystem.fromJson(Map<String, dynamic> json) =>
      _$$_FileSystemFromJson(json);

  @override // Estimate of used filesystem space in kilobytes
  @JsonKey(name: 'u')
  final int spaceUsed;
  @override // Total filesystem size in kilobytes
  @JsonKey(name: 't')
  final int spaceTotal;
  @override // Unix timestamp for the last modification to the presets.json file.
// Not accurate after boot or after using /edit
  @JsonKey(name: 'pmt')
  final int presetModificationTime;

  @override
  String toString() {
    return 'FileSystem(spaceUsed: $spaceUsed, spaceTotal: $spaceTotal, presetModificationTime: $presetModificationTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileSystem &&
            const DeepCollectionEquality().equals(other.spaceUsed, spaceUsed) &&
            const DeepCollectionEquality()
                .equals(other.spaceTotal, spaceTotal) &&
            const DeepCollectionEquality()
                .equals(other.presetModificationTime, presetModificationTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(spaceUsed),
      const DeepCollectionEquality().hash(spaceTotal),
      const DeepCollectionEquality().hash(presetModificationTime));

  @JsonKey(ignore: true)
  @override
  _$FileSystemCopyWith<_FileSystem> get copyWith =>
      __$FileSystemCopyWithImpl<_FileSystem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileSystemToJson(this);
  }
}

abstract class _FileSystem implements FileSystem {
  const factory _FileSystem(
          {@JsonKey(name: 'u') required int spaceUsed,
          @JsonKey(name: 't') required int spaceTotal,
          @JsonKey(name: 'pmt') required int presetModificationTime}) =
      _$_FileSystem;

  factory _FileSystem.fromJson(Map<String, dynamic> json) =
      _$_FileSystem.fromJson;

  @override // Estimate of used filesystem space in kilobytes
  @JsonKey(name: 'u')
  int get spaceUsed;
  @override // Total filesystem size in kilobytes
  @JsonKey(name: 't')
  int get spaceTotal;
  @override // Unix timestamp for the last modification to the presets.json file.
// Not accurate after boot or after using /edit
  @JsonKey(name: 'pmt')
  int get presetModificationTime;
  @override
  @JsonKey(ignore: true)
  _$FileSystemCopyWith<_FileSystem> get copyWith =>
      throw _privateConstructorUsedError;
}
