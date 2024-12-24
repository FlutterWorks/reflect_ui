// ignore_for_file: annotate_overrides

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show Theme, ThemeExtension;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/widget_base_style_resolver.dart';
import 'package:reflect_ui/src/widgets/design_theme/tokens/design_colors.dart';
import 'package:reflect_ui/src/widgets/design_theme/tokens/design_icons.dart';
import 'package:reflect_ui/src/widgets/design_theme/tokens/design_sizing.dart';
import 'package:reflect_ui/src/widgets/design_theme/tokens/design_spacing.dart';
import 'package:reflect_ui/src/widgets/design_theme/tokens/design_typography.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

export 'package:reflect_ui/src/widgets/design_theme/tokens/design_colors.dart';
export 'package:reflect_ui/src/widgets/design_theme/tokens/design_icons.dart';
export 'package:reflect_ui/src/widgets/design_theme/tokens/design_sizing.dart';
export 'package:reflect_ui/src/widgets/design_theme/tokens/design_spacing.dart';
export 'package:reflect_ui/src/widgets/design_theme/tokens/design_typography.dart';

part 'design_theme.tailor.dart';

/// A design theme data.
@TailorMixin()
class DesignThemeData extends ThemeExtension<DesignThemeData>
    with DiagnosticableTreeMixin, _$DesignThemeDataTailorMixin {
  const DesignThemeData({
    required this.id,
    required this.name,
    required this.brightness,
    required this.colors,
    required this.icons,
    required this.sizing,
    required this.spacing,
    required this.typography,
    this.userInteractiveDimension = 44,
    this.userInteractivePadding = const EdgeInsets.all(8),
    this.userInteractiveBorderWidth = 1,
    this.userInteractiveBorderRadius =
        const BorderRadius.all(Radius.circular(8)),
    this.widgetBaseStyleResolver = const WidgetBaseStyleResolver(),
  });

  /// The id of the design theme.
  final String id;

  /// The name of the design theme.
  final String name;

  /// The brightness of the design theme.
  final Brightness brightness;

  /// The colors of the design theme.
  final DesignColors colors;

  /// The icons of the design theme.
  final DesignIcons icons;

  /// The sizing of the design theme.
  final DesignSizing sizing;

  /// The spacing of the design theme.
  final DesignSpacing spacing;

  /// The typography of the design theme.
  final DesignTypography typography;

  /// The minimum dimension for user interactive widgets.
  final double userInteractiveDimension;

  /// The padding for user interactive widgets.
  final EdgeInsets userInteractivePadding;

  /// The border width for user interactive widgets.
  final double userInteractiveBorderWidth;

  /// The border radius for user interactive widgets.
  final BorderRadius userInteractiveBorderRadius;

  /// The widget base style resolver of the design theme.
  final WidgetBaseStyleResolver widgetBaseStyleResolver;

  static DesignThemeData dark() {
    return const DesignThemeData(
      id: 'dark',
      name: 'Dark',
      brightness: Brightness.dark,
      colors: DesignColors.materialDark(),
      icons: DesignIcons.material(),
      sizing: DesignSizing(sizingScale: 8),
      spacing: DesignSpacing(spacingScale: 8),
      typography: DesignTypography.roboto(),
    );
  }

  static DesignThemeData darkCompact() {
    return const DesignThemeData(
      id: 'dark-compact',
      name: 'Dark Compact',
      brightness: Brightness.dark,
      colors: DesignColors.materialDark(),
      icons: DesignIcons.material(),
      sizing: DesignSizing(sizingScale: 4),
      spacing: DesignSpacing(spacingScale: 4),
      typography: DesignTypography.robotoCompact(),
    );
  }

  static DesignThemeData light() {
    return const DesignThemeData(
      id: 'light',
      name: 'Light',
      brightness: Brightness.light,
      colors: DesignColors.materialLight(),
      icons: DesignIcons.material(),
      sizing: DesignSizing(sizingScale: 8),
      spacing: DesignSpacing(spacingScale: 8),
      typography: DesignTypography.roboto(),
    );
  }

  static DesignThemeData lightCompact() {
    return const DesignThemeData(
      id: 'light-compact',
      name: 'Light Compact',
      brightness: Brightness.light,
      colors: DesignColors.materialLight(),
      icons: DesignIcons.material(),
      sizing: DesignSizing(sizingScale: 4),
      spacing: DesignSpacing(spacingScale: 4),
      typography: DesignTypography.robotoCompact(),
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
