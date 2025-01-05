// ignore_for_file: annotate_overrides

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show Theme, ThemeExtension;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/widgets/design_theme/color_scheme.dart';
import 'package:reflect_ui/src/widgets/design_theme/icon_library.dart';
import 'package:reflect_ui/src/widgets/design_theme/typography.dart';
import 'package:reflect_ui/src/widgets/design_theme/widget_defaults.dart';
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
  static DesignThemeData dark({
    ColorScheme colorScheme = const ColorScheme.dark(),
    IconLibrary iconLibrary = const IconLibrary.material(),
  }) {
    const typography = Typography.regular();
    return DesignThemeData(
      id: 'dark',
      name: 'Dark',
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      iconLibrary: iconLibrary,
      typography: typography,
      widgetDefaults: WidgetDefaults.regular(colorScheme, typography),
    );
  }

  /// Creates a dark compact design theme.
  static DesignThemeData darkCompact({
    ColorScheme colorScheme = const ColorScheme.dark(),
    IconLibrary iconLibrary = const IconLibrary.material(),
  }) {
    const typography = Typography.compact();
    return DesignThemeData(
      id: 'dark-compact',
      name: 'Dark Compact',
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      iconLibrary: iconLibrary,
      typography: typography,
      widgetDefaults: WidgetDefaults.compact(colorScheme, typography),
    );
  }

  /// Creates a light design theme.
  static DesignThemeData light({
    ColorScheme colorScheme = const ColorScheme.light(),
    IconLibrary iconLibrary = const IconLibrary.material(),
  }) {
    const typography = Typography.regular();
    return DesignThemeData(
      id: 'light',
      name: 'Light',
      brightness: Brightness.light,
      colorScheme: colorScheme,
      iconLibrary: iconLibrary,
      typography: typography,
      widgetDefaults: WidgetDefaults.regular(colorScheme, typography),
    );
  }

  /// Creates a light compact design theme.
  static DesignThemeData lightCompact({
    ColorScheme colorScheme = const ColorScheme.light(),
    IconLibrary iconLibrary = const IconLibrary.material(),
  }) {
    const typography = Typography.compact();
    return DesignThemeData(
      id: 'light-compact',
      name: 'Light Compact',
      brightness: Brightness.light,
      colorScheme: colorScheme,
      iconLibrary: iconLibrary,
      typography: typography,
      widgetDefaults: WidgetDefaults.compact(colorScheme, typography),
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
  bool updateShouldNotify(DesignTheme oldWidget) {
    return data != oldWidget.data;
  }

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
