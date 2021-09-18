import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wled_app/core/core.dart';

part 'api_reponse.freezed.dart';
part 'api_reponse.g.dart';

@freezed
class ApiResponse with _$ApiResponse {
  /// data model containing values from WLED API response
  @ColorConverter()
  const factory ApiResponse({
    required double brightness,
    required bool isOn,
    required Color color,
    required String name,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}