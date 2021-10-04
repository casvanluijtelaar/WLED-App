import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart';

import 'package:wled/core/core.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key, this.text}) : super(key: key);

  final String? text;

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
            if (text != null)
              Padding(
                padding: const EdgeInsets.all(Consts.paddingSmall),
                child: Text(
                  text!,
                  style: theme.textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              )
          ],
        ),
      ),
    );
  }
}
