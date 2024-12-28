import 'package:flutter/material.dart';

class ThemeIcons {
  const ThemeIcons({
    required this.chevronLeft,
    required this.chevronRight,
  });

  /// Create the material icons.
  const ThemeIcons.material({
    this.chevronLeft = Icons.chevron_left,
    this.chevronRight = Icons.chevron_right,
  });

  final IconData chevronLeft;
  final IconData chevronRight;
}
