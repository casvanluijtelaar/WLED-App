import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:wled/core/core.dart';
import 'package:wled/core/utils/consts.dart';

@injectable
class DeviceAddRepository {
  DeviceAddRepository(this._hive);

  final HiveInterface _hive;

  /// save [WledDevice] to local database
  Future<void> saveDevice(WledDevice device) async {
    final box = _hive.box<WledDevice>(Consts.devicesBox);
    // don't save if the device already exists
    if (box.values.where((d) => d.address == device.address).isNotEmpty) return;
    // save
    await box.add(device);
  }
}
