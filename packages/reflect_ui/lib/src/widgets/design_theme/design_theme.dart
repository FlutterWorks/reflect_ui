// ignore_for_file: annotate_overrides

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show Theme, ThemeExtension;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';
import 'package:reflect_ui/src/painting/widget_style.dart';
import 'package:reflect_ui/src/widgets/design_theme/constants.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_borders.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_colors.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_icons.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_sizing.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_spacing.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_typography.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

export 'package:reflect_ui/src/widgets/design_theme/theme_borders.dart';
export 'package:reflect_ui/src/widgets/design_theme/theme_colors.dart';
export 'package:reflect_ui/src/widgets/design_theme/theme_icons.dart';
export 'package:reflect_ui/src/widgets/design_theme/theme_sizing.dart';
export 'package:reflect_ui/src/widgets/design_theme/theme_spacing.dart';
export 'package:reflect_ui/src/widgets/design_theme/theme_typography.dart';

part 'design_theme.tailor.dart';

/// A design theme data.
@TailorMixin()
class DesignThemeData extends ThemeExtension<DesignThemeData>
    with DiagnosticableTreeMixin, _$DesignThemeDataTailorMixin {
  const DesignThemeData({
    required this.id,
    required this.name,
    required this.brightness,
    required this.borders,
    required this.colors,
    required this.icons,
    required this.sizing,
    required this.spacing,
    required this.typography,
    required this.baseStyle,
  });

  /// The id of the design theme.
  final String id;

  /// The name of the design theme.
  final String name;

  /// The brightness of the design theme.
  final Brightness brightness;

  /// The borders of the design theme.
  final ThemeBorders borders;

  /// The colors of the design theme.
  final ThemeColors colors;

  /// The icons of the design theme.
  final ThemeIcons icons;

  /// The sizing of the design theme.
  final ThemeSizing sizing;

  /// The spacing of the design theme.
  final ThemeSpacing spacing;

  /// The typography of the design theme.
  final ThemeTypography typography;

  /// The default widget style of the design theme.
  final WidgetStyle baseStyle;

  /// Creates a dark design theme.
  static DesignThemeData dark() {
    const typography = ThemeTypography.inter();
    return DesignThemeData(
      id: 'dark',
      name: 'Dark',
      brightness: Brightness.dark,
      borders: const ThemeBorders(),
      colors: const ThemeColors.materialDark(),
      icons: const ThemeIcons.material(),
      sizing: const ThemeSizing(),
      spacing: const ThemeSpacing(),
      typography: typography,
      baseStyle: WidgetStyle(
        minSize: kNormalMinSize,
        padding: kNormalPadding,
        backgroundColor: kDarkBackgroundColor,
        foregroundColor: kDarkForegroundColor,
        borderColor: kDarkBorderColor,
        borderRadius: kNormalBorderRadius,
        textStyle: SizedWidgetProperty<TextStyle>(
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
      borders: const ThemeBorders(),
      colors: const ThemeColors.materialDark(),
      icons: const ThemeIcons.material(),
      sizing: const ThemeSizing(),
      spacing: const ThemeSpacing(),
      typography: typography,
      baseStyle: WidgetStyle(
        minSize: kCompactMinSize,
        padding: kCompactPadding,
        backgroundColor: kDarkBackgroundColor,
        foregroundColor: kDarkForegroundColor,
        borderColor: kDarkBorderColor,
        borderRadius: kCompactBorderRadius,
        textStyle: SizedWidgetProperty<TextStyle>(
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
  static DesignThemeData light() {
    const typography = ThemeTypography.inter();
    return DesignThemeData(
      id: 'light',
      name: 'Light',
      brightness: Brightness.light,
      borders: const ThemeBorders(),
      colors: const ThemeColors.materialLight(),
      icons: const ThemeIcons.material(),
      sizing: const ThemeSizing(),
      spacing: const ThemeSpacing(),
      typography: typography,
      baseStyle: WidgetStyle(
        minSize: kNormalMinSize,
        padding: kNormalPadding,
        backgroundColor: kLightBackgroundColor,
        foregroundColor: kLightForegroundColor,
        borderColor: kLightBorderColor,
        borderRadius: kNormalBorderRadius,
        textStyle: SizedWidgetProperty<TextStyle>(
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
  static DesignThemeData lightCompact() {
    const typography = ThemeTypography.interCompact();

    return DesignThemeData(
      id: 'light-compact',
      name: 'Light Compact',
      brightness: Brightness.light,
      borders: const ThemeBorders(),
      colors: const ThemeColors.materialLight(),
      icons: const ThemeIcons.material(),
      sizing: const ThemeSizing(),
      spacing: const ThemeSpacing(),
      typography: typography,
      baseStyle: WidgetStyle(
        minSize: kCompactMinSize,
        padding: kCompactPadding,
        backgroundColor: kLightBackgroundColor,
        foregroundColor: kLightForegroundColor,
        borderColor: kLightBorderColor,
        borderRadius: kCompactBorderRadius,
        textStyle: SizedWidgetProperty<TextStyle>(
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
