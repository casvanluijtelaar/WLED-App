import 'models/wled_device.dart';

abstract class DeviceUpdateRepository {
  /// sends the call to the wled api and returns a Wled device with updated
  /// data the api call returns
  Future<WledDevice> updateWledDevice(WledDevice device, [String? call]);
}
