import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wled/core/core.dart';

@injectable
class LocalDeviceDiscovery {
  LocalDeviceDiscovery(this._hive);

  final HiveInterface _hive;

  /// fetch all the locally saved WledDevices
  List<WledDevice> getWledDevice() {
    final box = _hive.box<WledDevice>(Kasset.devicesBox);
    return box.values.toList();
  }

  /// adds a Wled device to the local storage only if it isn't saved already
  void saveWledDevice(WledDevice device) {
    final box = _hive.box<WledDevice>(Kasset.devicesBox);
    if (box.values.any((e) => e.address == device.address)) return;

    box.add(device);
  }

  /// attempts to remove WledDevice from the local storage
  void removeWledDevice(WledDevice d) {
    final box = _hive.box<WledDevice>(Kasset.devicesBox);

    final index = box.values.toList().indexWhere((e) => e.address == d.address);
    if (index != -1) box.deleteAt(index);
  }
}
