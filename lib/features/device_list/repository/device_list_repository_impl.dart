import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:wled/core/core.dart';

import '../data/src/local_device_discovery.dart';
import '../data/src/mdns_device_discovery.dart';
import 'device_list_repository.dart';

@Injectable(as: DeviceListRepository)
class DeviceListRepositoryImpl implements DeviceListRepository {
  DeviceListRepositoryImpl(
    this._remote,
    this._local,
    this._update,
  );

  final MdnsDeviceDiscovery _remote;
  final LocalDeviceDiscovery _local;
  final DeviceUpdateRepository _update;

  @override
  Stream<List<WledDevice>> getWledDevices() async* {
    // first fetch the locally saved devices
    final localDevices = _local.getWledDevice();
    // update devices by fetching new data
    final futures = localDevices.map(_update.updateWledDevice);
    // yield the local devices first
    yield await Future.wait(futures);
    // mdns lookup currently doesn't work on Windows, so end the stream here
    if (Platform.isWindows) return;
    // it's possible that a mdns lookup is already running from a previous
    // fetch, so try to stop it first
    _remote.stop();
    // initialize a new Mdns lookup
    await _remote.start();
    // map the incomming mdns devices to Wled devices
    final remoteDevices = _remote.stream.asyncMap((mdns) async {
      // create a new WledDevice from mdns lookup
      final address = mdns.ip.address.address;
      final device = WledDevice(address: address, name: mdns.srv.name);
      // attempt to fetch data for this WledDevice
      return _update.updateWledDevice(device);
      // only yield actual WledDevices by testing if the data fetch completed
      // succesfully
    }).where((i) => i.status != DeviceStatus.unreachable);

    yield* remoteDevices.map((i) => [i]);
  }

  @override
  void deleteLocal(WledDevice device) {
    _local.removeWledDevice(device);
  }

  @override
  void saveLocal(WledDevice device) {
    _local.removeWledDevice(device);
  }
}
