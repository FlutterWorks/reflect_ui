import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/widget_base_style_resolver.dart';
import 'package:reflect_ui/src/widgets/extended_theme/color_scheme.dart';
import 'package:reflect_ui/src/widgets/extended_theme/colors.dart';
import 'package:reflect_ui/src/widgets/extended_theme/extended_theme.dart';

const String _kDefaultFontFamily = 'Inter';

const _colorScheme = ColorScheme.light(
  primary: Colors.indigo,
  secondary: Colors.neutral,
  success: Colors.green,
  danger: Colors.red,
  warning: Colors.amber,
  info: Colors.sky,
);

/// A light theme for desktop.
final lightTheme = ExtendedThemeData(
  brightness: Brightness.light,
  colorScheme: _colorScheme,
  labelStyle: const TextStyle(
    fontFamily: _kDefaultFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    height: 16 / 12,
  ),
  bodyStyle: const TextStyle(
    fontFamily: _kDefaultFontFamily,
    fontSize: 14,
    height: 18 / 14,
  ),
  baseStyleResolver: WidgetBaseStyleResolver(),
);

/// A light theme for mobile.
final mobileLightTheme = ExtendedThemeData(
  brightness: Brightness.light,
  colorScheme: _colorScheme,
  labelStyle: const TextStyle(
    fontFamily: _kDefaultFontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 18 / 14,
  ),
  bodyStyle: const TextStyle(
    fontFamily: _kDefaultFontFamily,
    fontSize: 16,
    height: 20 / 16,
  ),
  userInteractiveDimension: 34.0,
  userInteractivePadding: const EdgeInsets.all(8.0),
  userInteractiveBorderRadius: const BorderRadius.all(Radius.circular(6.0)),
  baseStyleResolver: WidgetBaseStyleResolver(),
);
