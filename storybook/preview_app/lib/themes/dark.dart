import 'package:reflect_colors/reflect_colors.dart';
import 'package:reflect_ui/reflect_ui.dart';

const _colorScheme = ExtendedColorScheme.light(
  primary: ReflectColors.indigo,
  secondary: ReflectColors.neutral,
  success: ReflectColors.green,
  danger: ReflectColors.red,
  warning: ReflectColors.amber,
  info: ReflectColors.sky,
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
  baseStyleResolver: WidgetBaseStyleResolver(),
);
