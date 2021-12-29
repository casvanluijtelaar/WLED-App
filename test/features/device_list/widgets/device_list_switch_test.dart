import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wled/features/device_list/widgets/device_list_switch.dart';

void main() {
  Widget baseWidget({bool value = false}) => MaterialApp(
        home: Scaffold(
          body: DeviceListSwitch(value: value, key: const Key('switch')),
        ),
      );

  testWidgets(
    'switch position should change based on value',
    (tester) async {
      await tester.pumpWidget(baseWidget());

      final switchBody = find.byKey(const Key('switch'));
      final switchPosition = find.byKey(const Key('test_switch_position'));

      expect(switchPosition, findsOneWidget);
      expect(tester.getTopLeft(switchPosition), Offset.zero);

      await tester.tap(switchBody);
      await tester.pumpAndSettle();

      expect(
        tester.getTopRight(switchPosition),
        tester.getSize(switchBody).topRight(Offset.zero),
      );
    },
  );
}
