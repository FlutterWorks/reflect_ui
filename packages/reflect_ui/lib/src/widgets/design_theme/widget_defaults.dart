import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/varianted_widget_state_color.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';
import 'package:reflect_ui/src/widgets/design_theme/constants.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';
import 'package:reflect_ui/src/widgets/icon/icon_style.dart';

class WidgetDefaults {
  const WidgetDefaults({
    required this.minSize,
    required this.padding,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.borderColor,
    required this.borderRadius,
    required this.borderWidth,
    this.outlineColor,
    this.outlineRadius,
    this.outlineWidth,
    required this.iconStyle,
    required this.labelStyle,
    this.secondaryMinSize,
    this.secondaryPadding,
    this.secondaryIconStyle,
    this.secondaryLabelStyle,
    this.tertiaryMinSize,
    this.tertiaryPadding,
    this.tertiaryIconStyle,
    this.tertiaryLabelStyle,
  });

  static WidgetDefaults regular(Typography typography) {
    return WidgetDefaults(
      minSize: WidgetProperty.sizedSize(44, 4),
      padding: WidgetProperty.sizedInsets(12, 4),
      backgroundColor: kLightPrimaryBackgroundColor,
      foregroundColor: kLightPrimaryForegroundColor,
      borderColor: kLightPrimaryBorderColor,
      borderRadius: WidgetProperty.roundedRadius(6, 2),
      borderWidth: WidgetProperty.all<double>(1),
      iconStyle: WidgetProperty.sizedIconStyle(12, 2),
      labelStyle: SizedWidgetProperty<TextStyle>(
        small: typography.labelSmall,
        medium: typography.labelMedium,
        large: typography.labelLarge,
      ),
      secondaryMinSize: WidgetProperty.sizedSize(32, 4),
      secondaryPadding: WidgetProperty.sizedInsets(8, 4),
      secondaryLabelStyle: SizedWidgetProperty<TextStyle>(
        small: typography.labelTiny,
        medium: typography.labelSmall,
        large: typography.labelMedium,
      ),
      tertiaryMinSize: WidgetProperty.sizedSize(20, 4),
      tertiaryPadding: WidgetProperty.sizedInsets(4, 4),
    );
  }

  static WidgetDefaults compact(Typography typography) {
    return WidgetDefaults(
      minSize: WidgetProperty.sizedSize(32, 4),
      padding: WidgetProperty.sizedInsets(8, 4),
      backgroundColor: kLightPrimaryBackgroundColor,
      foregroundColor: kLightPrimaryForegroundColor,
      borderColor: kLightPrimaryBorderColor,
      borderRadius: WidgetProperty.roundedRadius(6, 2),
      borderWidth: WidgetProperty.all<double>(1),
      iconStyle: WidgetProperty.sizedIconStyle(12, 2),
      labelStyle: SizedWidgetProperty<TextStyle>(
        small: typography.labelSmall,
        medium: typography.labelMedium,
        large: typography.labelLarge,
      ),
      secondaryMinSize: WidgetProperty.sizedSize(24, 4),
      secondaryPadding: WidgetProperty.sizedInsets(4, 4),
      secondaryLabelStyle: SizedWidgetProperty<TextStyle>(
        small: typography.labelTiny,
        medium: typography.labelSmall,
        large: typography.labelMedium,
      ),
      tertiaryMinSize: WidgetProperty.sizedSize(16, 4),
      tertiaryPadding: WidgetProperty.sizedInsets(4, 4),
    );
  }

  /// The preset primary size.
  final SizedWidgetProperty<Size> minSize;

  /// The preset primary padding.
  final SizedWidgetProperty<EdgeInsets> padding;

  /// The preset primary background color.
  final VariantedWidgetStateColor backgroundColor;

  /// The preset primary foreground color.
  final VariantedWidgetStateColor foregroundColor;

  /// The preset primary border color.
  final VariantedWidgetStateColor borderColor;

  /// The preset primary border radius.
  final WidgetProperty<BorderRadius> borderRadius;

  /// The preset primary border width.
  final WidgetProperty<double> borderWidth;

  /// The preset primary outline color.
  final VariantedWidgetStateColor? outlineColor;

  /// The preset primary outline radius.
  final SizedWidgetProperty<BorderRadius>? outlineRadius;

  /// The preset primary outline width.
  final SizedWidgetProperty<double>? outlineWidth;

  /// The preset primary icon style.
  final SizedWidgetProperty<IconStyle> iconStyle;

  /// The preset primary text style.
  final SizedWidgetProperty<TextStyle> labelStyle;

  /// The preset secondary size.
  final SizedWidgetProperty<Size>? secondaryMinSize;

  /// The preset secondary padding.
  final SizedWidgetProperty<EdgeInsets>? secondaryPadding;

  /// The preset secondary text style.
  final SizedWidgetProperty<TextStyle>? secondaryLabelStyle;

  /// The preset secondary icon style.
  final SizedWidgetProperty<IconStyle>? secondaryIconStyle;

  /// The preset tertiary size.
  final SizedWidgetProperty<Size>? tertiaryMinSize;

  /// The preset tertiary padding.
  final SizedWidgetProperty<EdgeInsets>? tertiaryPadding;

  /// The preset tertiary text style.
  final SizedWidgetProperty<TextStyle>? tertiaryLabelStyle;

  /// The preset tertiary icon style.
  final SizedWidgetProperty<IconStyle>? tertiaryIconStyle;
}
