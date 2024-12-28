import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';

/// A property of [WidgetBaseStyle] that can be resolved from [DesignThemeData].
typedef WidgetBaseStyleProperty<T> = T Function(DesignThemeData themeData);

/// The base style of a widget.
class WidgetBaseStyle {
  const WidgetBaseStyle({
    this.size = Size.zero,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.borderRadius = BorderRadius.zero,
  });

  /// The size of the widget.
  final Size size;

  /// The margin of the widget.
  final EdgeInsets margin;

  /// The padding of the widget.
  final EdgeInsets padding;

  /// The border radius of the widget.
  final BorderRadius borderRadius;
}

/// A resolver for [WidgetBaseStyle].
class WidgetBaseStyleResolver {
  const WidgetBaseStyleResolver({
    required this.size,
    required this.margin,
    required this.padding,
  });

  final WidgetBaseStyleProperty<Size?> size;

  final WidgetBaseStyleProperty<EdgeInsets?> margin;

  final WidgetBaseStyleProperty<EdgeInsets?> padding;

  /// Resolves the base style of a widget.
  ///
  /// The resolved base style will be used to style the widget.
  WidgetBaseStyle resolve(DesignThemeData themeData) {
    return WidgetBaseStyle(
      size: size(themeData) ?? Size.zero,
      margin: margin(themeData) ?? EdgeInsets.zero,
      padding: padding(themeData) ?? EdgeInsets.zero,
    );
  }
}
