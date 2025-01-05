import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/widget_kind.dart';
import 'package:reflect_ui/src/core/widget_radius.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
import 'package:reflect_ui/src/core/widget_variant.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';
import 'package:reflect_ui/src/widgets/icon/icon_style.dart';

extension WidgetPropertyX on WidgetProperty {
  /// Resolves the property for the given [kind].
  T kinded<T>(WidgetKind? kind) {
    return resolveWith({}, kind: kind);
  }

  /// Resolves the property for the given [radius].
  T rounded<T>(BorderRadius radius) {
    if (radius is! WidgetRadius) {
      throw ArgumentError('radius must be a WidgetRadius');
    }
    return resolveWith({}, radius: radius);
  }

  /// Resolves the property for the given [size].
  T sized<T>(Size size) {
    if (size is! WidgetSize) {
      throw ArgumentError('size must be a WidgetSize');
    }
    return resolveWith({}, size: size);
  }

  /// Resolves the property for the given [variant].
  T varianted<T>(
    WidgetVariant? variant,
    Set<WidgetState> states,
    Color? seedColor, {
    bool? highContrast,
  }) {
    return resolveWith(
      states,
      variant: variant,
      extra: {
        'seedColor': seedColor,
        'highContrast': highContrast,
      }..removeWhere((key, value) => value == null),
    );
  }
}

abstract class WidgetProperty<T> extends WidgetStateProperty<T> {
  /// Returns a value of type `T` that depends on [states] and the other
  /// properties.
  T resolveWith(
    Set<WidgetState> states, {
    WidgetKind? kind,
    WidgetVariant? variant,
    WidgetSize? size,
    WidgetRadius? radius,
    Map<String, dynamic>? extra,
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
      small: Size.square((baseDimension - sizingUnit) * scale),
      medium: Size.square(baseDimension * scale),
      large: Size.square((baseDimension + sizingUnit) * scale),
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
      small: EdgeInsets.all((baseDimension - spacingUnit) * scale),
      medium: EdgeInsets.all(baseDimension * scale),
      large: EdgeInsets.all((baseDimension + spacingUnit) * scale),
    );
  }

  /// Creates a [SizedWidgetProperty] that resolves to a set of [BorderRadius]
  /// based on the given [baseDimension] and [spacingUnit].
  static RoundedWidgetProperty<BorderRadius> roundedRadius(
    double baseDimension,
    double spacingUnit, [
    double scale = 1,
  ]) {
    return RoundedWidgetProperty<BorderRadius>(
      none: BorderRadius.zero,
      tiny: BorderRadius.circular((baseDimension - (spacingUnit * 2)) * scale),
      small: BorderRadius.circular((baseDimension - spacingUnit) * scale),
      medium: BorderRadius.circular(baseDimension * scale),
      large: BorderRadius.circular((baseDimension + spacingUnit) * scale),
      big: BorderRadius.circular((baseDimension + (spacingUnit * 2)) * scale),
      full: BorderRadius.circular(9999),
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
      small: IconStyle(size: (baseDimension - sizingUnit) * scale),
      medium: IconStyle(size: baseDimension * scale),
      large: IconStyle(size: (baseDimension + sizingUnit) * scale),
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
    WidgetRadius? radius,
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

  Map<NamedKind, T> get _values {
    return {
      NamedKind.primary: primary,
      NamedKind.secondary: secondary,
      NamedKind.success: success,
      NamedKind.danger: danger,
      NamedKind.warning: warning,
      NamedKind.info: info,
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
    WidgetRadius? radius,
    Map<String, dynamic>? extra,
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

  Map<NamedVariant, T> get _values {
    return {
      NamedVariant.filled: filled,
      NamedVariant.tinted: tinted,
      NamedVariant.outlined: outlined,
      NamedVariant.subtle: subtle,
      NamedVariant.plain: plain,
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
    WidgetRadius? radius,
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
    required this.small,
    required this.medium,
    required this.large,
    this.debugName,
  });

  final T small;
  final T medium;
  final T large;

  final String? debugName;

  Map<NamedSize, T> get _values {
    return {
      NamedSize.small: small,
      NamedSize.medium: medium,
      NamedSize.large: large,
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
    WidgetRadius? radius,
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

class RoundedWidgetProperty<T> implements WidgetProperty<T> {
  const RoundedWidgetProperty({
    required this.none,
    required this.tiny,
    required this.small,
    required this.medium,
    required this.large,
    required this.big,
    required this.full,
    this.debugName,
  });

  final T none;
  final T tiny;
  final T small;
  final T medium;
  final T large;
  final T big;
  final T full;

  final String? debugName;

  Map<NamedRadius, T> get _values {
    return {
      NamedRadius.none: none,
      NamedRadius.tiny: tiny,
      NamedRadius.small: small,
      NamedRadius.medium: medium,
      NamedRadius.large: large,
      NamedRadius.big: big,
      NamedRadius.full: full,
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
    WidgetRadius? radius,
    Map<String, dynamic>? extra,
    DesignThemeData? theme,
  }) {
    if (radius == null) {
      throw ArgumentError(
        'radius is required for ${debugName ?? T.runtimeType} property.',
      );
    }
    return _values[radius.namedRadius]!;
  }
}
