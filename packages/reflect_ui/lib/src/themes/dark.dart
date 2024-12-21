import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/widget_base_style_resolver.dart';
import 'package:reflect_ui/src/widgets/extended_theme/color_scheme.dart';
import 'package:reflect_ui/src/widgets/extended_theme/colors.dart';
import 'package:reflect_ui/src/widgets/extended_theme/extended_theme.dart';

const _colorScheme = ColorScheme.light(
  primary: Colors.indigo,
  secondary: Colors.neutral,
  success: Colors.green,
  danger: Colors.red,
  warning: Colors.amber,
  info: Colors.sky,
);

/// A dark theme for desktop.
final darkTheme = ExtendedThemeData(
  brightness: Brightness.dark,
  colorScheme: _colorScheme,
  baseStyleResolver: WidgetBaseStyleResolver(),
);

/// A dark theme for mobile.
final mobileDarkTheme = ExtendedThemeData(
  brightness: Brightness.dark,
  colorScheme: _colorScheme,
  userInteractiveDimension: 34.0,
  userInteractivePadding: const EdgeInsets.all(6.0),
  userInteractiveBorderRadius: const BorderRadius.all(Radius.circular(6.0)),
  baseStyleResolver: WidgetBaseStyleResolver(),
);
