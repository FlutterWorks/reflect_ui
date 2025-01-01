import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/widget_kind.dart';
import 'package:reflect_ui/src/core/widget_radius.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
import 'package:reflect_ui/src/core/widget_variant.dart';
import 'package:reflect_ui/src/painting/widget_style.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';

/// The style of a badge.
///
/// A badge style is a set of properties that define the appearance of a badge.
class BadgeStyle extends WidgetStyle with Diagnosticable {
  const BadgeStyle({
    super.minSize,
    super.margin,
    super.padding,
    super.backgroundColor,
    super.foregroundColor,
    super.borderColor,
    super.borderRadius,
    super.borderWidth,
    super.boxShadow,
    super.iconStyle,
    super.textStyle,
  });

  EffectiveBadgeStyle resolve(
    Set<WidgetState> states, [
    WidgetKind? kind,
    WidgetVariant? variant,
    WidgetSize? size,
    WidgetRadius? radius,
    DesignThemeData? theme,
  ]) {
    return EffectiveBadgeStyle(
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
        radius: radius,
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

class EffectiveBadgeStyle {
  EffectiveBadgeStyle({
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
