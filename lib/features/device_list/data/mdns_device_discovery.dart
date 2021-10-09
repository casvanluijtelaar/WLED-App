import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:multicast_dns/multicast_dns.dart';

/// class handling listening for multi_dns devices
@injectable
class MdnsDeviceDiscovery {
  /// mDNS default wled address
  static const _name = '_wled._tcp';

  /// creates the MDnsClient
  final _client = MDnsClient(rawDatagramSocketFactory: _socketFactory);

  /// we have to overwrite the reusePort because it's
  /// currently not supported on windows
  /// https://github.com/flutter/flutter/issues/55173
  static Future<RawDatagramSocket> _socketFactory(
    dynamic host,
    int port, {
    bool? reuseAddress,
    bool? reusePort,
    int? ttl,
  }) {
    return RawDatagramSocket.bind(InternetAddress.anyIPv4, port, ttl: ttl!);
  }


  /// receive an instance of the stream containing the service records for
  /// listening to.
  Stream<MDNSrecord> get stream async* {
    _client.stop();
    await _client.start();

    final ptrQuery = ResourceRecordQuery.serverPointer(_name);
    final ptrRecord = _client.lookup<PtrResourceRecord>(ptrQuery);

    await for (final ptr in ptrRecord) {
      final srvQuery = ResourceRecordQuery.service(ptr.domainName);
      final srvRecord = _client.lookup<SrvResourceRecord>(srvQuery);

      final srv = await srvRecord.first; // only use the first service record

      final ipQuery = ResourceRecordQuery.addressIPv4(srv.target);
      final ipRecord = _client.lookup<IPAddressResourceRecord>(ipQuery);

      final ip = await ipRecord.first; // only use the first ip record
      yield MDNSrecord(ptr, srv, ip);
    }
  }
}

class MDNSrecord {
  MDNSrecord(this.ptr, this.srv, this.ip);

  final PtrResourceRecord ptr;
  final SrvResourceRecord srv;
  final IPAddressResourceRecord ip;
}
