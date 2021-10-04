import 'package:injectable/injectable.dart';

import '../data/http_connection.dart';
import '../data/xml_parser.dart';

import 'device_update_repository.dart';
import 'models/wled_device.dart';

@Injectable(as: DeviceUpdateRepository)
class DeviceUpdateRepositoryImpl implements DeviceUpdateRepository {
  DeviceUpdateRepositoryImpl(this._parser, this._http);

  final XmlParser _parser;
  final HttpConnection _http;

  @override
  Future<WledDevice> updateWledDevice(
    WledDevice device, [
    String? call,
  ]) async {
    // address can be a static IP or an Mdns address, so we need to generalise
    // the url
    final isAddress = device.address.startsWith('https://');
    final url = isAddress ? device.address : 'http://${device.address}';

    try {
      // send an HTTP request to the urls XML api
      final response = await _http.sendApiCall(url, call ?? '');
      final apiResponse = _parser.parseXml(response);
      // update the current device with the newly fetched data
      return device.copyWith(
        status: DeviceStatus.functional,
        name: device.nameIsCustom ? device.name : apiResponse.name,
        brightness: apiResponse.brightness.toInt().clamp(0, 255),
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
