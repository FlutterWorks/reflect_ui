import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/widget_kind.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
import 'package:reflect_ui/src/core/widget_variant.dart';
import 'package:reflect_ui/src/painting/widget_style.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';

/// The style of a alert.
///
/// A alert style is a set of properties that define the appearance of a alert.
class AlertStyle extends WidgetStyle with Diagnosticable {
  const AlertStyle({
    super.minSize,
    super.margin,
    super.padding,
    super.backgroundColor,
    super.foregroundColor,
    super.borderColor,
    super.borderRadius,
    super.borderWidth,
    super.outlineColor,
    super.outlineRadius,
    super.outlineWidth,
    super.boxShadow,
    super.iconStyle,
    super.textStyle,
  });

  /// Creates a alert style from a theme.
  factory AlertStyle.fromTheme(DesignThemeData theme) {
    final baseStyle = theme.baseStyle;
    return AlertStyle(
      minSize: baseStyle.minSize,
      margin: baseStyle.margin,
      padding: baseStyle.padding,
      backgroundColor: baseStyle.backgroundColor,
      foregroundColor: baseStyle.foregroundColor,
      borderColor: baseStyle.borderColor,
      borderRadius: baseStyle.borderRadius,
      borderWidth: baseStyle.borderWidth,
      outlineColor: baseStyle.outlineColor,
      outlineRadius: baseStyle.outlineRadius,
      outlineWidth: baseStyle.outlineWidth,
      boxShadow: baseStyle.boxShadow,
      iconStyle: baseStyle.iconStyle,
      textStyle: baseStyle.textStyle,
    );
  }

  EffectiveAlertStyle resolve(
    Set<WidgetState> states, [
    WidgetKind? kind,
    WidgetVariant? variant,
    WidgetSize? size,
    DesignThemeData? theme,
  ]) {
    return EffectiveAlertStyle(
      minSize: minSize.resolveWith(
        states,
        kind: kind,
        variant: variant,
        size: size,
      ),
      padding: padding.resolveWith(
        states,
        kind: kind,
        variant: variant,
        size: size,
      ),
      backgroundColor: backgroundColor.resolveWith(
        states,
        kind: kind,
        variant: variant,
        size: size,
        theme: theme,
      ),
      foregroundColor: foregroundColor.resolveWith(
        states,
        kind: kind,
        variant: variant,
        size: size,
        theme: theme,
      ),
      borderColor: borderColor.resolveWith(
        states,
        kind: kind,
        variant: variant,
        size: size,
        theme: theme,
      ),
      borderRadius: borderRadius.resolveWith(
        states,
        kind: kind,
        variant: variant,
        size: size,
        theme: theme,
      ),
      borderWidth: borderWidth.resolveWith(
        states,
        kind: kind,
        variant: variant,
        size: size,
      ),
      textStyle: textStyle.resolveWith(
        states,
        kind: kind,
        variant: variant,
        size: size,
        theme: theme,
      ),
    );
  }
}

class EffectiveAlertStyle {
  EffectiveAlertStyle({
    required this.minSize,
    required this.padding,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.borderColor,
    required this.borderRadius,
    required this.borderWidth,
    required this.textStyle,
  });

  final Size minSize;
  final EdgeInsets padding;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final TextStyle textStyle;
}
