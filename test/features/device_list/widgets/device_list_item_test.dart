import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wled/core/core.dart';
import 'package:wled/features/device_list/widgets/device_list_item.dart';
import 'package:wled/features/device_list/widgets/device_list_slider.dart';

void main() {
  const device = WledDevice(
    address: '1.2.3.4',
    name: 'test',
    status: DeviceStatus.functional,
    isEnabled: true,
    color: Colors.red,
  );

  Widget baseWidget(WledDevice device) => MaterialApp(
        home: Scaffold(body: DeviceListItem(device: device)),
      );

  testWidgets(
    'item should render slider with valid WledDevice',
    (tester) async {
      await tester.pumpWidget(baseWidget(device));
      expect(find.byType(DeviceListSlider), findsOneWidget);
    },
  );

  testWidgets(
    'item should not render slider with invalid WledDevice',
    (tester) async {
      await tester.pumpWidget(
          baseWidget(device.copyWith(status: DeviceStatus.unreachable)));
      expect(find.byType(DeviceListSlider), findsNothing);
    },
  );

  testWidgets(
    'item should render device name and ip',
    (tester) async {
      await tester.pumpWidget(baseWidget(device));
      expect(find.text(device.name), findsOneWidget);
      expect(find.text(device.address), findsOneWidget);
    },
  );
}
