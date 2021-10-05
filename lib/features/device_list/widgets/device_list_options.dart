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
    final locale = context.locale;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (!device.isSaved)
          ListTile(
            leading: const Icon(FeatherIcons.save),
            title:  Text(locale.deviceListOptionsSave),
            subtitle: Text(locale.deviceListOptionsSaveDisc),
            onTap: () {
              Navigator.pop(context);
              onSave?.call();
            },
          )
        else ...[
          ListTile(
            leading: const Icon(FeatherIcons.edit),
            title:  Text(locale.deviceListOptionsEdit),
            subtitle:  Text(locale.deviceListOptionsEditDisc),
            onTap: () {
              Navigator.pop(context);
              onEdit?.call();
            },
          ),
          ListTile(
            leading: const Icon(FeatherIcons.delete),
            title:  Text(locale.deviceListOptionsDelete),
            subtitle:  Text(locale.deviceLidtOptionsDeleteDisc),
            onTap: () {
              Navigator.pop(context);
              onDelete?.call();
            },
          ),
        ],
      ],
    );
  }
}
