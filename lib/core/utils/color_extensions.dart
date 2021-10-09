import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

extension ColorExtension on Color {
  /// darkens the color by an [amount] where 1.0 is min brightness and 0.0 is
  /// no changes
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  /// brightens the color by an [amount] where 1.0 is max brightness and 0.0 is
  /// no changes
  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  /// clamps a color's rgb values between a [min] and [max]
  Color clamp(double min, double max) {
    assert(min >= 0 && min <= 1);
    assert(max >= 0 && max <= 1);

    final l = computeLuminance();
    if (l < min) return lighten(min - l);
    if (l > max) return darken(l - max);
    return this;
  }
}
