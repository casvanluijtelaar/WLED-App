import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

class HttpConnectionException implements Exception {}

class HttpStatusException implements Exception {}

/// class wrapping all the HTTP interactions
@lazySingleton
class HttpConnection {
  /// sends [data] to the provided [url], can throw
  /// [HttpConnectionException] or [HttpStatusException]
  Future<String> sendApiCall(String url, [String data = '']) async {
    var uri = '$url/win';
    if (data.isNotEmpty) uri += '&$data';

    try {
      const timeoutDelay = Duration(seconds: 4);
      final result = await http.get(Uri.parse(uri)).timeout(timeoutDelay);

      if (result.statusCode != 200) throw HttpStatusException();

      return result.body;
    } catch (e) {
      throw HttpConnectionException();
    }
  }
}
