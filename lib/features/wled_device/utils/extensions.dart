
import 'package:wled/features/wled_device/wled_device.dart';

/// custom extensions specifically for working with [WledDevice] lists
extension WledListExtension on List<WledDevice> {
  /// contains operation only comparing the WledDevice.address properties
  bool containsWithAddress(WledDevice? device) {
    if (device == null) return false;

    for (final e in this) {
      if (e.info.ipAddress == device.info.ipAddress) return true;
    }
    return false;
  }

  bool notContainsWithAddress(WledDevice? d) => !containsWithAddress(d);

  /// only add device to list if a device with the same ip isn't
  /// allready in the list
  void addIfNotContains(WledDevice device) {
    if (!containsWithAddress(device)) add(device);
  }

  void addAllIfNotContains(List<WledDevice> devices) {
    for (final device in devices) {
      if (!containsWithAddress(device)) add(device);
    }
  }

  /// compares device against list, if it exists replace it, otherwise add it
  void addOrReplace(WledDevice d) {
    final index = indexWhere((i) => i.info.ipAddress == d.info.ipAddress);
    index == -1 ? add(d) : this[index] = d;
  }

  /// check if any of the device in the list are currently enabled
  bool get anyOn => any((e) => e.state.isEnabled);
}
