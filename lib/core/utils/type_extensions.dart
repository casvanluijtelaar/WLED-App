import 'package:flutter/painting.dart';

import '../core.dart';

/// custom extensions specifically for working with [WledDevice] lists
extension WledListExtension on List<WledDevice> {
  /// contains operation only comparing the WledDevice.address properties
  bool containsWithAddress(WledDevice device) {
    for (final e in this) {
      if (e.address == device.address) return true;
    }
    return false;
  }

  /// only add device to list if a device with the same ip isn't 
  /// allready in the list
  void addIfNotContains(WledDevice d) {
    final index = indexWhere((i) => i.address == d.address);
    if (index == -1) add(d);
  }

  /// compares device against list, if it exists replace it, otherwise add it
  void addOrReplace(WledDevice d) {
    final index = indexWhere((i) => i.address == d.address);
    index == -1 ? add(d) : this[index] = d;
  }

  /// check if any of the device in the list are currently enabled
  bool get anyOn => any((e) => e.isEnabled);
}

extension NumExtension<T extends num> on num {
  /// maps a number from an old range to a new range
  double map(T oldStart, T oldEnd, T newStart, T newEnd) {
    final slope = (newEnd - newStart) / (oldEnd - oldStart);
    return newStart + slope * (this - oldStart);
  }
}

extension StringExtension on String {
  bool parseBool() => toLowerCase() == 'true';
}

extension ColorExtension on Color {
  /// darkens the color by an [amount] where 1.0 is min brightness and 0.0 is
  /// no changes
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness(
      (hsl.lightness - amount).clamp(0.0, 1.0),
    );

    return hslDark.toColor();
  }

  /// brightens the color by an [amount] where 1.0 is max brightness and 0.0 is
  /// no changes
  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness(
      (hsl.lightness + amount).clamp(0.0, 1.0),
    );

    return hslLight.toColor();
  }

  /// clamps a color's brightness values between a [min] and [max] were both
  /// range between 0 and 1
  Color clamp(double min, double max) {
    assert(min >= 0 && min <= 1);
    assert(max >= 0 && max <= 1);
    assert(min < max);

    final l = computeLuminance();
    if (l < min) return lighten(min - l);
    if (l > max) return darken(l - max);

    return this;
  }
}
