import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/widget_kind.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
import 'package:reflect_ui/src/core/widget_variant.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';
import 'package:reflect_ui/src/widgets/icon/icon_style.dart';

abstract class WidgetProperty<T> extends WidgetStateProperty<T> {
  /// Returns a value of type `T` that depends on [states] and the other
  /// properties.
  T resolveWith(
    Set<WidgetState> states, {
    WidgetKind? kind,
    WidgetVariant? variant,
    WidgetSize? size,
    Map<String, dynamic>? extra,
    DesignThemeData? theme,
  });

  static WidgetProperty<T> all<T>(T value) => WidgetPropertyAll<T>(value);

  /// Creates a [SizedWidgetProperty] that resolves to a set of [Size]
  /// based on the given [baseDimension] and [sizingUnit].
  static SizedWidgetProperty<Size> sizedSize(
    double baseDimension,
    double sizingUnit, [
    double scale = 1,
  ]) {
    return SizedWidgetProperty<Size>(
      tiny: Size.square((baseDimension - (sizingUnit * 2)) * scale),
      small: Size.square((baseDimension - sizingUnit) * scale),
      medium: Size.square(baseDimension * scale),
      large: Size.square((baseDimension + sizingUnit) * scale),
      big: Size.square((baseDimension + (sizingUnit * 2)) * scale),
    );
  }

  /// Creates a [SizedWidgetProperty] that resolves to a set of [EdgeInsets]
  /// based on the given [baseDimension] and [spacingUnit].
  static SizedWidgetProperty<EdgeInsets> sizedInsets(
    double baseDimension,
    double spacingUnit, [
    double scale = 1,
  ]) {
    return SizedWidgetProperty<EdgeInsets>(
      tiny: EdgeInsets.all((baseDimension - (spacingUnit * 2)) * scale),
      small: EdgeInsets.all((baseDimension - spacingUnit) * scale),
      medium: EdgeInsets.all(baseDimension * scale),
      large: EdgeInsets.all((baseDimension + spacingUnit) * scale),
      big: EdgeInsets.all((baseDimension + (spacingUnit * 2)) * scale),
    );
  }

  /// Creates a [SizedWidgetProperty] that resolves to a set of [BorderRadius]
  /// based on the given [baseDimension] and [spacingUnit].
  static SizedWidgetProperty<BorderRadius> sizedRadius(
    double baseDimension,
    double spacingUnit, [
    double scale = 1,
  ]) {
    return SizedWidgetProperty<BorderRadius>(
      tiny: BorderRadius.circular((baseDimension - (spacingUnit * 2)) * scale),
      small: BorderRadius.circular((baseDimension - spacingUnit) * scale),
      medium: BorderRadius.circular(baseDimension * scale),
      large: BorderRadius.circular((baseDimension + spacingUnit) * scale),
      big: BorderRadius.circular((baseDimension + (spacingUnit * 2)) * scale),
    );
  }

  /// Creates a [SizedWidgetProperty] that resolves to a set of [IconStyle]
  /// based on the given [baseDimension] and [sizingUnit].
  static SizedWidgetProperty<IconStyle> sizedIconStyle(
    double baseDimension,
    double sizingUnit, [
    double scale = 1,
  ]) {
    return SizedWidgetProperty<IconStyle>(
      tiny: IconStyle(size: (baseDimension - (sizingUnit * 2)) * scale),
      small: IconStyle(size: (baseDimension - sizingUnit) * scale),
      medium: IconStyle(size: baseDimension * scale),
      large: IconStyle(size: (baseDimension + sizingUnit) * scale),
      big: IconStyle(size: (baseDimension + (sizingUnit * 2)) * scale),
    );
  }
}

class WidgetPropertyAll<T> implements WidgetProperty<T> {
  /// Constructs a [WidgetProperty] that always resolves to the given
  /// value.
  const WidgetPropertyAll(this.value);

  /// The value of the property that will be used for all states.
  final T value;

  @override
  T resolve(Set<WidgetState> states) => value;

  @override
  T resolveWith(
    Set<WidgetState> states, {
    WidgetKind? kind,
    WidgetVariant? variant,
    WidgetSize? size,
    Map<String, dynamic>? extra,
    DesignThemeData? theme,
  }) {
    return value;
  }

  @override
  String toString() {
    if (value is double) {
      return 'WidgetPropertyAll(${debugFormatDouble(value as double)})';
    } else {
      return 'WidgetPropertyAll($value)';
    }
  }
}

class KindedWidgetProperty<T> implements WidgetProperty<T> {
  const KindedWidgetProperty({
    required this.primary,
    required this.secondary,
    required this.success,
    required this.danger,
    required this.warning,
    required this.info,
    this.debugName,
  });

  final T primary;
  final T secondary;
  final T success;
  final T danger;
  final T warning;
  final T info;

  final String? debugName;

  Map<NamedWidgetKind, T> get _values {
    return {
      NamedWidgetKind.primary: primary,
      NamedWidgetKind.secondary: secondary,
      NamedWidgetKind.success: success,
      NamedWidgetKind.danger: danger,
      NamedWidgetKind.warning: warning,
      NamedWidgetKind.info: info,
    };
  }

  @override
  T resolve(Set<WidgetState> states) => resolveWith(states);

  @override
  T resolveWith(
    Set<WidgetState> states, {
    WidgetKind? kind,
    WidgetVariant? variant,
    WidgetSize? size,
    Map<String, dynamic>? extra,
    DesignThemeData? theme,
  }) {
    if (kind == null) {
      throw ArgumentError(
        'kind is required for ${debugName ?? T.runtimeType} property.',
      );
    }
    return _values[kind.namedKind]!;
  }
}

class VariantedWidgetProperty<T> implements WidgetProperty<T> {
  const VariantedWidgetProperty({
    required this.filled,
    required this.tinted,
    required this.outlined,
    required this.subtle,
    required this.plain,
    this.debugName,
  });

  final T filled;
  final T tinted;
  final T outlined;
  final T subtle;
  final T plain;

  final String? debugName;

  Map<NamedWidgetVariant, T> get _values {
    return {
      NamedWidgetVariant.filled: filled,
      NamedWidgetVariant.tinted: tinted,
      NamedWidgetVariant.outlined: outlined,
      NamedWidgetVariant.subtle: subtle,
      NamedWidgetVariant.plain: plain,
    };
  }

  @override
  T resolve(Set<WidgetState> states) => resolveWith(states);

  @override
  T resolveWith(
    Set<WidgetState> states, {
    WidgetKind? kind,
    WidgetVariant? variant,
    WidgetSize? size,
    Map<String, dynamic>? extra,
    DesignThemeData? theme,
  }) {
    if (variant == null) {
      throw ArgumentError(
        'variant is required for ${debugName ?? T.runtimeType} property.',
      );
    }
    return _values[variant.namedVariant]!;
  }
}

class SizedWidgetProperty<T> implements WidgetProperty<T> {
  const SizedWidgetProperty({
    required this.tiny,
    required this.small,
    required this.medium,
    required this.large,
    required this.big,
    this.debugName,
  });

  final T tiny;
  final T small;
  final T medium;
  final T large;
  final T big;

  final String? debugName;

  Map<NamedWidgetSize, T> get _values {
    return {
      NamedWidgetSize.tiny: tiny,
      NamedWidgetSize.small: small,
      NamedWidgetSize.medium: medium,
      NamedWidgetSize.large: large,
      NamedWidgetSize.big: big,
    };
  }

  @override
  T resolve(Set<WidgetState> states) => resolveWith(states);

  @override
  T resolveWith(
    Set<WidgetState> states, {
    WidgetKind? kind,
    WidgetVariant? variant,
    WidgetSize? size,
    Map<String, dynamic>? extra,
    DesignThemeData? theme,
  }) {
    if (size == null) {
      throw ArgumentError(
        'size is required for ${debugName ?? T.runtimeType} property.',
      );
    }
    return _values[size.namedSize]!;
  }
}
