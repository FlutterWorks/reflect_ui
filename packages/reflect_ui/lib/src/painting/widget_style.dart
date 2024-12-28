import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/extensions/brightness.dart';
import 'package:reflect_ui/src/painting/widget_kind.dart';
import 'package:reflect_ui/src/painting/widget_variant.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';
import 'package:reflect_ui/src/widgets/icon/icon_style.dart';

/// A widget style.
class WidgetStyle {
  const WidgetStyle({
    this.size,
    this.margin,
    this.padding,
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.outlineColor,
    this.outlineRadius,
    this.outlineWidth,
    this.boxShadow,
    this.iconStyle,
    this.textStyle,
  });

  /// The size of the widget.
  final WidgetStateProperty<Size?>? size;

  /// A widget style that has a margin.
  final WidgetStateProperty<EdgeInsets?>? margin;

  /// A widget style that has a padding.
  final WidgetStateProperty<EdgeInsets?>? padding;

  /// A widget style that has a background color.
  final WidgetStateProperty<Color?>? backgroundColor;

  /// A widget style that has a foreground color.
  final WidgetStateProperty<Color?>? foregroundColor;

  /// A widget style that has a border color.
  final WidgetStateProperty<Color?>? borderColor;

  /// A widget style that has a border radius.
  final WidgetStateProperty<BorderRadius?>? borderRadius;

  /// A widget style that has a border width.
  final WidgetStateProperty<double?>? borderWidth;

  /// A widget style that has an outline color.
  final WidgetStateProperty<Color?>? outlineColor;

  /// A widget style that has an outline radius.
  final WidgetStateProperty<BorderRadius?>? outlineRadius;

  /// A widget style that has an outline width.
  final WidgetStateProperty<double?>? outlineWidth;

  /// A widget style that has a box shadow.
  final WidgetStateProperty<BoxShadow?>? boxShadow;

  /// A widget style that has an icon style.
  final WidgetStateProperty<IconStyle?>? iconStyle;

  /// A widget style that has a text style.
  final WidgetStateProperty<TextStyle?>? textStyle;

  /// Copies the widget style with the given properties.
  ///
  /// If a property is not provided, the original property will be used.
  WidgetStyle copyWith({
    WidgetStateProperty<Size?>? size,
    WidgetStateProperty<EdgeInsets?>? margin,
    WidgetStateProperty<EdgeInsets?>? padding,
    WidgetStateProperty<Color?>? backgroundColor,
    WidgetStateProperty<Color?>? foregroundColor,
    WidgetStateProperty<Color?>? borderColor,
    WidgetStateProperty<BorderRadius?>? borderRadius,
    WidgetStateProperty<double?>? borderWidth,
    WidgetStateProperty<Color?>? outlineColor,
    WidgetStateProperty<BorderRadius?>? outlineRadius,
    WidgetStateProperty<double?>? outlineWidth,
    WidgetStateProperty<BoxShadow?>? boxShadow,
    WidgetStateProperty<IconStyle?>? iconStyle,
    WidgetStateProperty<TextStyle?>? textStyle,
  }) {
    return WidgetStyle(
      size: size ?? this.size,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderRadius: borderRadius ?? this.borderRadius,
      borderWidth: borderWidth ?? this.borderWidth,
      outlineColor: outlineColor ?? this.outlineColor,
      outlineRadius: outlineRadius ?? this.outlineRadius,
      outlineWidth: outlineWidth ?? this.outlineWidth,
      boxShadow: boxShadow ?? this.boxShadow,
      iconStyle: iconStyle ?? this.iconStyle,
      textStyle: textStyle ?? this.textStyle,
    );
  }
}

/// A color that is configured for a specific state.
class WidgetStateConfiguredColor extends WidgetStateProperty<Color> {
  WidgetStateConfiguredColor({
    required this.color,
    this.colorShade,
    this.colorOpacity,
    this.hoveredColor,
    this.hoveredColorShade,
    this.hoveredColorOpacity,
    this.pressedColor,
    this.pressedColorShade,
    this.pressedColorOpacity,
    this.disabledColor,
    this.disabledColorShade,
    this.disabledColorOpacity,
  });

  final Color? color;
  final int? colorShade;
  final double? colorOpacity;

  final Color? hoveredColor;
  final int? hoveredColorShade;
  final double? hoveredColorOpacity;

  final Color? pressedColor;
  final int? pressedColorShade;
  final double? pressedColorOpacity;

  final Color? disabledColor;
  final int? disabledColorShade;
  final double? disabledColorOpacity;

  @override
  Color resolve(Set<WidgetState> states) {
    Color? seedColor;
    int? seedColorShade;
    double? seedColorOpacity;
    if (states.contains(WidgetState.disabled)) {
      seedColor = disabledColor ?? color;
      seedColorShade = disabledColorShade;
      seedColorOpacity = disabledColorOpacity;
    } else if (states.contains(WidgetState.pressed)) {
      seedColor = pressedColor ?? color;
      seedColorShade = pressedColorShade;
      seedColorOpacity = pressedColorOpacity;
    } else if (states.contains(WidgetState.hovered)) {
      seedColor = hoveredColor ?? color;
      seedColorShade = hoveredColorShade;
      seedColorOpacity = hoveredColorOpacity;
    } else {
      seedColor = color;
      seedColorShade = colorShade;
      seedColorOpacity = colorOpacity;
    }
    Color resolvedColor = seedColor ?? Colors.black;
    if (seedColor is ColorSwatch<int> && seedColorShade != null) {
      if (seedColorShade != -1) {
        resolvedColor = seedColor[seedColorShade]!;
      } else {
        resolvedColor = Colors.transparent;
      }
    }
    if (seedColorOpacity != null) {
      resolvedColor = resolvedColor.withOpacity(seedColorOpacity);
    }
    return resolvedColor;
  }
}

/// A resolver for the base style of a widget.
class WidgetStyleResolver {
  const WidgetStyleResolver();

  /// Resolve the base style for a widget.
  WidgetStyle resolve(
    BuildContext context,
    WidgetKind kind,
    WidgetVariant variant, {
    Color? color,
  }) {
    final themeData = DesignTheme.of(context);
    final brightness = themeData.brightness;
    late Color seedColor;
    if (color != null) {
      seedColor = color;
    } else {
      switch (kind.name) {
        case WidgetKind.primary:
          seedColor = themeData.colors.primary;
        case WidgetKind.secondary:
          seedColor = themeData.colors.secondary;
        case WidgetKind.success:
          seedColor = themeData.colors.success;
        case WidgetKind.danger:
          seedColor = themeData.colors.danger;
        case WidgetKind.warning:
          seedColor = themeData.colors.warning;
        case WidgetKind.info:
          seedColor = themeData.colors.info;
      }
    }
    switch (variant.name) {
      case WidgetVariant.filled:
        return WidgetStyle(
          backgroundColor: WidgetStateConfiguredColor(
            color: seedColor,
            colorShade: 600,
            hoveredColorShade: 700,
            pressedColorShade: 600,
          ),
          foregroundColor: WidgetStateConfiguredColor(
            color: Colors.white,
          ),
        );
      case WidgetVariant.tinted:
        return WidgetStyle(
          backgroundColor: WidgetStateConfiguredColor(
            color: seedColor,
            colorShade: brightness.isLight() ? 50 : null,
            colorOpacity: brightness.isDark() ? 0.15 : null,
            hoveredColorShade: brightness.isLight() ? 100 : null,
            hoveredColorOpacity: brightness.isDark() ? 0.2 : null,
            pressedColorShade: brightness.isLight() ? 50 : null,
            pressedColorOpacity: brightness.isDark() ? 0.15 : null,
          ),
          foregroundColor: WidgetStateConfiguredColor(
            color: seedColor,
            colorShade: 600,
          ),
        );
      case WidgetVariant.outlined:
        return WidgetStyle(
          backgroundColor: WidgetStateConfiguredColor(
            color: seedColor,
            colorShade: -1,
            hoveredColorShade: brightness.isLight() ? 50 : null,
            hoveredColorOpacity: brightness.isDark() ? 0.2 : null,
            pressedColorShade: brightness.isLight() ? 50 : null,
            pressedColorOpacity: brightness.isDark() ? 0.2 : null,
          ),
          foregroundColor: WidgetStateConfiguredColor(
            color: seedColor,
            colorShade: 600,
          ),
          borderColor: WidgetStateConfiguredColor(
            color: seedColor,
            colorShade: 600,
          ),
        );
      case WidgetVariant.subtle:
        return WidgetStyle(
          backgroundColor: WidgetStateConfiguredColor(
            color: seedColor,
            colorShade: -1,
            hoveredColorShade: brightness.isLight() ? 50 : null,
            hoveredColorOpacity: brightness.isDark() ? 0.2 : null,
            pressedColorShade: brightness.isLight() ? 50 : null,
            pressedColorOpacity: brightness.isDark() ? 0.2 : null,
          ),
          foregroundColor: WidgetStateConfiguredColor(
            color: seedColor,
            colorShade: 600,
          ),
        );
      case WidgetVariant.transparent:
        return WidgetStyle(
          backgroundColor: WidgetStateConfiguredColor(
            color: Colors.transparent,
          ),
          foregroundColor: WidgetStateConfiguredColor(
            color: seedColor,
            colorShade: 600,
          ),
        );
    }
    throw UnimplementedError('Unknown variant: ${variant.name}');
  }
}
