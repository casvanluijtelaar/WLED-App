import 'package:flutter/rendering.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

class ColorConverter implements JsonConverter<Color, int> {
  const ColorConverter();

  static const defaultColor = Color(0xFF303636);

  @override
  Color fromJson(int json) => Color(json);

  @override
  int toJson(Color json) => json.value;
}

class ColorAdapter extends TypeAdapter<Color> {
  @override
  Color read(BinaryReader reader) => Color(reader.readInt());

  @override
  void write(BinaryWriter writer, Color obj) => writer.writeInt(obj.value);

  @override
  int get typeId => 0;
}
