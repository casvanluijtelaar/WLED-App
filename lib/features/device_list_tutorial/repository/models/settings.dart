import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  @HiveType(typeId: 1)
  const factory Settings({
    @HiveField(0) @Default(false) bool hasCompletedTutorial,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}

class SettingsAdapter extends TypeAdapter<Settings> {
  @override
  final typeId = 1;

  @override
  Settings read(BinaryReader reader) {
    return Settings.fromJson(Map<String, dynamic>.from(reader.read() as Map));
  }

  @override
  void write(BinaryWriter writer, Settings obj) {
    writer.write(obj.toJson());
  }
}
