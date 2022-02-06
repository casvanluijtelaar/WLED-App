import 'dart:convert';

import '../data/http_connection.dart';
import '../models/wled_device.dart';

class DeviceUpdateRepository {

  DeviceUpdateRepository(this._http);

  final HttpConnection _http;

  Future<WledDevice> updateFromDevice(WledDevice device) async {
    final url = 'http://${device.info.ipAddress}/';

    try {
      final response = await _http.sendApiCall(url, device.toString());
      final data = json.decode(response) as Map<String, dynamic>;
      final result = WledDevice.fromJson(data);

      return result.copyWith(status: DeviceStatus.functional);
    } on HttpConnectionException {
      return device.copyWith(status: DeviceStatus.unreachable);
    } on HttpStatusException {
      return device.copyWith(status: DeviceStatus.error);
    }
  }

  Future<WledDevice?> updateFromIp(String ip) async {
    final url = 'http://$ip/';

    try {
      final response = await _http.sendApiCall(url);
      final data = json.decode(response) as Map<String, dynamic>;
      final result = WledDevice.fromJson(data);

      return result.copyWith(status: DeviceStatus.functional);
    } on HttpConnectionException {
      return null;
    } on HttpStatusException {
      return null;
    }
  }
}
