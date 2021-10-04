import '../core.dart';

/// custom extensions specifically for working with [WledDevice] lists
extension WledListExtension on List<WledDevice> {
  /// contains operation only comparing the WledDevice.address properties
  bool containsWithAddress(WledDevice device) {
    for (final e in this) {
      if (e.address == device.address) return true;
    }
    return false;
  }

  /// compares device against list, if it exists replace it, otherwise add it
  void addOrReplace(WledDevice d) {
    final index = indexWhere((i) => i.address == d.address);
    index == -1 ? add(d) : this[index] = d;
  }
}

extension ListExtension on List {}
