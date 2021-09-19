import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart';

import 'package:wled_app/core/core.dart';

class DeviceListLoadingWidget extends StatelessWidget {
  const DeviceListLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return SizedBox.expand(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 50,
              height: 50,
              child: RiveAnimation.asset(
                Consts.assetLoading,
                antialiasing: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Consts.paddingSmall),
              child: Text(
                context.locale.deviceListLoading,
                style: theme.textTheme.bodyText1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
