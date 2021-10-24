import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:wled/core/core.dart';

part 'device_group.freezed.dart';
part 'device_group.g.dart';

@freezed
class DeviceGroup with _$DeviceGroup {
  @HiveType(typeId: 3)
  const factory DeviceGroup({
    @HiveField(0) @Default('') String name,
    @HiveField(1) @Default(<WledDevice>[]) List<WledDevice> devices,
  }) = _DeviceGroup;

  factory DeviceGroup.fromJson(Map<String, dynamic> json) =>
      _$DeviceGroupFromJson(json);
}

class DeviceGroupAdapter extends TypeAdapter<DeviceGroup> {
  @override
  final typeId = 3;

  @override
  DeviceGroup read(BinaryReader reader) {
    return DeviceGroup.fromJson(
      Map<String, dynamic>.from(reader.read() as Map),
    );
  }

  @override
  void write(BinaryWriter writer, DeviceGroup obj) {
    writer.write(obj.toJson());
  }
}
