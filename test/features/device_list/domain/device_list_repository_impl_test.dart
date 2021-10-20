import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wled/core/core.dart';
import 'package:wled/core/repository/device_update_repository.dart';
import 'package:wled/features/device_list/data/local_device_discovery.dart';
import 'package:wled/features/device_list/data/mdns_device_discovery.dart';
import 'package:wled/features/device_list/domain/device_list_repository_impl.dart';

import '../device_list_test_utils.dart';

class MockMdnsDeviceDiscovery extends Mock implements MdnsDeviceDiscovery {}

class MockLocalDeviceDiscovery extends Mock implements LocalDeviceDiscovery {}

class MockDeviceUpdateRepository extends Mock
    implements DeviceUpdateRepository {}

void main() {
  final remote = MockMdnsDeviceDiscovery();
  final local = MockLocalDeviceDiscovery();
  final update = MockDeviceUpdateRepository();

  final repository = DeviceListRepositoryImpl(remote, local, update);

  setUp(() {
    when(() => update.updateWledDevice(any())).thenAnswer(
      (invocation) => Future.value(
        (invocation.positionalArguments[0] as WledDevice)
            .copyWith(status: DeviceStatus.error),
      ),
    );
  });

  test('when fetching local  all get returned regardless of status', () {
    when(local.getWledDevice).thenReturn(testDevices);

    repository.getLocalWledDevices().then((devices) {
      expect(
        const ListEquality<WledDevice>().equals(devices, testDevices),
        isTrue,
      );
    });
  });

  test('when fetching remote only return functional devices', () {
    when(() => remote.stream)
        .thenAnswer((_) => Stream<MDNSrecord>.fromIterable([testMdnsRecord]));

    final stream = repository.getRemoteWledDevices();
    stream.isEmpty.then((b) => expect(b, isTrue));
  });

  test('yield local devices before looking up remotes', () {
    when(local.getWledDevice).thenReturn([testDevices[0]]);
    when(() => remote.stream)
        .thenAnswer((_) => Stream<MDNSrecord>.fromIterable([testMdnsRecord]));

    final stream = repository.getWledDevices();

    expect(
      stream,
      emitsInOrder(<WledDevice>[testDevices[0], testMdnsRecordAnswer]),
    );
  });
}
