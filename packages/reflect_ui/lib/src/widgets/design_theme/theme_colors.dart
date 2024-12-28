import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart';

/// A color scheme that defines the colors of the theme.
@immutable
class ThemeColors with Diagnosticable {
  /// Create a ThemeColors instance from the given colors.
  const ThemeColors({
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
    required this.outline,
  });

  /// Create the light color scheme.
  const ThemeColors.materialLight({
    this.primary = Colors.indigo,
    this.secondary = Colors.grey,
    this.tertiary = Colors.yellow,
    this.success = Colors.green,
    this.danger = Colors.red,
    this.warning = Colors.amber,
    this.info = Colors.blue,
    this.surface = Colors.white,
    this.onSurface = Colors.black,
    this.surfaceContainer = const Color(0xFFF5F5F5),
    this.outline = Colors.grey,
  });

  /// Create the dark color scheme.
  const ThemeColors.materialDark({
    this.primary = Colors.indigo,
    this.secondary = Colors.grey,
    this.tertiary = Colors.yellow,
    this.success = Colors.green,
    this.danger = Colors.red,
    this.warning = Colors.amber,
    this.info = Colors.blue,
    this.surface = Colors.black,
    this.onSurface = Colors.white,
    this.surfaceContainer = Colors.black54,
    this.outline = Colors.black54,
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

  // #region Normal Colors

  /// A color that represents surface.
  final Color surface;

  /// A color that represents onSurface.
  final Color onSurface;

  /// A color that represents surfaceContainer.
  final Color surfaceContainer;

  /// A color that represents outline.
  final Color outline;

  // #endregion

  /// Creates a copy of this color scheme with the given fields
  /// replaced by the non-null parameter values.
  ThemeColors copyWith({
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
    Color? outline,
  }) {
    return ThemeColors(
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
      outline: outline ?? this.outline,
    );
  }

  /// Linearly interpolate between two [ThemeColors] objects.
  ///
  /// {@macro dart.ui.shadow.lerp}
  static ThemeColors lerp(
    ThemeColors a,
    ThemeColors b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return ThemeColors(
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
    return other is ThemeColors &&
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
        outline,
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    const ThemeColors s = ThemeColors.materialLight();

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
      ColorProperty('outline', outline, defaultValue: s.outline),
    );
  }
}
