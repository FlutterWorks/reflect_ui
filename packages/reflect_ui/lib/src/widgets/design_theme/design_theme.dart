// ignore_for_file: annotate_overrides

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show Theme, ThemeExtension;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';
import 'package:reflect_ui/src/widgets/design_theme/color_scheme.dart';
import 'package:reflect_ui/src/widgets/design_theme/constants.dart';
import 'package:reflect_ui/src/widgets/design_theme/icon_library.dart';
import 'package:reflect_ui/src/widgets/design_theme/typography.dart';
import 'package:reflect_ui/src/widgets/design_theme/widget_defaults.dart';
import 'package:reflect_ui/src/widgets/icon/icon_style.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

export 'package:reflect_ui/src/widgets/design_theme/color_scheme.dart';
export 'package:reflect_ui/src/widgets/design_theme/icon_library.dart';
export 'package:reflect_ui/src/widgets/design_theme/typography.dart';

part 'design_theme.tailor.dart';

/// A design theme data.
@TailorMixin()
class DesignThemeData extends ThemeExtension<DesignThemeData>
    with DiagnosticableTreeMixin, _$DesignThemeDataTailorMixin {
  const DesignThemeData({
    required this.id,
    required this.name,
    required this.brightness,
    required this.colorScheme,
    required this.iconLibrary,
    required this.typography,
    required this.widgetDefaults,
  });

  /// The id of the design theme.
  final String id;

  /// The name of the design theme.
  final String name;

  /// The brightness of the design theme.
  final Brightness brightness;

  /// The color scheme of the design theme.
  final ColorScheme colorScheme;

  /// The icon library of the design theme.
  final IconLibrary iconLibrary;

  /// The typography of the design theme.
  final Typography typography;

  /// The widget defaults of the design theme.
  final WidgetDefaults widgetDefaults;

  /// Creates a dark design theme.
  static DesignThemeData dark() {
    const typography = Typography.regular();
    return DesignThemeData(
      id: 'dark',
      name: 'Dark',
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(),
      iconLibrary: const IconLibrary.material(),
      typography: typography,
      widgetDefaults: WidgetDefaults(
        primaryMinSize: kRegularPrimaryMinSize,
        primaryPadding: kRegularPrimaryPadding,
        primaryBackgroundColor: kDarkPrimaryBackgroundColor,
        primaryForegroundColor: kDarkPrimaryForegroundColor,
        primaryBorderColor: kDarkPrimaryBorderColor,
        primaryBorderRadius: kRegularPrimaryBorderRadius,
        primaryBorderWidth: kRegularPrimaryBorderWidth,
        primaryIconStyle: const SizedWidgetProperty<IconStyle>(
          tiny: IconStyle(size: 16),
          small: IconStyle(size: 16),
          medium: IconStyle(size: 20),
          large: IconStyle(size: 24),
          big: IconStyle(size: 28),
        ),
        primaryTextStyle: SizedWidgetProperty<TextStyle>(
          tiny: typography.labelSmall,
          small: typography.labelSmall,
          medium: typography.labelMedium,
          large: typography.labelLarge,
          big: typography.labelLarge,
        ),
        secondaryTextStyle: SizedWidgetProperty<TextStyle>(
          tiny: typography.labelSmall.copyWith(
            fontSize: typography.labelSmall.fontSize! * 0.8,
          ),
          small: typography.labelSmall.copyWith(
            fontSize: typography.labelSmall.fontSize! * 0.8,
          ),
          medium: typography.labelMedium.copyWith(
            fontSize: typography.labelMedium.fontSize! * 0.8,
          ),
          large: typography.labelLarge.copyWith(
            fontSize: typography.labelLarge.fontSize! * 0.8,
          ),
          big: typography.labelLarge.copyWith(
            fontSize: typography.labelLarge.fontSize! * 0.8,
          ),
        ),
        tertiaryTextStyle: SizedWidgetProperty<TextStyle>(
          tiny: typography.labelSmall.copyWith(
            fontSize: typography.labelSmall.fontSize! * 0.56,
          ),
          small: typography.labelSmall.copyWith(
            fontSize: typography.labelSmall.fontSize! * 0.56,
          ),
          medium: typography.labelMedium.copyWith(
            fontSize: typography.labelMedium.fontSize! * 0.56,
          ),
          large: typography.labelLarge.copyWith(
            fontSize: typography.labelLarge.fontSize! * 0.56,
          ),
          big: typography.labelLarge.copyWith(
            fontSize: typography.labelLarge.fontSize! * 0.56,
          ),
        ),
      ),
    );
  }

  /// Creates a dark compact design theme.
  static DesignThemeData darkCompact() {
    const typography = Typography.compact();
    return DesignThemeData(
      id: 'dark-compact',
      name: 'Dark Compact',
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(),
      iconLibrary: const IconLibrary.material(),
      typography: typography,
      widgetDefaults: WidgetDefaults(
        primaryMinSize: kCompactPrimaryMinSize,
        primaryPadding: kCompactPrimaryPadding,
        primaryBackgroundColor: kDarkPrimaryBackgroundColor,
        primaryForegroundColor: kDarkPrimaryForegroundColor,
        primaryBorderColor: kDarkPrimaryBorderColor,
        primaryBorderRadius: kCompactPrimaryBorderRadius,
        primaryBorderWidth: const WidgetPropertyAll(1),
        primaryIconStyle: WidgetProperty.sizedIconStyle(16, 4),
        primaryTextStyle: SizedWidgetProperty<TextStyle>(
          tiny: typography.labelSmall,
          small: typography.labelSmall,
          medium: typography.labelMedium,
          large: typography.labelLarge,
          big: typography.labelLarge,
        ),
      ),
    );
  }

  /// Creates a light design theme.
  static DesignThemeData light({
    ColorScheme? colorScheme,
    IconLibrary? iconLibrary,
  }) {
    const typography = Typography.regular();
    return DesignThemeData(
      id: 'light',
      name: 'Light',
      brightness: Brightness.light,
      colorScheme: colorScheme ?? const ColorScheme.light(),
      iconLibrary: iconLibrary ?? const IconLibrary.material(),
      typography: typography,
      widgetDefaults: WidgetDefaults(
        primaryMinSize: WidgetProperty.sizedSize(44, 4),
        primaryPadding: WidgetProperty.sizedInsets(12, 4),
        primaryBackgroundColor: kLightPrimaryBackgroundColor,
        primaryForegroundColor: kLightPrimaryForegroundColor,
        primaryBorderColor: kLightPrimaryBorderColor,
        primaryBorderRadius: WidgetProperty.sizedRadius(6, 0),
        primaryBorderWidth: WidgetProperty.all<double>(1),
        primaryIconStyle: WidgetProperty.sizedIconStyle(14, 2),
        primaryTextStyle: SizedWidgetProperty<TextStyle>(
          tiny: typography.labelSmall,
          small: typography.labelSmall,
          medium: typography.labelMedium,
          large: typography.labelLarge,
          big: typography.labelLarge,
        ),
        secondaryMinSize: WidgetProperty.sizedSize(44, 4, 0.8),
        secondaryPadding: WidgetProperty.sizedInsets(12, 4, 0.8),
        tertiaryMinSize: WidgetProperty.sizedSize(44, 4, 0.56),
        tertiaryPadding: WidgetProperty.sizedInsets(12, 4, 0.56),
      ),
    );
  }

  /// Creates a light compact design theme.
  static DesignThemeData lightCompact({
    ColorScheme? colorScheme,
    IconLibrary? iconLibrary,
  }) {
    const typography = Typography.compact();
    return DesignThemeData(
      id: 'light-compact',
      name: 'Light Compact',
      brightness: Brightness.light,
      colorScheme: colorScheme ?? const ColorScheme.light(),
      iconLibrary: iconLibrary ?? const IconLibrary.material(),
      typography: typography,
      widgetDefaults: WidgetDefaults(
        primaryMinSize: WidgetProperty.sizedSize(32, 4),
        primaryPadding: WidgetProperty.sizedInsets(8, 4),
        primaryBackgroundColor: kLightPrimaryBackgroundColor,
        primaryForegroundColor: kLightPrimaryForegroundColor,
        primaryBorderColor: kLightPrimaryBorderColor,
        primaryBorderRadius: WidgetProperty.sizedRadius(6, 0),
        primaryBorderWidth: WidgetProperty.all<double>(1),
        primaryIconStyle: WidgetProperty.sizedIconStyle(12, 2),
        primaryTextStyle: SizedWidgetProperty<TextStyle>(
          tiny: typography.labelSmall,
          small: typography.labelSmall,
          medium: typography.labelMedium,
          large: typography.labelLarge,
          big: typography.labelLarge,
        ),
        secondaryMinSize: WidgetProperty.sizedSize(24, 4),
        secondaryPadding: WidgetProperty.sizedInsets(8, 4),
        secondaryTextStyle: SizedWidgetProperty<TextStyle>(
          tiny: typography.labelSmall,
          small: typography.labelSmall,
          medium: typography.labelSmall,
          large: typography.labelMedium,
          big: typography.labelLarge,
        ),
        tertiaryMinSize: WidgetProperty.sizedSize(16, 4),
        tertiaryPadding: WidgetProperty.sizedInsets(4, 4),
        tertiaryTextStyle: SizedWidgetProperty<TextStyle>(
          tiny: typography.labelSmall,
          small: typography.labelSmall,
          medium: typography.labelSmall,
          large: typography.labelMedium,
          big: typography.labelLarge,
        ),
      ),
    );
  }
}

/// A inherited widget that provides the design theme data.
class DesignTheme extends InheritedTheme {
  const DesignTheme({
    super.key,
    required this.data,
    required super.child,
  });

  final DesignThemeData data;
  @override
  bool updateShouldNotify(DesignTheme oldWidget) => false;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return DesignTheme(
      data: data,
      child: child,
    );
  }

  static DesignThemeData of(BuildContext context) {
    final theme = context.dependOnInheritedWidgetOfExactType<DesignTheme>();
    return theme?.data ?? context.designThemeData;
  }
}
