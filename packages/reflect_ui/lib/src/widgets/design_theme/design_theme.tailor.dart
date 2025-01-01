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
  ColorScheme get colorScheme;
  IconLibrary get iconLibrary;
  Typography get typography;
  WidgetDefaults get widgetDefaults;

  @override
  DesignThemeData copyWith({
    String? id,
    String? name,
    Brightness? brightness,
    ColorScheme? colorScheme,
    IconLibrary? iconLibrary,
    Typography? typography,
    WidgetDefaults? widgetDefaults,
  }) {
    return DesignThemeData(
      id: id ?? this.id,
      name: name ?? this.name,
      brightness: brightness ?? this.brightness,
      colorScheme: colorScheme ?? this.colorScheme,
      iconLibrary: iconLibrary ?? this.iconLibrary,
      typography: typography ?? this.typography,
      widgetDefaults: widgetDefaults ?? this.widgetDefaults,
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
      colorScheme: t < 0.5 ? colorScheme : other.colorScheme,
      iconLibrary: t < 0.5 ? iconLibrary : other.iconLibrary,
      typography: t < 0.5 ? typography : other.typography,
      widgetDefaults: t < 0.5 ? widgetDefaults : other.widgetDefaults,
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
            const DeepCollectionEquality()
                .equals(colorScheme, other.colorScheme) &&
            const DeepCollectionEquality()
                .equals(iconLibrary, other.iconLibrary) &&
            const DeepCollectionEquality()
                .equals(typography, other.typography) &&
            const DeepCollectionEquality()
                .equals(widgetDefaults, other.widgetDefaults));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brightness),
      const DeepCollectionEquality().hash(colorScheme),
      const DeepCollectionEquality().hash(iconLibrary),
      const DeepCollectionEquality().hash(typography),
      const DeepCollectionEquality().hash(widgetDefaults),
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
      ..add(DiagnosticsProperty('colorScheme', colorScheme))
      ..add(DiagnosticsProperty('iconLibrary', iconLibrary))
      ..add(DiagnosticsProperty('typography', typography))
      ..add(DiagnosticsProperty('widgetDefaults', widgetDefaults));
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

  /// The color scheme of the design theme.
  ColorScheme get colorScheme => designThemeData.colorScheme;

  /// The icon library of the design theme.
  IconLibrary get iconLibrary => designThemeData.iconLibrary;

  /// The typography of the design theme.
  Typography get typography => designThemeData.typography;

  /// The widget defaults of the design theme.
  WidgetDefaults get widgetDefaults => designThemeData.widgetDefaults;
}
