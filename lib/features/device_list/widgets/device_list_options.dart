import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:wled/core/core.dart';

class DeviceListOptions extends StatelessWidget {
  const DeviceListOptions({
    Key? key,
    required this.device,
    this.onSave,
    this.onEdit,
    this.onDelete,
  }) : super(key: key);

  final WledDevice device;
  final VoidCallback? onSave;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (device.isSaved)
          ListTile(
            leading: const Icon(FeatherIcons.save),
            title: const Text('Save'),
            subtitle: const Text('Remember this device'),
            onTap: () {
              Navigator.pop(context);
              onSave?.call();
            },
          ),
        if (device.isSaved) ...[
          ListTile(
            leading: const Icon(FeatherIcons.edit),
            title: const Text('Edit'),
            subtitle: const Text('Change device settings'),
            onTap: () {
              Navigator.pop(context);
              onSave?.call();
            },
          ),
          ListTile(
            leading: const Icon(FeatherIcons.delete),
            title: const Text('Delete'),
            subtitle: const Text('Remove from this device'),
            onTap: () {
              Navigator.pop(context);
              onSave?.call();
            },
          ),
        ],
      ],
    );
  }
}
