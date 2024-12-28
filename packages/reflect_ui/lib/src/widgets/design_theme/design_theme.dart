// ignore_for_file: annotate_overrides

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show Theme, ThemeExtension;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/widget_style.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_borders.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_colors.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_icons.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_sizing.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_spacing.dart';
import 'package:reflect_ui/src/widgets/design_theme/theme_typography.dart';
import 'package:reflect_ui/src/widgets/design_theme/widget_base_style.dart';
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
    this.defaultBaseStyle,
    this.defaultBaseStyleResolver,
    this.widgetStyleResolver = const WidgetStyleResolver(),
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

  /// The base style of the design theme.
  final WidgetBaseStyle? defaultBaseStyle;

  /// The base style resolver of the design theme.
  final WidgetBaseStyleResolver? defaultBaseStyleResolver;

  /// The widget style resolver of the design theme.
  final WidgetStyleResolver widgetStyleResolver;

  /// The base style of the design theme.
  ///
  /// If the default base style is not provided, the default base style resolver
  /// will be used to resolve the base style.
  WidgetBaseStyle get baseStyle {
    return defaultBaseStyle ??
        defaultBaseStyleResolver?.resolve(this) ??
        const WidgetBaseStyle();
  }

  /// Creates a dark design theme.
  static DesignThemeData dark() {
    return const DesignThemeData(
      id: 'dark',
      name: 'Dark',
      brightness: Brightness.dark,
      borders: ThemeBorders(),
      colors: ThemeColors.materialDark(),
      icons: ThemeIcons.material(),
      sizing: ThemeSizing(sizingScale: 4),
      spacing: ThemeSpacing(spacingScale: 4),
      typography: ThemeTypography.roboto(),
    );
  }

  /// Creates a dark compact design theme.
  static DesignThemeData darkCompact() {
    return DesignThemeData(
      id: 'dark-compact',
      name: 'Dark Compact',
      brightness: Brightness.dark,
      borders: const ThemeBorders(),
      colors: const ThemeColors.materialDark(),
      icons: const ThemeIcons.material(),
      sizing: const ThemeSizing(sizingScale: 4),
      spacing: const ThemeSpacing(spacingScale: 4),
      typography: const ThemeTypography.roboto(),
      defaultBaseStyleResolver: WidgetBaseStyleResolver(
        size: (theme) => theme.sizing.size8,
        margin: (theme) => theme.spacing.m8,
        padding: (theme) => theme.spacing.p8,
      ),
    );
  }

  /// Creates a light design theme.
  static DesignThemeData light() {
    return DesignThemeData(
      id: 'light',
      name: 'Light',
      brightness: Brightness.light,
      borders: const ThemeBorders(),
      colors: const ThemeColors.materialLight(),
      icons: const ThemeIcons.material(),
      sizing: const ThemeSizing(sizingScale: 4),
      spacing: const ThemeSpacing(spacingScale: 4),
      typography: const ThemeTypography.roboto(),
      defaultBaseStyleResolver: WidgetBaseStyleResolver(
        size: (theme) => theme.sizing.size8,
        margin: (theme) => theme.spacing.m8,
        padding: (theme) => theme.spacing.p8,
      ),
    );
  }

  /// Creates a light compact design theme.
  static DesignThemeData lightCompact() {
    return DesignThemeData(
      id: 'light-compact',
      name: 'Light Compact',
      brightness: Brightness.light,
      borders: const ThemeBorders(),
      colors: const ThemeColors.materialLight(),
      icons: const ThemeIcons.material(),
      sizing: const ThemeSizing(sizingScale: 4),
      spacing: const ThemeSpacing(spacingScale: 4),
      typography: const ThemeTypography.roboto(),
      defaultBaseStyleResolver: WidgetBaseStyleResolver(
        size: (theme) => theme.sizing.size8,
        margin: (theme) => theme.spacing.m8,
        padding: (theme) => theme.spacing.p8,
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
