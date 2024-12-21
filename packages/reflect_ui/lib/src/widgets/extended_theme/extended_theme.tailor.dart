// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'extended_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$ExtendedThemeDataTailorMixin
    on ThemeExtension<ExtendedThemeData>, DiagnosticableTreeMixin {
  Brightness get brightness;
  ExtendedColorScheme get colorScheme;
  double get userInteractiveDimension;
  EdgeInsets get userInteractivePadding;
  double get userInteractiveBorderWidth;
  BorderRadius get userInteractiveBorderRadius;
  double get smallUserInteractiveDimension;
  EdgeInsets get smallUserInteractivePadding;
  BorderRadius get smallUserInteractiveBorderRadius;
  double get smallUserInteractiveBorderWidth;
  double get largeUserInteractiveDimension;
  EdgeInsets get largeUserInteractivePadding;
  BorderRadius get largeUserInteractiveBorderRadius;
  double get largeUserInteractiveBorderWidth;
  WidgetBaseStyleResolver get baseStyleResolver;

  @override
  ExtendedThemeData copyWith({
    Brightness? brightness,
    ExtendedColorScheme? colorScheme,
    double? userInteractiveDimension,
    EdgeInsets? userInteractivePadding,
    double? userInteractiveBorderWidth,
    BorderRadius? userInteractiveBorderRadius,
    double? smallUserInteractiveDimension,
    EdgeInsets? smallUserInteractivePadding,
    BorderRadius? smallUserInteractiveBorderRadius,
    double? smallUserInteractiveBorderWidth,
    double? largeUserInteractiveDimension,
    EdgeInsets? largeUserInteractivePadding,
    BorderRadius? largeUserInteractiveBorderRadius,
    double? largeUserInteractiveBorderWidth,
    WidgetBaseStyleResolver? baseStyleResolver,
  }) {
    return ExtendedThemeData(
      brightness: brightness ?? this.brightness,
      colorScheme: colorScheme ?? this.colorScheme,
      userInteractiveDimension:
          userInteractiveDimension ?? this.userInteractiveDimension,
      userInteractivePadding:
          userInteractivePadding ?? this.userInteractivePadding,
      userInteractiveBorderWidth:
          userInteractiveBorderWidth ?? this.userInteractiveBorderWidth,
      userInteractiveBorderRadius:
          userInteractiveBorderRadius ?? this.userInteractiveBorderRadius,
      smallUserInteractiveDimension:
          smallUserInteractiveDimension ?? this.smallUserInteractiveDimension,
      smallUserInteractivePadding:
          smallUserInteractivePadding ?? this.smallUserInteractivePadding,
      smallUserInteractiveBorderRadius: smallUserInteractiveBorderRadius ??
          this.smallUserInteractiveBorderRadius,
      smallUserInteractiveBorderWidth: smallUserInteractiveBorderWidth ??
          this.smallUserInteractiveBorderWidth,
      largeUserInteractiveDimension:
          largeUserInteractiveDimension ?? this.largeUserInteractiveDimension,
      largeUserInteractivePadding:
          largeUserInteractivePadding ?? this.largeUserInteractivePadding,
      largeUserInteractiveBorderRadius: largeUserInteractiveBorderRadius ??
          this.largeUserInteractiveBorderRadius,
      largeUserInteractiveBorderWidth: largeUserInteractiveBorderWidth ??
          this.largeUserInteractiveBorderWidth,
      baseStyleResolver: baseStyleResolver ?? this.baseStyleResolver,
    );
  }

  @override
  ExtendedThemeData lerp(
      covariant ThemeExtension<ExtendedThemeData>? other, double t) {
    if (other is! ExtendedThemeData) return this as ExtendedThemeData;
    return ExtendedThemeData(
      brightness: t < 0.5 ? brightness : other.brightness,
      colorScheme: t < 0.5 ? colorScheme : other.colorScheme,
      userInteractiveDimension:
          t < 0.5 ? userInteractiveDimension : other.userInteractiveDimension,
      userInteractivePadding:
          t < 0.5 ? userInteractivePadding : other.userInteractivePadding,
      userInteractiveBorderWidth: t < 0.5
          ? userInteractiveBorderWidth
          : other.userInteractiveBorderWidth,
      userInteractiveBorderRadius: t < 0.5
          ? userInteractiveBorderRadius
          : other.userInteractiveBorderRadius,
      smallUserInteractiveDimension: t < 0.5
          ? smallUserInteractiveDimension
          : other.smallUserInteractiveDimension,
      smallUserInteractivePadding: t < 0.5
          ? smallUserInteractivePadding
          : other.smallUserInteractivePadding,
      smallUserInteractiveBorderRadius: t < 0.5
          ? smallUserInteractiveBorderRadius
          : other.smallUserInteractiveBorderRadius,
      smallUserInteractiveBorderWidth: t < 0.5
          ? smallUserInteractiveBorderWidth
          : other.smallUserInteractiveBorderWidth,
      largeUserInteractiveDimension: t < 0.5
          ? largeUserInteractiveDimension
          : other.largeUserInteractiveDimension,
      largeUserInteractivePadding: t < 0.5
          ? largeUserInteractivePadding
          : other.largeUserInteractivePadding,
      largeUserInteractiveBorderRadius: t < 0.5
          ? largeUserInteractiveBorderRadius
          : other.largeUserInteractiveBorderRadius,
      largeUserInteractiveBorderWidth: t < 0.5
          ? largeUserInteractiveBorderWidth
          : other.largeUserInteractiveBorderWidth,
      baseStyleResolver: t < 0.5 ? baseStyleResolver : other.baseStyleResolver,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExtendedThemeData &&
            const DeepCollectionEquality()
                .equals(brightness, other.brightness) &&
            const DeepCollectionEquality()
                .equals(colorScheme, other.colorScheme) &&
            const DeepCollectionEquality().equals(
                userInteractiveDimension, other.userInteractiveDimension) &&
            const DeepCollectionEquality()
                .equals(userInteractivePadding, other.userInteractivePadding) &&
            const DeepCollectionEquality().equals(
                userInteractiveBorderWidth, other.userInteractiveBorderWidth) &&
            const DeepCollectionEquality().equals(userInteractiveBorderRadius,
                other.userInteractiveBorderRadius) &&
            const DeepCollectionEquality().equals(smallUserInteractiveDimension,
                other.smallUserInteractiveDimension) &&
            const DeepCollectionEquality().equals(smallUserInteractivePadding,
                other.smallUserInteractivePadding) &&
            const DeepCollectionEquality().equals(
                smallUserInteractiveBorderRadius,
                other.smallUserInteractiveBorderRadius) &&
            const DeepCollectionEquality().equals(
                smallUserInteractiveBorderWidth,
                other.smallUserInteractiveBorderWidth) &&
            const DeepCollectionEquality().equals(largeUserInteractiveDimension,
                other.largeUserInteractiveDimension) &&
            const DeepCollectionEquality().equals(largeUserInteractivePadding,
                other.largeUserInteractivePadding) &&
            const DeepCollectionEquality().equals(
                largeUserInteractiveBorderRadius,
                other.largeUserInteractiveBorderRadius) &&
            const DeepCollectionEquality().equals(
                largeUserInteractiveBorderWidth,
                other.largeUserInteractiveBorderWidth) &&
            const DeepCollectionEquality()
                .equals(baseStyleResolver, other.baseStyleResolver));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(brightness),
      const DeepCollectionEquality().hash(colorScheme),
      const DeepCollectionEquality().hash(userInteractiveDimension),
      const DeepCollectionEquality().hash(userInteractivePadding),
      const DeepCollectionEquality().hash(userInteractiveBorderWidth),
      const DeepCollectionEquality().hash(userInteractiveBorderRadius),
      const DeepCollectionEquality().hash(smallUserInteractiveDimension),
      const DeepCollectionEquality().hash(smallUserInteractivePadding),
      const DeepCollectionEquality().hash(smallUserInteractiveBorderRadius),
      const DeepCollectionEquality().hash(smallUserInteractiveBorderWidth),
      const DeepCollectionEquality().hash(largeUserInteractiveDimension),
      const DeepCollectionEquality().hash(largeUserInteractivePadding),
      const DeepCollectionEquality().hash(largeUserInteractiveBorderRadius),
      const DeepCollectionEquality().hash(largeUserInteractiveBorderWidth),
      const DeepCollectionEquality().hash(baseStyleResolver),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExtendedThemeData'))
      ..add(DiagnosticsProperty('brightness', brightness))
      ..add(DiagnosticsProperty('colorScheme', colorScheme))
      ..add(DiagnosticsProperty(
          'userInteractiveDimension', userInteractiveDimension))
      ..add(
          DiagnosticsProperty('userInteractivePadding', userInteractivePadding))
      ..add(DiagnosticsProperty(
          'userInteractiveBorderWidth', userInteractiveBorderWidth))
      ..add(DiagnosticsProperty(
          'userInteractiveBorderRadius', userInteractiveBorderRadius))
      ..add(DiagnosticsProperty(
          'smallUserInteractiveDimension', smallUserInteractiveDimension))
      ..add(DiagnosticsProperty(
          'smallUserInteractivePadding', smallUserInteractivePadding))
      ..add(DiagnosticsProperty(
          'smallUserInteractiveBorderRadius', smallUserInteractiveBorderRadius))
      ..add(DiagnosticsProperty(
          'smallUserInteractiveBorderWidth', smallUserInteractiveBorderWidth))
      ..add(DiagnosticsProperty(
          'largeUserInteractiveDimension', largeUserInteractiveDimension))
      ..add(DiagnosticsProperty(
          'largeUserInteractivePadding', largeUserInteractivePadding))
      ..add(DiagnosticsProperty(
          'largeUserInteractiveBorderRadius', largeUserInteractiveBorderRadius))
      ..add(DiagnosticsProperty(
          'largeUserInteractiveBorderWidth', largeUserInteractiveBorderWidth))
      ..add(DiagnosticsProperty('baseStyleResolver', baseStyleResolver));
  }
}

extension ExtendedThemeDataBuildContextProps on BuildContext {
  ExtendedThemeData get extendedThemeData =>
      Theme.of(this).extension<ExtendedThemeData>()!;

  /// The brightness of the theme.
  Brightness get brightness => extendedThemeData.brightness;

  /// The color scheme of the theme.
  ExtendedColorScheme get colorScheme => extendedThemeData.colorScheme;

  /// The minimum dimension for user interactive widgets.
  double get userInteractiveDimension =>
      extendedThemeData.userInteractiveDimension;

  /// The padding for user interactive widgets.
  EdgeInsets get userInteractivePadding =>
      extendedThemeData.userInteractivePadding;

  /// The border width for user interactive widgets.
  double get userInteractiveBorderWidth =>
      extendedThemeData.userInteractiveBorderWidth;

  /// The border radius for user interactive widgets.
  BorderRadius get userInteractiveBorderRadius =>
      extendedThemeData.userInteractiveBorderRadius;

  /// The dimension for small user interactive widgets.
  double get smallUserInteractiveDimension =>
      extendedThemeData.smallUserInteractiveDimension;

  /// The padding for small user interactive widgets.
  EdgeInsets get smallUserInteractivePadding =>
      extendedThemeData.smallUserInteractivePadding;

  /// The border radius for small user interactive widgets.
  BorderRadius get smallUserInteractiveBorderRadius =>
      extendedThemeData.smallUserInteractiveBorderRadius;

  /// The border width for small user interactive widgets.
  double get smallUserInteractiveBorderWidth =>
      extendedThemeData.smallUserInteractiveBorderWidth;

  /// The dimension for large user interactive widgets.
  double get largeUserInteractiveDimension =>
      extendedThemeData.largeUserInteractiveDimension;

  /// The padding for large user interactive widgets.
  EdgeInsets get largeUserInteractivePadding =>
      extendedThemeData.largeUserInteractivePadding;

  /// The border radius for large user interactive widgets.
  BorderRadius get largeUserInteractiveBorderRadius =>
      extendedThemeData.largeUserInteractiveBorderRadius;

  /// The border width for large user interactive widgets.
  double get largeUserInteractiveBorderWidth =>
      extendedThemeData.largeUserInteractiveBorderWidth;
  WidgetBaseStyleResolver get baseStyleResolver =>
      extendedThemeData.baseStyleResolver;
}
