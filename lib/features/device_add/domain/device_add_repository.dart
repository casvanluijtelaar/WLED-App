import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:wled/core/core.dart';
import 'package:wled/core/utils/consts.dart';

@injectable
class DeviceAddRepository {
  DeviceAddRepository(this._hive);

  final HiveInterface _hive;

  /// save [WledDevice] to local database
  Future<void> saveDevice(WledDevice d) async {
    final box = _hive.box<WledDevice>(Kasset.devicesBox);

    final index = box.values.toList().indexWhere((e) => e.address == d.address);
    return index == -1 ? box.add(d) : box.putAt(index, d);
  }
}
