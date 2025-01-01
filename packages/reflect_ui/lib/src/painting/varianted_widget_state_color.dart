import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/color_descriptor.dart';
import 'package:reflect_ui/src/core/colors.dart';
import 'package:reflect_ui/src/core/widget_kind.dart';
import 'package:reflect_ui/src/core/widget_radius.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
import 'package:reflect_ui/src/core/widget_variant.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';

class VariantedWidgetStateColor implements WidgetProperty<Color> {
  const VariantedWidgetStateColor({
    required this.filled,
    required this.tinted,
    required this.outlined,
    required this.subtle,
    required this.plain,
    this.debugName,
  });
  final Map<WidgetState?, ColorDescriptor> filled;
  final Map<WidgetState?, ColorDescriptor> tinted;
  final Map<WidgetState?, ColorDescriptor> outlined;
  final Map<WidgetState?, ColorDescriptor> subtle;
  final Map<WidgetState?, ColorDescriptor> plain;

  final String? debugName;

  Map<NamedVariant, Map<WidgetState?, ColorDescriptor>> get _values {
    return {
      NamedVariant.filled: filled,
      NamedVariant.tinted: tinted,
      NamedVariant.outlined: outlined,
      NamedVariant.subtle: subtle,
      NamedVariant.plain: plain,
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
    DesignThemeData? theme,
    Map<String, dynamic>? extra,
  }) {
    if (variant == null) {
      throw ArgumentError(
        'variant is required for ${debugName ?? 'Color'} property.',
      );
    }
    Color? seedColor;
    if (kind != null && theme != null) {
      switch (kind.namedKind) {
        case NamedKind.primary:
          seedColor = theme.colorScheme.primary;
        case NamedKind.secondary:
          seedColor = theme.colorScheme.secondary;
        case NamedKind.success:
          seedColor = theme.colorScheme.success;
        case NamedKind.danger:
          seedColor = theme.colorScheme.danger;
        case NamedKind.warning:
          seedColor = theme.colorScheme.warning;
        case NamedKind.info:
          seedColor = theme.colorScheme.info;
      }
    }

    ColorDescriptor? colorDescriptor;
    if (states.contains(WidgetState.disabled)) {
      colorDescriptor = _values[variant.namedVariant]![WidgetState.disabled];
    } else if (states.contains(WidgetState.pressed)) {
      colorDescriptor = _values[variant.namedVariant]![WidgetState.pressed];
    } else if (states.contains(WidgetState.hovered)) {
      colorDescriptor = _values[variant.namedVariant]![WidgetState.hovered];
    }
    colorDescriptor ??= _values[variant.namedVariant]![null];
    if (colorDescriptor?.color != null) {
      seedColor = colorDescriptor?.color;
    }

    Color resolvedColor = seedColor ?? Colors.black;
    if (seedColor is ColorSwatch<int> && colorDescriptor?.shade != null) {
      if (colorDescriptor?.shade != -1) {
        resolvedColor = seedColor[colorDescriptor!.shade!]!;
      } else {
        resolvedColor = Colors.transparent;
      }
    }
    if (colorDescriptor?.opacity != null) {
      resolvedColor = resolvedColor.withOpacity(colorDescriptor!.opacity!);
    }
    return resolvedColor;
  }
}
