import 'package:flutter_test/flutter_test.dart';

import 'package:wled/core/core.dart';

void main() {
  group('number extension tests', () {
    test('map an integer to a new range', () {
      const old = 10;
      const oldMin = 0;
      const oldMax = 100;

      const neww = 1;
      const newMin = 0;
      const newMax = 10;

      final updated = old.map(oldMin, oldMax, newMin, newMax);

      expect(updated, neww);
    });

    test('map a double to a new range', () {
      const old = 10.0;
      const oldMin = 0.0;
      const oldMax = 100.0;

      const neww = 1.0;
      const newMin = 0.0;
      const newMax = 10.0;

      final updated = old.map(oldMin, oldMax, newMin, newMax);

      expect(updated, neww);
    });
  });
}
