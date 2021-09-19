import 'package:injectable/injectable.dart';
import 'package:wled/core/core.dart';

import '../src/mdns_device_discovery.dart';
import '../src/xml_parser.dart';

@injectable
class DeviceListRepository {
  DeviceListRepository(this._discovery, this._parser);

  final MdnsDeviceDiscovery _discovery;
  final XmlParser _parser;

  /// returns a stream that returns new wled devices when they are discovered
  Stream<WledDevice> getWledDeviceStream() async* {
    _discovery.stop();
    await _discovery.start();

    yield* _discovery.stream.asyncMap<WledDevice>((mdns) async {
      final address = mdns.ip.address.address;
      final device = WledDevice(address: address, name: mdns.srv.name);

      return updateWledDevice(device);
    }).where((d) => d.status == DeviceStatus.standard);
  }

  /// sends the call to the wled api and returns a Wled device with updated
  /// data the api call returns
  Future<WledDevice> updateWledDevice(
    WledDevice device, [
    String call = '',
  ]) async {
    final url = device.address.startsWith('https://')
        ? device.address
        : 'http://${device.address}';

    try {
      final response = await HttpConnection.sendApiCall(url, call);
      final apiResponse = _parser.parseXml(response);

      return device.copyWith(
        status: DeviceStatus.standard,
        name: apiResponse.name,
        brightness: apiResponse.brightness,
        isEnabled: apiResponse.isOn,
        color: apiResponse.color,
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
