import 'package:flutter/material.dart';

/// An extension on [Color] to add methods for working with shades.
extension ColorWithShade on Color {
  /// Returns a color that is a shade of the current color.
  Color withShade(int shade) {
    if (this is MaterialColor) {
      return (this as MaterialColor)[shade] ?? this;
    } else {
      debugPrint('Color $this is not a MaterialColor');
    }
    return this;
  }
}
