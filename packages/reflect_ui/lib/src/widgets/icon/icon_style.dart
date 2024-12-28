import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

@immutable
class IconStyle with Diagnosticable {
  const IconStyle({
    this.color,
    this.size,
  });

  /// The color of the icon.
  final Color? color;

  /// The size of the icon.
  final double? size;

  IconStyle copyWith({
    Color? color,
    double? size,
  }) {
    return IconStyle(
      color: color ?? this.color,
      size: size ?? this.size,
    );
  }
}
