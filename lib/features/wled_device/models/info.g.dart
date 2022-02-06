// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceInfo _$$_DeviceInfoFromJson(Map<String, dynamic> json) =>
    _$_DeviceInfo(
      version: json['ver'] as String,
      buildId: json['vid'] as int,
      leds: LedsDeviceInfo.fromJson(json['leds'] as Map<String, dynamic>),
      sendReceiveToggle: json['str'] as bool,
      name: json['name'] as String,
      udpPort: json['udpport'] as int,
      live: json['live'] as bool,
      lm: json['lm'] as String,
      lip: json['lip'] as String,
      websockets: json['ws'] as int,
      effectsCount: json['fxcount'] as int,
      paletteCount: json['palcount'] as int,
      wifi: Wifi.fromJson(json['wifi'] as Map<String, dynamic>),
      fs: FileSystem.fromJson(json['fs'] as Map<String, dynamic>),
      numberOfDevicesOnNetwork: json['ndc'] as int,
      platformname: json['arch'] as String,
      sdkVersion: json['core'] as String,
      lwIpVersion: json['lwip'] as int,
      availableHeapMemory: json['freeheap'] as int,
      uptime: json['uptime'] as int,
      vendorName: json['brand'] as String,
      productName: json['product'] as String,
      macAddress: json['mac'] as String,
      ipAddress: json['ip'] as String,
    );

Map<String, dynamic> _$$_DeviceInfoToJson(_$_DeviceInfo instance) =>
    <String, dynamic>{
      'ver': instance.version,
      'vid': instance.buildId,
      'leds': instance.leds,
      'str': instance.sendReceiveToggle,
      'name': instance.name,
      'udpport': instance.udpPort,
      'live': instance.live,
      'lm': instance.lm,
      'lip': instance.lip,
      'ws': instance.websockets,
      'fxcount': instance.effectsCount,
      'palcount': instance.paletteCount,
      'wifi': instance.wifi,
      'fs': instance.fs,
      'ndc': instance.numberOfDevicesOnNetwork,
      'arch': instance.platformname,
      'core': instance.sdkVersion,
      'lwip': instance.lwIpVersion,
      'freeheap': instance.availableHeapMemory,
      'uptime': instance.uptime,
      'brand': instance.vendorName,
      'product': instance.productName,
      'mac': instance.macAddress,
      'ip': instance.ipAddress,
    };

_$_LedsDeviceInfo _$$_LedsDeviceInfoFromJson(Map<String, dynamic> json) =>
    _$_LedsDeviceInfo(
      count: json['count'] as int,
      fps: json['fps'] as int,
      isRgbw: json['rgbw'] as bool,
      showWhiteChannelSlider: json['wv'] as bool,
      power: json['pwr'] as int,
      maxPower: json['maxpwr'] as int,
      maxSegments: json['maxseg'] as int,
    );

Map<String, dynamic> _$$_LedsDeviceInfoToJson(_$_LedsDeviceInfo instance) =>
    <String, dynamic>{
      'count': instance.count,
      'fps': instance.fps,
      'rgbw': instance.isRgbw,
      'wv': instance.showWhiteChannelSlider,
      'pwr': instance.power,
      'maxpwr': instance.maxPower,
      'maxseg': instance.maxSegments,
    };

_$_Wifi _$$_WifiFromJson(Map<String, dynamic> json) => _$_Wifi(
      bssid: json['bssid'] as String,
      signalStrength: json['signal'] as int,
      channel: json['channel'] as int,
    );

Map<String, dynamic> _$$_WifiToJson(_$_Wifi instance) => <String, dynamic>{
      'bssid': instance.bssid,
      'signal': instance.signalStrength,
      'channel': instance.channel,
    };

_$_FileSystem _$$_FileSystemFromJson(Map<String, dynamic> json) =>
    _$_FileSystem(
      spaceUsed: json['u'] as int,
      spaceTotal: json['t'] as int,
      presetModificationTime: json['pmt'] as int,
    );

Map<String, dynamic> _$$_FileSystemToJson(_$_FileSystem instance) =>
    <String, dynamic>{
      'u': instance.spaceUsed,
      't': instance.spaceTotal,
      'pmt': instance.presetModificationTime,
    };
