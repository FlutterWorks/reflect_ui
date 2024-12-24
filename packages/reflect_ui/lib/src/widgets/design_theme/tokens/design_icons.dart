import 'package:flutter/material.dart';

class DesignIcons {
  const DesignIcons({
    required this.chevronLeft,
    required this.chevronRight,
  });

  /// Create the material icons.
  const DesignIcons.material({
    this.chevronLeft = Icons.chevron_left,
    this.chevronRight = Icons.chevron_right,
  });

  final IconData chevronLeft;
  final IconData chevronRight;
}
