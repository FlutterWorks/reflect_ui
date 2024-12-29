import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/widget_kind.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
import 'package:reflect_ui/src/core/widget_variant.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';
import 'package:reflect_ui/src/widgets/icon/icon_style.dart';

/// A widget style.
class WidgetStyle {
  const WidgetStyle({
    this.minSize = const WidgetPropertyAll(Size.zero),
    this.margin = const WidgetPropertyAll(EdgeInsets.zero),
    this.padding = const WidgetPropertyAll(EdgeInsets.zero),
    this.backgroundColor = const WidgetPropertyAll(Colors.transparent),
    this.foregroundColor = const WidgetPropertyAll(Colors.transparent),
    this.borderColor = const WidgetPropertyAll(Colors.transparent),
    this.borderRadius = const WidgetPropertyAll(BorderRadius.zero),
    this.borderWidth = const WidgetPropertyAll(0),
    this.outlineColor = const WidgetPropertyAll(Colors.transparent),
    this.outlineRadius = const WidgetPropertyAll(BorderRadius.zero),
    this.outlineWidth = const WidgetPropertyAll(0),
    this.boxShadow = const WidgetPropertyAll(BoxShadow()),
    this.iconStyle = const WidgetPropertyAll(IconStyle()),
    this.textStyle = const WidgetPropertyAll(TextStyle()),
  });

  /// The size of the widget.
  final WidgetProperty<Size> minSize;

  /// A widget style that has a margin.
  final WidgetProperty<EdgeInsets> margin;

  /// A widget style that has a padding.
  final WidgetProperty<EdgeInsets> padding;

  /// A widget style that has a background color.
  final WidgetProperty<Color> backgroundColor;

  /// A widget style that has a foreground color.
  final WidgetProperty<Color> foregroundColor;

  /// A widget style that has a border color.
  final WidgetProperty<Color> borderColor;

  /// A widget style that has a border radius.
  final WidgetProperty<BorderRadius> borderRadius;

  /// A widget style that has a border width.
  final WidgetProperty<double> borderWidth;

  /// A widget style that has an outline color.
  final WidgetProperty<Color> outlineColor;

  /// A widget style that has an outline radius.
  final WidgetProperty<BorderRadius> outlineRadius;

  /// A widget style that has an outline width.
  final WidgetProperty<double> outlineWidth;

  /// A widget style that has a box shadow.
  final WidgetProperty<BoxShadow> boxShadow;

  /// A widget style that has an icon style.
  final WidgetProperty<IconStyle> iconStyle;

  /// A widget style that has a text style.
  final WidgetProperty<TextStyle> textStyle;
}

/// A color that is configured for a specific state.
class WidgetStateConfiguredColor extends WidgetProperty<Color> {
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
  Color resolve(
    Set<WidgetState> states,
  ) {
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

  @override
  Color resolveWith(
    Set<WidgetState> states, {
    WidgetKind? kind,
    WidgetVariant? variant,
    WidgetSize? size,
    Map<String, dynamic>? extra,
    DesignThemeData? theme,
  }) {
    throw UnimplementedError();
  }
}

// /// A resolver for the base style of a widget.
// class WidgetStyleResolver {
//   const WidgetStyleResolver();

//   /// Resolve the base style for a widget.
//   WidgetStyle resolve(
//     BuildContext context,
//     WidgetKind kind,
//     WidgetVariant variant, {
//     Color? color,
//   }) {
//     final themeData = DesignTheme.of(context);
//     final brightness = themeData.brightness;
//     late Color seedColor;
//     if (color != null) {
//       seedColor = color;
//     } else {
//       switch (kind.namedKind) {
//         case NamedWidgetKind.primary:
//           seedColor = themeData.colors.primary;
//         case NamedWidgetKind.secondary:
//           seedColor = themeData.colors.secondary;
//         case NamedWidgetKind.success:
//           seedColor = themeData.colors.success;
//         case NamedWidgetKind.danger:
//           seedColor = themeData.colors.danger;
//         case NamedWidgetKind.warning:
//           seedColor = themeData.colors.warning;
//         case NamedWidgetKind.info:
//           seedColor = themeData.colors.info;
//       }
//     }
//     switch (variant.namedVariant) {
//       case NamedWidgetVariant.filled:
//         return WidgetStyle(
//           backgroundColor: WidgetStateConfiguredColor(
//             color: seedColor,
//             colorShade: 600,
//             hoveredColorShade: 700,
//             pressedColorShade: 600,
//           ),
//           foregroundColor: WidgetStateConfiguredColor(
//             color: Colors.white,
//           ),
//         );
//       case NamedWidgetVariant.tinted:
//         return WidgetStyle(
//           backgroundColor: WidgetStateConfiguredColor(
//             color: seedColor,
//             colorShade: brightness.isLight() ? 50 : null,
//             colorOpacity: brightness.isDark() ? 0.15 : null,
//             hoveredColorShade: brightness.isLight() ? 100 : null,
//             hoveredColorOpacity: brightness.isDark() ? 0.2 : null,
//             pressedColorShade: brightness.isLight() ? 50 : null,
//             pressedColorOpacity: brightness.isDark() ? 0.15 : null,
//           ),
//           foregroundColor: WidgetStateConfiguredColor(
//             color: seedColor,
//             colorShade: 600,
//           ),
//         );
//       case NamedWidgetVariant.outlined:
//         return WidgetStyle(
//           backgroundColor: WidgetStateConfiguredColor(
//             color: seedColor,
//             colorShade: -1,
//             hoveredColorShade: brightness.isLight() ? 50 : null,
//             hoveredColorOpacity: brightness.isDark() ? 0.2 : null,
//             pressedColorShade: brightness.isLight() ? 50 : null,
//             pressedColorOpacity: brightness.isDark() ? 0.2 : null,
//           ),
//           foregroundColor: WidgetStateConfiguredColor(
//             color: seedColor,
//             colorShade: 600,
//           ),
//           borderColor: WidgetStateConfiguredColor(
//             color: seedColor,
//             colorShade: 600,
//           ),
//         );
//       case NamedWidgetVariant.subtle:
//         return WidgetStyle(
//           backgroundColor: WidgetStateConfiguredColor(
//             color: seedColor,
//             colorShade: -1,
//             hoveredColorShade: brightness.isLight() ? 50 : null,
//             hoveredColorOpacity: brightness.isDark() ? 0.2 : null,
//             pressedColorShade: brightness.isLight() ? 50 : null,
//             pressedColorOpacity: brightness.isDark() ? 0.2 : null,
//           ),
//           foregroundColor: WidgetStateConfiguredColor(
//             color: seedColor,
//             colorShade: 600,
//           ),
//         );
//       case NamedWidgetVariant.transparent:
//         return WidgetStyle(
//           backgroundColor: WidgetStateConfiguredColor(
//             color: Colors.transparent,
//           ),
//           foregroundColor: WidgetStateConfiguredColor(
//             color: seedColor,
//             colorShade: 600,
//           ),
//         );
//     }
//   }
// }
