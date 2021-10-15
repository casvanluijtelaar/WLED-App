import 'dart:io';

import 'package:multicast_dns/multicast_dns.dart';
import 'package:wled/core/core.dart';
import 'package:wled/features/device_list/data/mdns_device_discovery.dart';

final testMdnsRecord = MDNSrecord(
  const PtrResourceRecord('', 0, domainName: ''),
  const SrvResourceRecord(
    'name',
    0,
    port: 0,
    priority: 0,
    target: '',
    weight: 0,
  ),
  IPAddressResourceRecord('name', 0, address: InternetAddress('0.0.0.0')),
);

const testMdnsRecordAnswer = WledDevice(
  address: '0.0.0.0',
  name: 'name',
  status: DeviceStatus.error,
);

const testDevices = [
  WledDevice(address: 'a', name: 'first', status: DeviceStatus.error),
  WledDevice(address: 'a', name: 'second', status: DeviceStatus.error),
  WledDevice(address: 'b', name: 'third', status: DeviceStatus.error),
];
