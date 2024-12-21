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
  ColorScheme get colorScheme;
  TextStyle? get titleStyle;
  TextStyle? get labelStyle;
  TextStyle? get bodyStyle;
  double get userInteractiveDimension;
  EdgeInsets get userInteractivePadding;
  double get userInteractiveBorderWidth;
  BorderRadius get userInteractiveBorderRadius;
  TextStyle? get smallTitleStyle;
  TextStyle? get smallLabelStyle;
  TextStyle? get smallBodyStyle;
  double get smallUserInteractiveDimension;
  EdgeInsets get smallUserInteractivePadding;
  BorderRadius get smallUserInteractiveBorderRadius;
  double get smallUserInteractiveBorderWidth;
  TextStyle? get largeTitleStyle;
  TextStyle? get largeLabelStyle;
  TextStyle? get largeBodyStyle;
  double get largeUserInteractiveDimension;
  EdgeInsets get largeUserInteractivePadding;
  BorderRadius get largeUserInteractiveBorderRadius;
  double get largeUserInteractiveBorderWidth;
  WidgetBaseStyleResolver get baseStyleResolver;

  @override
  ExtendedThemeData copyWith({
    Brightness? brightness,
    ColorScheme? colorScheme,
    TextStyle? titleStyle,
    TextStyle? labelStyle,
    TextStyle? bodyStyle,
    double? userInteractiveDimension,
    EdgeInsets? userInteractivePadding,
    double? userInteractiveBorderWidth,
    BorderRadius? userInteractiveBorderRadius,
    TextStyle? smallTitleStyle,
    TextStyle? smallLabelStyle,
    TextStyle? smallBodyStyle,
    double? smallUserInteractiveDimension,
    EdgeInsets? smallUserInteractivePadding,
    BorderRadius? smallUserInteractiveBorderRadius,
    double? smallUserInteractiveBorderWidth,
    TextStyle? largeTitleStyle,
    TextStyle? largeLabelStyle,
    TextStyle? largeBodyStyle,
    double? largeUserInteractiveDimension,
    EdgeInsets? largeUserInteractivePadding,
    BorderRadius? largeUserInteractiveBorderRadius,
    double? largeUserInteractiveBorderWidth,
    WidgetBaseStyleResolver? baseStyleResolver,
  }) {
    return ExtendedThemeData(
      brightness: brightness ?? this.brightness,
      colorScheme: colorScheme ?? this.colorScheme,
      titleStyle: titleStyle ?? this.titleStyle,
      labelStyle: labelStyle ?? this.labelStyle,
      bodyStyle: bodyStyle ?? this.bodyStyle,
      userInteractiveDimension:
          userInteractiveDimension ?? this.userInteractiveDimension,
      userInteractivePadding:
          userInteractivePadding ?? this.userInteractivePadding,
      userInteractiveBorderWidth:
          userInteractiveBorderWidth ?? this.userInteractiveBorderWidth,
      userInteractiveBorderRadius:
          userInteractiveBorderRadius ?? this.userInteractiveBorderRadius,
      smallTitleStyle: smallTitleStyle ?? this.smallTitleStyle,
      smallLabelStyle: smallLabelStyle ?? this.smallLabelStyle,
      smallBodyStyle: smallBodyStyle ?? this.smallBodyStyle,
      smallUserInteractiveDimension:
          smallUserInteractiveDimension ?? this.smallUserInteractiveDimension,
      smallUserInteractivePadding:
          smallUserInteractivePadding ?? this.smallUserInteractivePadding,
      smallUserInteractiveBorderRadius: smallUserInteractiveBorderRadius ??
          this.smallUserInteractiveBorderRadius,
      smallUserInteractiveBorderWidth: smallUserInteractiveBorderWidth ??
          this.smallUserInteractiveBorderWidth,
      largeTitleStyle: largeTitleStyle ?? this.largeTitleStyle,
      largeLabelStyle: largeLabelStyle ?? this.largeLabelStyle,
      largeBodyStyle: largeBodyStyle ?? this.largeBodyStyle,
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
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t),
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t),
      bodyStyle: TextStyle.lerp(bodyStyle, other.bodyStyle, t),
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
      smallTitleStyle:
          TextStyle.lerp(smallTitleStyle, other.smallTitleStyle, t),
      smallLabelStyle:
          TextStyle.lerp(smallLabelStyle, other.smallLabelStyle, t),
      smallBodyStyle: TextStyle.lerp(smallBodyStyle, other.smallBodyStyle, t),
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
      largeTitleStyle:
          TextStyle.lerp(largeTitleStyle, other.largeTitleStyle, t),
      largeLabelStyle:
          TextStyle.lerp(largeLabelStyle, other.largeLabelStyle, t),
      largeBodyStyle: TextStyle.lerp(largeBodyStyle, other.largeBodyStyle, t),
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
            const DeepCollectionEquality()
                .equals(titleStyle, other.titleStyle) &&
            const DeepCollectionEquality()
                .equals(labelStyle, other.labelStyle) &&
            const DeepCollectionEquality().equals(bodyStyle, other.bodyStyle) &&
            const DeepCollectionEquality().equals(
                userInteractiveDimension, other.userInteractiveDimension) &&
            const DeepCollectionEquality()
                .equals(userInteractivePadding, other.userInteractivePadding) &&
            const DeepCollectionEquality().equals(
                userInteractiveBorderWidth, other.userInteractiveBorderWidth) &&
            const DeepCollectionEquality().equals(userInteractiveBorderRadius,
                other.userInteractiveBorderRadius) &&
            const DeepCollectionEquality()
                .equals(smallTitleStyle, other.smallTitleStyle) &&
            const DeepCollectionEquality()
                .equals(smallLabelStyle, other.smallLabelStyle) &&
            const DeepCollectionEquality()
                .equals(smallBodyStyle, other.smallBodyStyle) &&
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
            const DeepCollectionEquality()
                .equals(largeTitleStyle, other.largeTitleStyle) &&
            const DeepCollectionEquality()
                .equals(largeLabelStyle, other.largeLabelStyle) &&
            const DeepCollectionEquality()
                .equals(largeBodyStyle, other.largeBodyStyle) &&
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
    return Object.hashAll([
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(brightness),
      const DeepCollectionEquality().hash(colorScheme),
      const DeepCollectionEquality().hash(titleStyle),
      const DeepCollectionEquality().hash(labelStyle),
      const DeepCollectionEquality().hash(bodyStyle),
      const DeepCollectionEquality().hash(userInteractiveDimension),
      const DeepCollectionEquality().hash(userInteractivePadding),
      const DeepCollectionEquality().hash(userInteractiveBorderWidth),
      const DeepCollectionEquality().hash(userInteractiveBorderRadius),
      const DeepCollectionEquality().hash(smallTitleStyle),
      const DeepCollectionEquality().hash(smallLabelStyle),
      const DeepCollectionEquality().hash(smallBodyStyle),
      const DeepCollectionEquality().hash(smallUserInteractiveDimension),
      const DeepCollectionEquality().hash(smallUserInteractivePadding),
      const DeepCollectionEquality().hash(smallUserInteractiveBorderRadius),
      const DeepCollectionEquality().hash(smallUserInteractiveBorderWidth),
      const DeepCollectionEquality().hash(largeTitleStyle),
      const DeepCollectionEquality().hash(largeLabelStyle),
      const DeepCollectionEquality().hash(largeBodyStyle),
      const DeepCollectionEquality().hash(largeUserInteractiveDimension),
      const DeepCollectionEquality().hash(largeUserInteractivePadding),
      const DeepCollectionEquality().hash(largeUserInteractiveBorderRadius),
      const DeepCollectionEquality().hash(largeUserInteractiveBorderWidth),
      const DeepCollectionEquality().hash(baseStyleResolver),
    ]);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExtendedThemeData'))
      ..add(DiagnosticsProperty('brightness', brightness))
      ..add(DiagnosticsProperty('colorScheme', colorScheme))
      ..add(DiagnosticsProperty('titleStyle', titleStyle))
      ..add(DiagnosticsProperty('labelStyle', labelStyle))
      ..add(DiagnosticsProperty('bodyStyle', bodyStyle))
      ..add(DiagnosticsProperty(
          'userInteractiveDimension', userInteractiveDimension))
      ..add(
          DiagnosticsProperty('userInteractivePadding', userInteractivePadding))
      ..add(DiagnosticsProperty(
          'userInteractiveBorderWidth', userInteractiveBorderWidth))
      ..add(DiagnosticsProperty(
          'userInteractiveBorderRadius', userInteractiveBorderRadius))
      ..add(DiagnosticsProperty('smallTitleStyle', smallTitleStyle))
      ..add(DiagnosticsProperty('smallLabelStyle', smallLabelStyle))
      ..add(DiagnosticsProperty('smallBodyStyle', smallBodyStyle))
      ..add(DiagnosticsProperty(
          'smallUserInteractiveDimension', smallUserInteractiveDimension))
      ..add(DiagnosticsProperty(
          'smallUserInteractivePadding', smallUserInteractivePadding))
      ..add(DiagnosticsProperty(
          'smallUserInteractiveBorderRadius', smallUserInteractiveBorderRadius))
      ..add(DiagnosticsProperty(
          'smallUserInteractiveBorderWidth', smallUserInteractiveBorderWidth))
      ..add(DiagnosticsProperty('largeTitleStyle', largeTitleStyle))
      ..add(DiagnosticsProperty('largeLabelStyle', largeLabelStyle))
      ..add(DiagnosticsProperty('largeBodyStyle', largeBodyStyle))
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
  ColorScheme get colorScheme => extendedThemeData.colorScheme;

  /// The title text style for the theme.
  TextStyle? get titleStyle => extendedThemeData.titleStyle;

  /// The label text style for the theme.
  TextStyle? get labelStyle => extendedThemeData.labelStyle;

  /// The body text style for the theme.
  TextStyle? get bodyStyle => extendedThemeData.bodyStyle;

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

  /// The small title text style for the theme.
  TextStyle? get smallTitleStyle => extendedThemeData.smallTitleStyle;

  /// The small label text style for the theme.
  TextStyle? get smallLabelStyle => extendedThemeData.smallLabelStyle;

  /// The small body text style for the theme.
  TextStyle? get smallBodyStyle => extendedThemeData.smallBodyStyle;

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

  /// The large title text style for the theme.
  TextStyle? get largeTitleStyle => extendedThemeData.largeTitleStyle;

  /// The large label text style for the theme.
  TextStyle? get largeLabelStyle => extendedThemeData.largeLabelStyle;

  /// The large body text style for the theme.
  TextStyle? get largeBodyStyle => extendedThemeData.largeBodyStyle;

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

  /// The base style resolver for the theme.
  WidgetBaseStyleResolver get baseStyleResolver =>
      extendedThemeData.baseStyleResolver;
}
