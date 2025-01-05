import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/colors.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';
import 'package:reflect_ui/src/widgets/icon/icon_style.dart';

/// A widget style.
class WidgetStyle {
  const WidgetStyle({
    this.minSize = const WidgetPropertyAll(Size.zero),
    this.margin = const WidgetPropertyAll(EdgeInsets.zero),
    this.padding = const WidgetPropertyAll(EdgeInsets.zero),
    this.color = const WidgetPropertyAll(Colors.transparent),
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

  /// A widget style that has a color, That is a seed color.
  final WidgetProperty<Color> color;

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
