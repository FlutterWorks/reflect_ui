import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/color_descriptor.dart';
import 'package:reflect_ui/src/core/colors.dart';
import 'package:reflect_ui/src/core/widget_kind.dart';
import 'package:reflect_ui/src/core/widget_radius.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
import 'package:reflect_ui/src/core/widget_variant.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';

class VariantedWidgetStateColor implements WidgetProperty<Color> {
  const VariantedWidgetStateColor({
    required this.normal,
    required this.filled,
    required this.tinted,
    required this.outlined,
    required this.muted,
    required this.cleared,
    this.debugName,
  });

  final Map<WidgetState?, ColorDescriptor> normal;
  final Map<WidgetState?, ColorDescriptor> filled;
  final Map<WidgetState?, ColorDescriptor> tinted;
  final Map<WidgetState?, ColorDescriptor> outlined;
  final Map<WidgetState?, ColorDescriptor> muted;
  final Map<WidgetState?, ColorDescriptor> cleared;

  final String? debugName;

  Map<NamedVariant?, Map<WidgetState?, ColorDescriptor>> get _values {
    return {
      null: normal,
      NamedVariant.filled: filled,
      NamedVariant.tinted: tinted,
      NamedVariant.outlined: outlined,
      NamedVariant.muted: muted,
      NamedVariant.cleared: cleared,
    };
  }

  @override
  Color resolve(Set<WidgetState> states) => resolveWith(states);

  @override
  Color resolveWith(
    Set<WidgetState> states, {
    WidgetKind? kind,
    WidgetVariant? variant,
    WidgetSize? size,
    WidgetRadius? radius,
    Map<String, dynamic>? extra,
  }) {
    bool isHighContrast = false;
    Color? seedColor;
    if (extra != null) {
      seedColor = extra.containsKey('seedColor') ? extra['seedColor'] : null;
      isHighContrast =
          extra.containsKey('highContrast') ? extra['highContrast'] : false;
    }

    ColorDescriptor? colorDescriptor;
    if (states.contains(WidgetState.disabled)) {
      colorDescriptor = _values[variant?.namedVariant]![WidgetState.disabled];
    } else if (states.contains(WidgetState.pressed)) {
      colorDescriptor = _values[variant?.namedVariant]![WidgetState.pressed];
    } else if (states.contains(WidgetState.hovered)) {
      colorDescriptor = _values[variant?.namedVariant]![WidgetState.hovered];
    }
    colorDescriptor ??= _values[variant?.namedVariant]![null];
    if (colorDescriptor?.color != null) {
      seedColor = colorDescriptor?.color;
    }
    int? colorShade = colorDescriptor?.shade;
    double? colorOpacity = colorDescriptor?.opacity;

    if (isHighContrast) {
      if (colorDescriptor?.highContrastColor != null) {
        seedColor = colorDescriptor?.highContrastColor;
      }
      if (colorDescriptor?.highContrastShade != null) {
        colorShade = colorDescriptor?.highContrastShade;
      }
      if (colorDescriptor?.highContrastOpacity != null) {
        colorOpacity = colorDescriptor?.highContrastOpacity;
      }
    }

    Color resolvedColor = seedColor ?? Colors.black;
    if (seedColor is ColorSwatch<int> && colorShade != null) {
      if (colorShade != -1) {
        resolvedColor = seedColor[colorShade]!;
      } else {
        resolvedColor = Colors.transparent;
      }
    }
    if (colorOpacity != null) {
      resolvedColor = resolvedColor.withOpacity(colorOpacity);
    }
    return resolvedColor;
  }
}
