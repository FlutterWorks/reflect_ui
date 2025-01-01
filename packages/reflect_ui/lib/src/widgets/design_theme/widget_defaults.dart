import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/varianted_widget_state_color.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';
import 'package:reflect_ui/src/widgets/icon/icon_style.dart';

class WidgetDefaults {
  const WidgetDefaults({
    required this.primaryMinSize,
    required this.primaryPadding,
    required this.primaryBackgroundColor,
    required this.primaryForegroundColor,
    required this.primaryBorderColor,
    required this.primaryBorderRadius,
    required this.primaryBorderWidth,
    this.primaryOutlineColor,
    this.primaryOutlineRadius,
    this.primaryOutlineWidth,
    required this.primaryIconStyle,
    required this.primaryTextStyle,
    this.secondaryMinSize,
    this.secondaryPadding,
    this.secondaryIconStyle,
    this.secondaryTextStyle,
    this.tertiaryMinSize,
    this.tertiaryPadding,
    this.tertiaryIconStyle,
    this.tertiaryTextStyle,
  });

  /// The preset primary size.
  final SizedWidgetProperty<Size> primaryMinSize;

  /// The preset primary padding.
  final SizedWidgetProperty<EdgeInsets> primaryPadding;

  /// The preset primary background color.
  final VariantedWidgetStateColor primaryBackgroundColor;

  /// The preset primary foreground color.
  final VariantedWidgetStateColor primaryForegroundColor;

  /// The preset primary border color.
  final VariantedWidgetStateColor primaryBorderColor;

  /// The preset primary border radius.
  final WidgetProperty<BorderRadius> primaryBorderRadius;

  /// The preset primary border width.
  final WidgetProperty<double> primaryBorderWidth;

  /// The preset primary outline color.
  final VariantedWidgetStateColor? primaryOutlineColor;

  /// The preset primary outline radius.
  final SizedWidgetProperty<BorderRadius>? primaryOutlineRadius;

  /// The preset primary outline width.
  final SizedWidgetProperty<double>? primaryOutlineWidth;

  /// The preset primary icon style.
  final SizedWidgetProperty<IconStyle> primaryIconStyle;

  /// The preset primary text style.
  final SizedWidgetProperty<TextStyle> primaryTextStyle;

  /// The preset secondary size.
  final SizedWidgetProperty<Size>? secondaryMinSize;

  /// The preset secondary padding.
  final SizedWidgetProperty<EdgeInsets>? secondaryPadding;

  /// The preset secondary text style.
  final SizedWidgetProperty<TextStyle>? secondaryTextStyle;

  /// The preset secondary icon style.
  final SizedWidgetProperty<IconStyle>? secondaryIconStyle;

  /// The preset tertiary size.
  final SizedWidgetProperty<Size>? tertiaryMinSize;

  /// The preset tertiary padding.
  final SizedWidgetProperty<EdgeInsets>? tertiaryPadding;

  /// The preset tertiary text style.
  final SizedWidgetProperty<TextStyle>? tertiaryTextStyle;

  /// The preset tertiary icon style.
  final SizedWidgetProperty<IconStyle>? tertiaryIconStyle;
}
