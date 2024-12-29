import 'package:flutter/widgets.dart';

class ColorDescriptor {
  const ColorDescriptor({
    this.color,
    this.shade,
    this.opacity,
  });

  const ColorDescriptor.shade(int shade) : this(shade: shade);

  const ColorDescriptor.opacity(double opacity) : this(opacity: opacity);

  final Color? color;
  final int? shade;
  final double? opacity;
}
