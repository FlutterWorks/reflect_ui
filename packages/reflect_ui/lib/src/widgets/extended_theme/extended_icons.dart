import 'package:flutter/material.dart';

class ExtendedIcons {
  const ExtendedIcons({
    this.chevronLeft = Icons.chevron_left,
    this.chevronRight = Icons.chevron_right,
  });

  final IconData chevronLeft;
  final IconData chevronRight;

  static const ExtendedIcons defaultInstance = ExtendedIcons();
}
