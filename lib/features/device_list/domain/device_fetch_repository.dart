import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:wled/features/features.dart';

import '../data/local_device_discovery.dart';
import '../data/mdns_device_discovery.dart';

@singleton
class DeviceFetchRepository {
  DeviceFetchRepository(
    this._remote,
    this._local,
    this._update,
  );

  final MdnsDeviceDiscovery _remote;
  final LocalDeviceDiscovery _local;
  final DeviceUpdateRepository _update;

  Stream<List<WledDevice>> get() async* {
    yield await getLocal();
    // mdns lookup currently doesn't work on Windows, so end the stream here
    if (Platform.isWindows) return;
    yield* getRemote();
  }

  /// retrieve locally saved WledDevices and return an updated version of each
  @visibleForTesting
  Future<List<WledDevice>> getLocal() {
    // first fetch the locally saved devices
    final localDevices = _local.getWledDevice();
    // update devices by fetching new data
    final futures = localDevices.map(_update.updateFromDevice);
    // yield the local devices first
    return Future.wait(futures);
  }

  /// retrieve a stream of potential WledDevices on this network
  @visibleForTesting
  Stream<List<WledDevice>> getRemote() {
    final remoteDevices = _remote.stream.asyncMap((mdns) async {
      // create a new WledDevice from mdns lookup
      final address = mdns.ip.address.address;

      // attempt to fetch data for this WledDevice
      return _update.updateFromIp(address); 
      // only yield actual WledDevices by testing if the data fetch completed
      // succesfully
    }).where((i) => i != null && i.status != DeviceStatus.unreachable);

    return remoteDevices.map((i) => [i!]);
  }

  void deleteLocal(WledDevice device) {
    _local.removeWledDevice(device);
  }

  void saveLocal(WledDevice device) {
    _local.saveWledDevice(device);
  }

  void updateLocal(WledDevice device) {
    _local.saveWledDevice(device);
  }
}
