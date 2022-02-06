import 'package:flutter/rendering.dart';
import 'package:json_annotation/json_annotation.dart';

class ColorConverter implements JsonConverter<List<Color>, List<List<int>>> {
  const ColorConverter();

  static const defaultColor = Color(0xFF303636);

  @override
  List<Color> fromJson(List<List<int>> json) {
    return json.map((i) => Color.fromRGBO(i[0], i[1], i[2], 1)).toList();
  }

  @override
  List<List<int>> toJson(List<Color> colors) {
    return colors.map((c) => [c.red, c.green, c.blue]).toList();
  }
}
