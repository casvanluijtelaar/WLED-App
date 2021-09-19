import 'dart:developer';

import 'package:http/http.dart' as http;

class HttpConnectionException implements Exception {}

class HttpStatusException implements Exception {}

/// class wrapping all the HTTP interactions
abstract class HttpConnection {
  /// sends [data] to the provided [url], can throw
  /// [HttpConnectionException] or [HttpStatusException]
  static Future<String> sendApiCall(String url, String data) async {
    var uri = '$url/win';
    if (data.isNotEmpty) uri += '&$data';

    try {
      final result = await http.get(Uri.parse(uri));
      if (result.statusCode != 200) throw HttpStatusException();

      return result.body;
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      throw HttpConnectionException();
    }
  }
}
