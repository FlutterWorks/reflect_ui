import 'package:flutter/widgets.dart';

class ColorDescriptor {
  const ColorDescriptor({
    this.color,
    this.shade,
    this.opacity,
  });

  final Color? color;
  final int? shade;
  final double? opacity;
}
