import 'package:flutter/widgets.dart';

class ColorDescriptor {
  const ColorDescriptor({
    this.color,
    this.shade,
    this.opacity,
    this.highContrastColor,
    this.highContrastShade,
    this.highContrastOpacity,
  });

  const ColorDescriptor.shade(int shade) : this(shade: shade);

  const ColorDescriptor.opacity(double opacity) : this(opacity: opacity);

  final Color? color;
  final int? shade;
  final double? opacity;

  final Color? highContrastColor;
  final int? highContrastShade;
  final double? highContrastOpacity;
}
