import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'xml_api_reponse.freezed.dart';

@freezed
class XmlApiResponse with _$XmlApiResponse {
  /// data model containing values from WLED API response
  const factory XmlApiResponse({
    required double brightness,
    required bool isOn,
    required Color color,
    required String name,
  }) = _XmlApiResponse;
}
