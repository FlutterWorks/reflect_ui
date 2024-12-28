import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

/// An extension on [Color] to add methods for working with shades.
extension ColorWithShade on Color {
  /// Returns a color that is a shade of the current color.
  Color withShade(int shade) {
    if (this is ColorSwatch) {
      return (this as ColorSwatch<int>)[shade] ?? this;
    } else {
      debugPrint('Color $this is not a ColorSwatch<int>');
    }
    return this;
  }
}
