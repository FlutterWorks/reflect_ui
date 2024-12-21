import 'package:flutter/material.dart';

/// The base style for a widget.
class WidgetBaseStyle {
  const WidgetBaseStyle({
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
  });

  /// The background color of the widget.
  final WidgetStateProperty<Color?>? backgroundColor;

  /// The foreground color of the widget.
  final WidgetStateProperty<Color?>? foregroundColor;

  /// The border color of the widget.
  final WidgetStateProperty<Color?>? borderColor;

  WidgetStateProperty<BorderSide?>? get side {
    return WidgetStateProperty.resolveWith<BorderSide?>(
      (Set<WidgetState> states) {
        final Color? resolvedColor = borderColor?.resolve(states);
        if (resolvedColor == null) return null;
        return BorderSide(
          width: 1,
          color: resolvedColor,
        );
      },
    );
  }
}
