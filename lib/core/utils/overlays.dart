import 'package:flutter/material.dart';
import 'package:wled/core/core.dart';
import 'package:wled/core/utils/consts.dart';

/// holder class for overlay related implementations
abstract class Overlays {
  /// shows a basic that animates in from the bottom of the screen
  static Future<T?> showDialog<T>(BuildContext context, Widget child) {
    return showGeneralDialog<T>(
      barrierLabel: 'add',
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Kduration.medium,
      context: context,
      pageBuilder: (context, anim1, anim2) => SafeArea(child: child),
      transitionBuilder: (context, anim1, anim2, child) {
        return FadeTransition(
          opacity: Tween<double>(begin: 0, end: 1).animate(anim1),
          child: child,
        );
      },
    );
  }
}
