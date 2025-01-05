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
    DesignThemeData? theme,
    Map<String, dynamic>? extra,
  }) {
    Color? seedColor;
    if (extra != null && extra.containsKey('seedColor')) {
      seedColor = extra['seedColor'];
    }
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
