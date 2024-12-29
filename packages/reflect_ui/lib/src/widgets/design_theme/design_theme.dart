// ignore_for_file: annotate_overrides

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show Colors, Theme, ThemeExtension;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/color_descriptor.dart';
import 'package:reflect_ui/src/painting/varianted_widget_state_color.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';
import 'package:reflect_ui/src/painting/widget_style.dart';
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

const kDefaultBackgroundColor = VariantedWidgetStateColor(
  filled: {
    null: ColorDescriptor.shade(600),
    WidgetState.hovered: ColorDescriptor.shade(700),
  },
  tinted: {
    null: ColorDescriptor.shade(50),
    WidgetState.hovered: ColorDescriptor.shade(100),
  },
  outlined: {
    null: ColorDescriptor.shade(600),
  },
  subtle: {
    null: ColorDescriptor.shade(600),
  },
  transparent: {
    null: ColorDescriptor.shade(600),
  },
);

const kDefaultForegroundColor = VariantedWidgetStateColor(
  filled: {
    null: ColorDescriptor(color: Colors.white),
  },
  tinted: {
    null: ColorDescriptor.shade(600),
  },
  outlined: {
    null: ColorDescriptor.shade(600),
  },
  subtle: {
    null: ColorDescriptor.shade(600),
  },
  transparent: {
    null: ColorDescriptor.shade(600),
  },
);

const kDefaultBorderColor = VariantedWidgetStateColor(
  filled: {
    null: ColorDescriptor.shade(600),
    WidgetState.hovered: ColorDescriptor.shade(700),
  },
  tinted: {
    null: ColorDescriptor.shade(50),
    WidgetState.hovered: ColorDescriptor.shade(100),
  },
  outlined: {
    null: ColorDescriptor.shade(600),
  },
  subtle: {
    null: ColorDescriptor.shade(600),
  },
  transparent: {
    null: ColorDescriptor.shade(600),
  },
);

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
      baseStyle: WidgetStyle(
        minSize: SizedWidgetProperty<Size>(
          tiny: Size.square(24),
          small: Size.square(32),
          medium: Size.square(44),
          large: Size.square(48),
          big: Size.square(56),
        ),
        backgroundColor: kDefaultBackgroundColor,
        foregroundColor: kDefaultForegroundColor,
        borderColor: kDefaultBorderColor,
      ),
    );
  }

  /// Creates a dark compact design theme.
  static DesignThemeData darkCompact() {
    return const DesignThemeData(
      id: 'dark-compact',
      name: 'Dark Compact',
      brightness: Brightness.dark,
      borders: ThemeBorders(),
      colors: ThemeColors.materialDark(),
      icons: ThemeIcons.material(),
      sizing: ThemeSizing(sizingScale: 4),
      spacing: ThemeSpacing(spacingScale: 4),
      typography: ThemeTypography.roboto(),
      baseStyle: WidgetStyle(
        minSize: SizedWidgetProperty<Size>(
          tiny: Size.zero,
          small: Size.zero,
          medium: Size.zero,
          large: Size.zero,
          big: Size.zero,
        ),
        margin: WidgetPropertyAll(EdgeInsets.zero),
        padding: SizedWidgetProperty<EdgeInsets>(
          tiny: EdgeInsets.zero,
          small: EdgeInsets.zero,
          medium: EdgeInsets.zero,
          large: EdgeInsets.zero,
          big: EdgeInsets.zero,
        ),
        backgroundColor: kDefaultBackgroundColor,
        foregroundColor: kDefaultForegroundColor,
        borderColor: kDefaultBorderColor,
      ),
    );
  }

  /// Creates a light design theme.
  static DesignThemeData light() {
    return const DesignThemeData(
      id: 'light',
      name: 'Light',
      brightness: Brightness.light,
      borders: ThemeBorders(),
      colors: ThemeColors.materialLight(),
      icons: ThemeIcons.material(),
      sizing: ThemeSizing(sizingScale: 4),
      spacing: ThemeSpacing(spacingScale: 4),
      typography: ThemeTypography.roboto(),
      baseStyle: WidgetStyle(
        minSize: SizedWidgetProperty<Size>(
          tiny: Size.square(24),
          small: Size.square(32),
          medium: Size.square(44),
          large: Size.square(48),
          big: Size.square(56),
          debugName: 'minSize',
        ),
        margin: WidgetPropertyAll(EdgeInsets.zero),
        padding: SizedWidgetProperty<EdgeInsets>(
          tiny: EdgeInsets.zero,
          small: EdgeInsets.zero,
          medium: EdgeInsets.zero,
          large: EdgeInsets.zero,
          big: EdgeInsets.zero,
          debugName: 'padding',
        ),
        backgroundColor: kDefaultBackgroundColor,
        foregroundColor: kDefaultForegroundColor,
        borderColor: kDefaultBorderColor,
      ),
    );
  }

  /// Creates a light compact design theme.
  static DesignThemeData lightCompact() {
    return const DesignThemeData(
      id: 'light-compact',
      name: 'Light Compact',
      brightness: Brightness.light,
      borders: ThemeBorders(),
      colors: ThemeColors.materialLight(),
      icons: ThemeIcons.material(),
      sizing: ThemeSizing(sizingScale: 4),
      spacing: ThemeSpacing(spacingScale: 4),
      typography: ThemeTypography.roboto(),
      baseStyle: WidgetStyle(
        minSize: SizedWidgetProperty<Size>(
          tiny: Size.square(24),
          small: Size.square(32),
          medium: Size.square(44),
          large: Size.square(48),
          big: Size.square(56),
          debugName: 'minSize',
        ),
        margin: WidgetPropertyAll(EdgeInsets.zero),
        padding: SizedWidgetProperty<EdgeInsets>(
          tiny: EdgeInsets.zero,
          small: EdgeInsets.zero,
          medium: EdgeInsets.zero,
          large: EdgeInsets.zero,
          big: EdgeInsets.zero,
          debugName: 'padding',
        ),
        backgroundColor: kDefaultBackgroundColor,
        foregroundColor: kDefaultForegroundColor,
        borderColor: kDefaultBorderColor,
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
