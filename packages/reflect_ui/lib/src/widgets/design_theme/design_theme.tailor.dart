// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'design_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$DesignThemeDataTailorMixin
    on ThemeExtension<DesignThemeData>, DiagnosticableTreeMixin {
  String get id;
  String get name;
  Brightness get brightness;
  ThemeBorders get borders;
  ThemeColors get colors;
  ThemeIcons get icons;
  ThemeSizing get sizing;
  ThemeSpacing get spacing;
  ThemeTypography get typography;
  WidgetBaseStyle? get defaultBaseStyle;
  WidgetBaseStyleResolver? get defaultBaseStyleResolver;
  WidgetBaseStyle get baseStyle;

  @override
  DesignThemeData copyWith({
    String? id,
    String? name,
    Brightness? brightness,
    ThemeBorders? borders,
    ThemeColors? colors,
    ThemeIcons? icons,
    ThemeSizing? sizing,
    ThemeSpacing? spacing,
    ThemeTypography? typography,
    WidgetBaseStyle? defaultBaseStyle,
    WidgetBaseStyleResolver? defaultBaseStyleResolver,
    WidgetBaseStyle? baseStyle,
  }) {
    return DesignThemeData(
      id: id ?? this.id,
      name: name ?? this.name,
      brightness: brightness ?? this.brightness,
      borders: borders ?? this.borders,
      colors: colors ?? this.colors,
      icons: icons ?? this.icons,
      sizing: sizing ?? this.sizing,
      spacing: spacing ?? this.spacing,
      typography: typography ?? this.typography,
      defaultBaseStyle: defaultBaseStyle ?? this.defaultBaseStyle,
      defaultBaseStyleResolver:
          defaultBaseStyleResolver ?? this.defaultBaseStyleResolver,
    );
  }

  @override
  DesignThemeData lerp(
      covariant ThemeExtension<DesignThemeData>? other, double t) {
    if (other is! DesignThemeData) return this as DesignThemeData;
    return DesignThemeData(
      id: t < 0.5 ? id : other.id,
      name: t < 0.5 ? name : other.name,
      brightness: t < 0.5 ? brightness : other.brightness,
      borders: t < 0.5 ? borders : other.borders,
      colors: t < 0.5 ? colors : other.colors,
      icons: t < 0.5 ? icons : other.icons,
      sizing: t < 0.5 ? sizing : other.sizing,
      spacing: t < 0.5 ? spacing : other.spacing,
      typography: t < 0.5 ? typography : other.typography,
      defaultBaseStyle: t < 0.5 ? defaultBaseStyle : other.defaultBaseStyle,
      defaultBaseStyleResolver:
          t < 0.5 ? defaultBaseStyleResolver : other.defaultBaseStyleResolver,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DesignThemeData &&
            const DeepCollectionEquality().equals(id, other.id) &&
            const DeepCollectionEquality().equals(name, other.name) &&
            const DeepCollectionEquality()
                .equals(brightness, other.brightness) &&
            const DeepCollectionEquality().equals(borders, other.borders) &&
            const DeepCollectionEquality().equals(colors, other.colors) &&
            const DeepCollectionEquality().equals(icons, other.icons) &&
            const DeepCollectionEquality().equals(sizing, other.sizing) &&
            const DeepCollectionEquality().equals(spacing, other.spacing) &&
            const DeepCollectionEquality()
                .equals(typography, other.typography) &&
            const DeepCollectionEquality()
                .equals(defaultBaseStyle, other.defaultBaseStyle) &&
            const DeepCollectionEquality().equals(
                defaultBaseStyleResolver, other.defaultBaseStyleResolver) &&
            const DeepCollectionEquality().equals(baseStyle, other.baseStyle));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brightness),
      const DeepCollectionEquality().hash(borders),
      const DeepCollectionEquality().hash(colors),
      const DeepCollectionEquality().hash(icons),
      const DeepCollectionEquality().hash(sizing),
      const DeepCollectionEquality().hash(spacing),
      const DeepCollectionEquality().hash(typography),
      const DeepCollectionEquality().hash(defaultBaseStyle),
      const DeepCollectionEquality().hash(defaultBaseStyleResolver),
      const DeepCollectionEquality().hash(baseStyle),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DesignThemeData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('brightness', brightness))
      ..add(DiagnosticsProperty('borders', borders))
      ..add(DiagnosticsProperty('colors', colors))
      ..add(DiagnosticsProperty('icons', icons))
      ..add(DiagnosticsProperty('sizing', sizing))
      ..add(DiagnosticsProperty('spacing', spacing))
      ..add(DiagnosticsProperty('typography', typography))
      ..add(DiagnosticsProperty('defaultBaseStyle', defaultBaseStyle))
      ..add(DiagnosticsProperty(
          'defaultBaseStyleResolver', defaultBaseStyleResolver))
      ..add(DiagnosticsProperty('baseStyle', baseStyle));
  }
}

extension DesignThemeDataBuildContextProps on BuildContext {
  DesignThemeData get designThemeData =>
      Theme.of(this).extension<DesignThemeData>()!;

  /// The id of the design theme.
  String get id => designThemeData.id;

  /// The name of the design theme.
  String get name => designThemeData.name;

  /// The brightness of the design theme.
  Brightness get brightness => designThemeData.brightness;

  /// The borders of the design theme.
  ThemeBorders get borders => designThemeData.borders;

  /// The colors of the design theme.
  ThemeColors get colors => designThemeData.colors;

  /// The icons of the design theme.
  ThemeIcons get icons => designThemeData.icons;

  /// The sizing of the design theme.
  ThemeSizing get sizing => designThemeData.sizing;

  /// The spacing of the design theme.
  ThemeSpacing get spacing => designThemeData.spacing;

  /// The typography of the design theme.
  ThemeTypography get typography => designThemeData.typography;

  /// The base style of the design theme.
  WidgetBaseStyle? get defaultBaseStyle => designThemeData.defaultBaseStyle;

  /// The base style resolver of the design theme.
  WidgetBaseStyleResolver? get defaultBaseStyleResolver =>
      designThemeData.defaultBaseStyleResolver;
  WidgetBaseStyle get baseStyle => designThemeData.baseStyle;
}
