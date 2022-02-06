import 'package:http/http.dart' as http;

class HttpConnectionException implements Exception {}
class HttpStatusException implements Exception {}

/// class wrapping all the HTTP interactions
class HttpConnection {
  
  /// sends [data] to the provided [url], can throw
  /// [HttpConnectionException] or [HttpStatusException]
  Future<String> sendApiCall(String url, [String? data]) async {
    try {

      final result = await http
          .post(Uri.parse('$url/json'), body: data)
          .timeout(const Duration(seconds: 4));

      if (result.statusCode != 200) throw HttpStatusException();

      return result.body;
    } catch (e) {
      throw HttpConnectionException();
    }
  }
}
