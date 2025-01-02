import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/colors.dart';

/// A color scheme that defines the colors of the theme.
@immutable
class ColorScheme with Diagnosticable {
  /// Create a ColorScheme instance from the given colors.
  const ColorScheme({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.success,
    required this.warning,
    required this.info,
    required this.danger,
    required this.surface,
    required this.onSurface,
    required this.surfaceContainer,
    required this.onSurfaceContainer,
    required this.outline,
  });

  /// Create the light color scheme.
  const ColorScheme.light({
    this.primary = Colors.indigo,
    this.secondary = Colors.gray,
    this.tertiary = Colors.yellow,
    this.success = Colors.green,
    this.danger = Colors.red,
    this.warning = Colors.amber,
    this.info = Colors.blue,
    this.surface = const Color(0xfff3f4f6),
    this.onSurface = Colors.gray,
    this.surfaceContainer = Colors.white,
    this.onSurfaceContainer = Colors.neutral,
    this.outline = Colors.gray,
  });

  /// Create the dark color scheme.
  const ColorScheme.dark({
    this.primary = Colors.indigo,
    this.secondary = Colors.gray,
    this.tertiary = Colors.yellow,
    this.success = Colors.green,
    this.danger = Colors.red,
    this.warning = Colors.amber,
    this.info = Colors.blue,
    this.surface = Colors.black,
    this.onSurface = Colors.white,
    this.surfaceContainer = Colors.neutral,
    this.onSurfaceContainer = Colors.neutral,
    this.outline = Colors.neutral,
  });

  // #region Seed Colors

  /// A seed color that represents primary.
  final Color primary;

  /// A seed color that represents secondary.
  final Color secondary;

  /// A seed color that represents tertiary.
  final Color tertiary;

  /// A seed color that represents success.
  final Color success;

  /// A seed color that represents warning.
  final Color warning;

  /// A seed color that represents info.
  final Color info;

  /// A seed color that represents danger.
  final Color danger;

  // #endregion

  /// A color that represents surface.
  final Color surface;

  /// A color that represents onSurface.
  final Color onSurface;

  /// A color that represents surfaceContainer.
  final Color surfaceContainer;

  /// A color that represents surfaceContainerHigh.
  final Color onSurfaceContainer;

  /// A color that represents outline.
  final Color outline;

  /// Creates a copy of this color scheme with the given fields
  /// replaced by the non-null parameter values.
  ColorScheme copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? success,
    Color? warning,
    Color? info,
    Color? danger,
    Color? surface,
    Color? onSurface,
    Color? surfaceContainer,
    Color? onSurfaceContainer,
    Color? outline,
  }) {
    return ColorScheme(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      danger: danger ?? this.danger,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      surfaceContainer: surfaceContainer ?? this.surfaceContainer,
      onSurfaceContainer: onSurfaceContainer ?? this.onSurfaceContainer,
      outline: outline ?? this.outline,
    );
  }

  /// Linearly interpolate between two [ColorScheme] objects.
  ///
  /// {@macro dart.ui.shadow.lerp}
  static ColorScheme lerp(
    ColorScheme a,
    ColorScheme b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return ColorScheme(
      primary: Color.lerp(a.primary, b.primary, t)!,
      secondary: Color.lerp(a.secondary, b.secondary, t)!,
      tertiary: Color.lerp(a.tertiary, b.tertiary, t)!,
      success: Color.lerp(a.success, b.success, t)!,
      warning: Color.lerp(a.warning, b.warning, t)!,
      info: Color.lerp(a.info, b.info, t)!,
      danger: Color.lerp(a.danger, b.danger, t)!,
      surface: Color.lerp(a.surface, b.surface, t)!,
      onSurface: Color.lerp(a.onSurface, b.onSurface, t)!,
      surfaceContainer: Color.lerp(a.surfaceContainer, b.surfaceContainer, t)!,
      onSurfaceContainer:
          Color.lerp(a.onSurfaceContainer, b.onSurfaceContainer, t)!,
      outline: Color.lerp(a.outline, b.outline, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is ColorScheme &&
        other.primary == primary &&
        other.secondary == secondary &&
        other.tertiary == tertiary &&
        other.success == success &&
        other.warning == warning &&
        other.info == info &&
        other.danger == danger &&
        other.surface == surface &&
        other.onSurface == onSurface &&
        other.surfaceContainer == surfaceContainer &&
        other.onSurfaceContainer == onSurfaceContainer &&
        other.outline == outline;
  }

  @override
  int get hashCode => Object.hash(
        primary,
        secondary,
        tertiary,
        success,
        warning,
        info,
        danger,
        surface,
        onSurface,
        surfaceContainer,
        onSurfaceContainer,
        outline,
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    const ColorScheme s = ColorScheme.light();

    properties.add(
      ColorProperty('primary', primary, defaultValue: s.primary),
    );
    properties.add(
      ColorProperty('secondary', secondary, defaultValue: s.secondary),
    );
    properties.add(
      ColorProperty('tertiary', tertiary, defaultValue: s.tertiary),
    );
    properties.add(
      ColorProperty('success', success, defaultValue: s.success),
    );
    properties.add(
      ColorProperty('warning', warning, defaultValue: s.warning),
    );
    properties.add(
      ColorProperty('info', info, defaultValue: s.info),
    );
    properties.add(
      ColorProperty('danger', danger, defaultValue: s.danger),
    );
    properties.add(
      ColorProperty('surface', surface, defaultValue: s.surface),
    );
    properties.add(
      ColorProperty('onSurface', onSurface, defaultValue: s.onSurface),
    );
    properties.add(
      ColorProperty(
        'surfaceContainer',
        surfaceContainer,
        defaultValue: s.surfaceContainer,
      ),
    );
    properties.add(
      ColorProperty(
        'onSurfaceContainer',
        onSurfaceContainer,
        defaultValue: s.onSurfaceContainer,
      ),
    );
    properties.add(
      ColorProperty('outline', outline, defaultValue: s.outline),
    );
  }
}
