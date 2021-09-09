import 'package:injectable/injectable.dart';
import 'package:wled_app/core/core.dart';
import 'package:wled_app/features/device_list/data/src/mdns_device_discovery.dart';
import 'package:wled_app/features/device_list/data/src/xml_parser.dart';

import '../models/wled_device.dart';

@injectable
class DeviceListRepository {
  DeviceListRepository(this._parser, this._discovery);

  final XmlParser _parser;
  final MdnsDeviceDiscovery _discovery;

  /// returns a stream that returns new wled devices when they are discovered
  Stream<WledDevice> getWledDeviceStream() async* {
    _discovery.stop();
    await _discovery.start();

    yield* _discovery.stream.asyncMap((srv) async {
      final address = '${srv.target}:${srv.port}';
      final device = WledDevice(networkAddress: address, name: srv.name);

      return updateWledDevice(device, '');
    });
  }

  /// fetches a list of discoverable and updated wled devices
  Future<List<WledDevice>> getWledDevicesAsync(Duration delay) async {
    /// look for mDNS devices for a specific delay
    await _discovery.start();
    Future.delayed(delay, _discovery.stop);

    /// convert the results to WledDevices
    final results = await _discovery.stream.toList();
    final devices = results.map((srv) => WledDevice(
          networkAddress: '${srv.target}:${srv.port}',
          name: srv.name,
        ));

    /// get complete data for every device
    final futures = devices.map((wled) => updateWledDevice(wled, ''));
    return Future.wait(futures);
  }

  /// sends the call to the wled api and returns a Wled device with updated
  /// data the api call returns
  Future<WledDevice> updateWledDevice(WledDevice device, String call) async {
    final url = device.networkAddress.startsWith('https://')
        ? device.networkAddress
        : 'http://${device.networkAddress}';

    try {
      final response = await DeviceHttpConnection.sendApiCall(url, call);
      final xmlApiResponse = _parser.parseXml(response);

      return device.copyWith(
        status: DeviceStatus.standard,
        name: device.nameIsCustom ? device.name : xmlApiResponse.name,
        brightness: xmlApiResponse.brightness,
        isEnabled: xmlApiResponse.isOn,
        color: xmlApiResponse.color,
      );
    } on HttpConnectionException {
      return device.copyWith(status: DeviceStatus.unreachable);
    } on HttpStatusException {
      return device.copyWith(status: DeviceStatus.error);
    } on ParseException {
      return device.copyWith(status: DeviceStatus.error);
    }
  }
}
