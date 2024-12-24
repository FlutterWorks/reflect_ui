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
  DesignColors get colors;
  DesignIcons get icons;
  DesignSizing get sizing;
  DesignSpacing get spacing;
  DesignTypography get typography;

  @override
  DesignThemeData copyWith({
    String? id,
    String? name,
    Brightness? brightness,
    DesignColors? colors,
    DesignIcons? icons,
    DesignSizing? sizing,
    DesignSpacing? spacing,
    DesignTypography? typography,
  }) {
    return DesignThemeData(
      id: id ?? this.id,
      name: name ?? this.name,
      brightness: brightness ?? this.brightness,
      colors: colors ?? this.colors,
      icons: icons ?? this.icons,
      sizing: sizing ?? this.sizing,
      spacing: spacing ?? this.spacing,
      typography: typography ?? this.typography,
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
      colors: t < 0.5 ? colors : other.colors,
      icons: t < 0.5 ? icons : other.icons,
      sizing: t < 0.5 ? sizing : other.sizing,
      spacing: t < 0.5 ? spacing : other.spacing,
      typography: t < 0.5 ? typography : other.typography,
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
            const DeepCollectionEquality().equals(colors, other.colors) &&
            const DeepCollectionEquality().equals(icons, other.icons) &&
            const DeepCollectionEquality().equals(sizing, other.sizing) &&
            const DeepCollectionEquality().equals(spacing, other.spacing) &&
            const DeepCollectionEquality()
                .equals(typography, other.typography));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brightness),
      const DeepCollectionEquality().hash(colors),
      const DeepCollectionEquality().hash(icons),
      const DeepCollectionEquality().hash(sizing),
      const DeepCollectionEquality().hash(spacing),
      const DeepCollectionEquality().hash(typography),
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
      ..add(DiagnosticsProperty('colors', colors))
      ..add(DiagnosticsProperty('icons', icons))
      ..add(DiagnosticsProperty('sizing', sizing))
      ..add(DiagnosticsProperty('spacing', spacing))
      ..add(DiagnosticsProperty('typography', typography));
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

  /// The colors of the design theme.
  DesignColors get colors => designThemeData.colors;

  /// The icons of the design theme.
  DesignIcons get icons => designThemeData.icons;

  /// The sizing of the design theme.
  DesignSizing get sizing => designThemeData.sizing;

  /// The spacing of the design theme.
  DesignSpacing get spacing => designThemeData.spacing;

  /// The typography of the design theme.
  DesignTypography get typography => designThemeData.typography;
}
