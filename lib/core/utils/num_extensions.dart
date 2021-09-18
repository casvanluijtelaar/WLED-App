extension NumExtension<T extends num> on num {
  /// maps a number from an old range to a new range
  num map(T oldStart, T oldEnd, T newStart, T newEnd) {
    final slope = (newEnd - newStart) / (oldEnd - oldStart);
    return newStart + slope * (this - oldStart);
  }
}
