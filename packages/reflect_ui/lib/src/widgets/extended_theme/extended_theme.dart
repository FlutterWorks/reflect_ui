// ignore_for_file: annotate_overrides

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show Theme, ThemeExtension;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/widget_base_style_resolver.dart';
import 'package:reflect_ui/src/widgets/extended_theme/color_scheme.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

export 'extended_icons.dart';

part 'extended_theme.tailor.dart';

@TailorMixin()
class ExtendedThemeData extends ThemeExtension<ExtendedThemeData>
    with DiagnosticableTreeMixin, _$ExtendedThemeDataTailorMixin {
  const ExtendedThemeData({
    required this.brightness,
    required this.colorScheme,
    this.titleStyle,
    this.labelStyle,
    this.bodyStyle,
    this.userInteractiveDimension = 28.0,
    this.userInteractivePadding = const EdgeInsets.all(6.0),
    this.userInteractiveBorderRadius =
        const BorderRadius.all(Radius.circular(6.0)),
    this.userInteractiveBorderWidth = 1.0,

    /// small
    this.smallTitleStyle,
    this.smallLabelStyle,
    this.smallBodyStyle,
    this.smallUserInteractiveDimension = 24.0,
    this.smallUserInteractivePadding = const EdgeInsets.all(4.0),
    this.smallUserInteractiveBorderRadius =
        const BorderRadius.all(Radius.circular(4.0)),
    this.smallUserInteractiveBorderWidth = 1.0,

    /// large
    this.largeUserInteractiveDimension = 32.0,
    this.largeUserInteractivePadding = const EdgeInsets.all(8.0),
    this.largeUserInteractiveBorderRadius =
        const BorderRadius.all(Radius.circular(8.0)),
    this.largeUserInteractiveBorderWidth = 1.0,
    this.largeTitleStyle,
    this.largeLabelStyle,
    this.largeBodyStyle,
    required this.baseStyleResolver,
  });

  /// The brightness of the theme.
  final Brightness brightness;

  /// The color scheme of the theme.
  final ColorScheme colorScheme;

  /// The title text style for the theme.
  final TextStyle? titleStyle;

  /// The label text style for the theme.
  final TextStyle? labelStyle;

  /// The body text style for the theme.
  final TextStyle? bodyStyle;

  /// The minimum dimension for user interactive widgets.
  final double userInteractiveDimension;

  /// The padding for user interactive widgets.
  final EdgeInsets userInteractivePadding;

  /// The border width for user interactive widgets.
  final double userInteractiveBorderWidth;

  /// The border radius for user interactive widgets.
  final BorderRadius userInteractiveBorderRadius;

  // #region Small User Interactive Widgets

  /// The small title text style for the theme.
  final TextStyle? smallTitleStyle;

  /// The small label text style for the theme.
  final TextStyle? smallLabelStyle;

  /// The small body text style for the theme.
  final TextStyle? smallBodyStyle;

  /// The dimension for small user interactive widgets.
  final double smallUserInteractiveDimension;

  /// The padding for small user interactive widgets.
  final EdgeInsets smallUserInteractivePadding;

  /// The border radius for small user interactive widgets.
  final BorderRadius smallUserInteractiveBorderRadius;

  /// The border width for small user interactive widgets.
  final double smallUserInteractiveBorderWidth;

  // #endregion

  // #region Large User Interactive Widgets

  /// The large title text style for the theme.
  final TextStyle? largeTitleStyle;

  /// The large label text style for the theme.
  final TextStyle? largeLabelStyle;

  /// The large body text style for the theme.
  final TextStyle? largeBodyStyle;

  /// The dimension for large user interactive widgets.
  final double largeUserInteractiveDimension;

  /// The padding for large user interactive widgets.
  final EdgeInsets largeUserInteractivePadding;

  /// The border radius for large user interactive widgets.
  final BorderRadius largeUserInteractiveBorderRadius;

  /// The border width for large user interactive widgets.
  final double largeUserInteractiveBorderWidth;

  // #endregion

  /// The base style resolver for the theme.
  final WidgetBaseStyleResolver baseStyleResolver;
}

class ExtendedTheme extends InheritedTheme {
  const ExtendedTheme({
    super.key,
    required this.data,
    required super.child,
  });

  final ExtendedThemeData data;

  static ExtendedThemeData of(BuildContext context) {
    final theme = context.dependOnInheritedWidgetOfExactType<ExtendedTheme>();
    return theme?.data ?? Theme.of(context).extension<ExtendedThemeData>()!;
  }

  @override
  bool updateShouldNotify(ExtendedTheme oldWidget) => data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return ExtendedTheme(
      data: data,
      child: DefaultTextStyle(
        style: (data.bodyStyle ?? const TextStyle()).copyWith(
          color: data.colorScheme.onSurface,
        ),
        child: DefaultSelectionStyle(
          cursorColor: data.colorScheme.onSurface,
          selectionColor: data.colorScheme.primary,
          child: child,
        ),
      ),
    );
  }
}
