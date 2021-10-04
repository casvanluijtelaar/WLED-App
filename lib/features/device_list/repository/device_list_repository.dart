import 'package:wled/core/core.dart';

abstract class DeviceListRepository {
  /// returns a stream with WledDevices where it firstly will try to
  /// find locally stored devices and then discover devices on the local
  /// network for supported platforms (currently not supported on windows)
  Stream<List<WledDevice>> getWledDevices();

  /// save the WledDevice to the local device
  void saveLocal(WledDevice device);

  /// remove the WledDevice from the local device
  void deleteLocal(WledDevice device);
}
