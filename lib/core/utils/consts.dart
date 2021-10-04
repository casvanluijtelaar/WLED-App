import 'package:flutter/cupertino.dart';

abstract class Consts {
  /// padding
  static const paddingLarge = 32.0;
  static const paddingMedium = 20.0;
  static const paddingSmall = 8.0;
  static const paddingExtraSmall = 4.0;

  /// duration
  static const durationLarge = Duration(milliseconds: 800);
  static const durationMedium = Duration(milliseconds: 400);
  static const durationShort = Duration(milliseconds: 200);

  /// assets
  static const assetLoading = 'assets/rive/loading.riv';

  /// spaces
  static const spacerSmall = SizedBox(height: 4);
  static const spacerMedium = SizedBox(height: 8);
  static const spacerLarge = SizedBox(height: 16);

  /// directories
  static const devicesBox = 'devices';
}
