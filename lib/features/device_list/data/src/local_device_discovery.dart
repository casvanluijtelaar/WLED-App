import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wled/core/core.dart';

@injectable
class LocalDeviceDiscovery {
  LocalDeviceDiscovery(this._hive);

  final HiveInterface _hive;

  /// fetch all the locally saved WledDevices
  List<WledDevice> getWledDevice() {
    final box = _hive.box<WledDevice>(Consts.devicesBox);
    return box.values.toList();
  }

  /// adds a Wled device to the local storage only if it isn't saved already
  void saveWledDevice(WledDevice device) {
    final box = _hive.box<WledDevice>(Consts.devicesBox);
    if (box.values.contains(device)) return;

    box.add(device);
  }

  /// attempts to remove WledDevice from the local storage
  void removeWledDevice(WledDevice device) {
    final box = _hive.box<WledDevice>(Consts.devicesBox);

    final index = box.values.toList().indexOf(device);
    box.deleteAt(index);
  }
}
