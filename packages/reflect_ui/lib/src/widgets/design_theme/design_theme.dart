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
  final ThemeTypography typography;

  /// The widget defaults of the design theme.
  final WidgetDefaults widgetDefaults;

  /// Creates a dark design theme.
  static DesignThemeData dark() {
    const typography = ThemeTypography.inter();
    return DesignThemeData(
      id: 'dark',
      name: 'Dark',
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(),
      iconLibrary: const IconLibrary.material(),
      typography: typography,
      widgetDefaults: WidgetDefaults(
        primaryMinSize: kRegularMinSize,
        primaryMargin: kRegularPadding,
        primaryPadding: kRegularPadding,
        primaryBackgroundColor: kDarkBackgroundColor,
        primaryForegroundColor: kDarkForegroundColor,
        primaryBorderColor: kDarkBorderColor,
        primaryBorderRadius: kRegularBorderRadius,
        primaryBorderWidth: const WidgetPropertyAll(1),
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
      ),
    );
  }

  /// Creates a dark compact design theme.
  static DesignThemeData darkCompact() {
    const typography = ThemeTypography.interCompact();
    return DesignThemeData(
      id: 'dark-compact',
      name: 'Dark Compact',
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(),
      iconLibrary: const IconLibrary.material(),
      typography: typography,
      widgetDefaults: WidgetDefaults(
        primaryMinSize: kCompactMinSize,
        primaryMargin: kCompactPadding,
        primaryPadding: kCompactPadding,
        primaryBackgroundColor: kDarkBackgroundColor,
        primaryForegroundColor: kDarkForegroundColor,
        primaryBorderColor: kDarkBorderColor,
        primaryBorderRadius: kCompactBorderRadius,
        primaryBorderWidth: const WidgetPropertyAll(1),
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
      ),
    );
  }

  /// Creates a light design theme.
  static DesignThemeData light({
    ColorScheme? colorScheme,
    IconLibrary? iconLibrary,
  }) {
    const typography = ThemeTypography.inter();
    return DesignThemeData(
      id: 'light',
      name: 'Light',
      brightness: Brightness.light,
      colorScheme: colorScheme ?? const ColorScheme.light(),
      iconLibrary: iconLibrary ?? const IconLibrary.material(),
      typography: typography,
      widgetDefaults: WidgetDefaults(
        primaryMinSize: kRegularMinSize,
        primaryMargin: kRegularPadding,
        primaryPadding: kRegularPadding,
        primaryBackgroundColor: kLightBackgroundColor,
        primaryForegroundColor: kLightForegroundColor,
        primaryBorderColor: kLightBorderColor,
        primaryBorderRadius: kRegularBorderRadius,
        primaryBorderWidth: const WidgetPropertyAll(1),
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
      ),
    );
  }

  /// Creates a light compact design theme.
  static DesignThemeData lightCompact({
    ColorScheme? colorScheme,
    IconLibrary? iconLibrary,
  }) {
    const typography = ThemeTypography.interCompact();

    return DesignThemeData(
      id: 'light-compact',
      name: 'Light Compact',
      brightness: Brightness.light,
      colorScheme: colorScheme ?? const ColorScheme.light(),
      iconLibrary: iconLibrary ?? const IconLibrary.material(),
      typography: typography,
      widgetDefaults: WidgetDefaults(
        primaryMinSize: kCompactMinSize,
        primaryMargin: kCompactPadding,
        primaryPadding: kCompactPadding,
        primaryBackgroundColor: kLightBackgroundColor,
        primaryForegroundColor: kLightForegroundColor,
        primaryBorderColor: kLightBorderColor,
        primaryBorderRadius: kCompactBorderRadius,
        primaryBorderWidth: const WidgetPropertyAll(1),
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
