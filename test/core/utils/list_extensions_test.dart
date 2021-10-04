import 'package:flutter_test/flutter_test.dart';
import 'package:wled/core/core.dart';

void main() {
  group('List extension tests', () {
    test('when adding an existing WledDevice, then replace it in the list', () {
      final devices = <WledDevice>[
        const WledDevice(address: '0.0.0.0', name: 'name'),
        const WledDevice(address: '1.1.1.1', name: 'name'),
      ];

      devices.addOrReplace(devices[0]);

      expect(devices.length, 2);
    });

    test('when adding a new WledDevice then add it to the list', () {
      final devices = <WledDevice>[
        const WledDevice(address: '0.0.0.0', name: 'name'),
        const WledDevice(address: '1.1.1.1', name: 'name'),
      ];
      const newDevice = WledDevice(address: '2.2.2.2', name: 'name');

      devices.addOrReplace(newDevice);

      expect(devices.length, 3);
    });
  });
}
