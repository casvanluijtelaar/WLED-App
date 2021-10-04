import 'package:flutter_test/flutter_test.dart';

import 'package:wled/core/core.dart';

void main() {
  group('test string extensions', () {
    test('convert a string to a bool', () {
      const bool = 'true';
      expect(bool.parseBool(), true);
    });
  });
}
