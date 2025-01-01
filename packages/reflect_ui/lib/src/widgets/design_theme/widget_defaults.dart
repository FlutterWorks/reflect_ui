import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/varianted_widget_state_color.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';
import 'package:reflect_ui/src/widgets/design_theme/constants.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';
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
    required this.primaryLabelStyle,
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
      primaryMinSize: WidgetProperty.sizedSize(44, 4),
      primaryPadding: WidgetProperty.sizedInsets(12, 4),
      primaryBackgroundColor: kLightPrimaryBackgroundColor,
      primaryForegroundColor: kLightPrimaryForegroundColor,
      primaryBorderColor: kLightPrimaryBorderColor,
      primaryBorderRadius: WidgetProperty.roundedRadius(6, 0),
      primaryBorderWidth: WidgetProperty.all<double>(1),
      primaryIconStyle: WidgetProperty.sizedIconStyle(12, 2),
      primaryLabelStyle: SizedWidgetProperty<TextStyle>(
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
      primaryMinSize: WidgetProperty.sizedSize(32, 4),
      primaryPadding: WidgetProperty.sizedInsets(8, 4),
      primaryBackgroundColor: kLightPrimaryBackgroundColor,
      primaryForegroundColor: kLightPrimaryForegroundColor,
      primaryBorderColor: kLightPrimaryBorderColor,
      primaryBorderRadius: WidgetProperty.roundedRadius(6, 0),
      primaryBorderWidth: WidgetProperty.all<double>(1),
      primaryIconStyle: WidgetProperty.sizedIconStyle(12, 2),
      primaryLabelStyle: SizedWidgetProperty<TextStyle>(
        small: typography.labelSmall,
        medium: typography.labelMedium,
        large: typography.labelLarge,
      ),
      secondaryMinSize: WidgetProperty.sizedSize(24, 4),
      secondaryPadding: WidgetProperty.sizedInsets(8, 4),
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
  final SizedWidgetProperty<TextStyle> primaryLabelStyle;

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
