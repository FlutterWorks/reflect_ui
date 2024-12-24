// // ignore_for_file: annotate_overrides

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart' show Theme, ThemeExtension;
// import 'package:flutter/widgets.dart';
// import 'package:reflect_ui/src/painting/widget_base_style_resolver.dart';
// import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

// export 'tokens/design_icons.dart';

// part 'theme.tailor.dart';

// const String _kDefaultFontFamily = 'Inter';

// const kUserInteractiveDimension = 44.0;
// const kUserInteractivePadding = EdgeInsets.all(6.0);
// const kUserInteractiveBorderRadius = BorderRadius.all(Radius.circular(6.0));
// const kUserInteractiveBorderWidth = 1.0;

// const kCompactUserInteractiveDimension = 28.0;
// const kCompactUserInteractivePadding = EdgeInsets.all(6.0);
// const kCompactUserInteractiveBorderRadius =
//     BorderRadius.all(Radius.circular(6.0));
// const kCompactUserInteractiveBorderWidth = 1.0;

// @TailorMixin()
// class DesignThemeData extends ThemeExtension<DesignThemeData>
//     with DiagnosticableTreeMixin, _$CustomizableThemeDataTailorMixin {
//   const CustomizableThemeData({
//     required this.brightness,
//     required this.colorScheme,
//     this.titleStyle,
//     this.labelStyle,
//     this.bodyStyle,
//     this.userInteractiveDimension = kUserInteractiveDimension,
//     this.userInteractivePadding = kUserInteractivePadding,
//     this.userInteractiveBorderRadius = kUserInteractiveBorderRadius,
//     this.userInteractiveBorderWidth = kUserInteractiveBorderWidth,

//     /// small
//     this.smallTitleStyle,
//     this.smallLabelStyle,
//     this.smallBodyStyle,
//     this.smallUserInteractiveDimension = 24.0,
//     this.smallUserInteractivePadding = const EdgeInsets.all(4.0),
//     this.smallUserInteractiveBorderRadius =
//         const BorderRadius.all(Radius.circular(4.0)),
//     this.smallUserInteractiveBorderWidth = 1.0,

//     /// large
//     this.largeUserInteractiveDimension = 32.0,
//     this.largeUserInteractivePadding = const EdgeInsets.all(8.0),
//     this.largeUserInteractiveBorderRadius =
//         const BorderRadius.all(Radius.circular(8.0)),
//     this.largeUserInteractiveBorderWidth = 1.0,
//     this.largeTitleStyle,
//     this.largeLabelStyle,
//     this.largeBodyStyle,
//     this.widgetBaseStyleResolver = const WidgetBaseStyleResolver(),
//   });

//   const CustomizableThemeData.light({
//     this.brightness = Brightness.light,
//     this.colorScheme = const ColorScheme.light(),
//     this.titleStyle,
//     this.labelStyle = const TextStyle(
//       fontFamily: _kDefaultFontFamily,
//       fontWeight: FontWeight.w600,
//       fontSize: 16,
//       height: 20 / 16,
//     ),
//     this.bodyStyle = const TextStyle(
//       fontFamily: _kDefaultFontFamily,
//       fontSize: 16,
//       height: 20 / 16,
//     ),
//     this.userInteractiveDimension = kUserInteractiveDimension,
//     this.userInteractivePadding = kUserInteractivePadding,
//     this.userInteractiveBorderRadius = kUserInteractiveBorderRadius,
//     this.userInteractiveBorderWidth = kUserInteractiveBorderWidth,

//     /// small
//     this.smallTitleStyle,
//     this.smallLabelStyle,
//     this.smallBodyStyle = const TextStyle(
//       fontFamily: _kDefaultFontFamily,
//       fontSize: 12,
//       height: 16 / 12,
//     ),
//     this.smallUserInteractiveDimension = 24.0,
//     this.smallUserInteractivePadding = const EdgeInsets.all(4.0),
//     this.smallUserInteractiveBorderRadius =
//         const BorderRadius.all(Radius.circular(4.0)),
//     this.smallUserInteractiveBorderWidth = 1.0,

//     /// large
//     this.largeUserInteractiveDimension = 32.0,
//     this.largeUserInteractivePadding = const EdgeInsets.all(8.0),
//     this.largeUserInteractiveBorderRadius =
//         const BorderRadius.all(Radius.circular(8.0)),
//     this.largeUserInteractiveBorderWidth = 1.0,
//     this.largeTitleStyle,
//     this.largeLabelStyle,
//     this.largeBodyStyle,
//     this.widgetBaseStyleResolver = const WidgetBaseStyleResolver(),
//   });

//   const CustomizableThemeData.compactLight({
//     this.brightness = Brightness.light,
//     this.colorScheme = const ColorScheme.light(),
//     this.titleStyle,
//     this.labelStyle = const TextStyle(
//       fontFamily: _kDefaultFontFamily,
//       fontWeight: FontWeight.w600,
//       fontSize: 12,
//       height: 16 / 12,
//     ),
//     this.bodyStyle = const TextStyle(
//       fontFamily: _kDefaultFontFamily,
//       fontSize: 14,
//       height: 18 / 14,
//     ),
//     this.userInteractiveDimension = kCompactUserInteractiveDimension,
//     this.userInteractivePadding = kCompactUserInteractivePadding,
//     this.userInteractiveBorderRadius = kCompactUserInteractiveBorderRadius,
//     this.userInteractiveBorderWidth = kCompactUserInteractiveBorderWidth,

//     /// small
//     this.smallTitleStyle,
//     this.smallLabelStyle,
//     this.smallBodyStyle = const TextStyle(
//       fontFamily: _kDefaultFontFamily,
//       fontSize: 12,
//       height: 16 / 12,
//     ),
//     this.smallUserInteractiveDimension = 24.0,
//     this.smallUserInteractivePadding = const EdgeInsets.all(4.0),
//     this.smallUserInteractiveBorderRadius =
//         const BorderRadius.all(Radius.circular(4.0)),
//     this.smallUserInteractiveBorderWidth = 1.0,

//     /// large
//     this.largeUserInteractiveDimension = 32.0,
//     this.largeUserInteractivePadding = const EdgeInsets.all(8.0),
//     this.largeUserInteractiveBorderRadius =
//         const BorderRadius.all(Radius.circular(8.0)),
//     this.largeUserInteractiveBorderWidth = 1.0,
//     this.largeTitleStyle,
//     this.largeLabelStyle,
//     this.largeBodyStyle,
//     this.widgetBaseStyleResolver = const WidgetBaseStyleResolver(),
//   });

//   /// The brightness of the theme.
//   final Brightness brightness;

//   /// The color scheme of the theme.
//   final ColorScheme colorScheme;

//   /// The title text style for the theme.
//   final TextStyle? titleStyle;

//   /// The label text style for the theme.
//   final TextStyle? labelStyle;

//   /// The body text style for the theme.
//   final TextStyle? bodyStyle;

//   /// The minimum dimension for user interactive widgets.
//   final double userInteractiveDimension;

//   /// The padding for user interactive widgets.
//   final EdgeInsets userInteractivePadding;

//   /// The border width for user interactive widgets.
//   final double userInteractiveBorderWidth;

//   /// The border radius for user interactive widgets.
//   final BorderRadius userInteractiveBorderRadius;

//   // #region Small User Interactive Widgets

//   /// The small title text style for the theme.
//   final TextStyle? smallTitleStyle;

//   /// The small label text style for the theme.
//   final TextStyle? smallLabelStyle;

//   /// The small body text style for the theme.
//   final TextStyle? smallBodyStyle;

//   /// The dimension for small user interactive widgets.
//   final double smallUserInteractiveDimension;

//   /// The padding for small user interactive widgets.
//   final EdgeInsets smallUserInteractivePadding;

//   /// The border radius for small user interactive widgets.
//   final BorderRadius smallUserInteractiveBorderRadius;

//   /// The border width for small user interactive widgets.
//   final double smallUserInteractiveBorderWidth;

//   // #endregion

//   // #region Large User Interactive Widgets

//   /// The large title text style for the theme.
//   final TextStyle? largeTitleStyle;

//   /// The large label text style for the theme.
//   final TextStyle? largeLabelStyle;

//   /// The large body text style for the theme.
//   final TextStyle? largeBodyStyle;

//   /// The dimension for large user interactive widgets.
//   final double largeUserInteractiveDimension;

//   /// The padding for large user interactive widgets.
//   final EdgeInsets largeUserInteractivePadding;

//   /// The border radius for large user interactive widgets.
//   final BorderRadius largeUserInteractiveBorderRadius;

//   /// The border width for large user interactive widgets.
//   final double largeUserInteractiveBorderWidth;

//   // #endregion

//   /// The base style resolver for the theme.
//   final WidgetBaseStyleResolver widgetBaseStyleResolver;
// }

// class CustomizableTheme extends InheritedTheme {
//   const CustomizableTheme({
//     super.key,
//     required this.data,
//     required super.child,
//   });

//   final CustomizableThemeData data;

//   static CustomizableThemeData of(BuildContext context) {
//     final theme =
//         context.dependOnInheritedWidgetOfExactType<CustomizableTheme>();
//     return theme?.data ?? Theme.of(context).extension<CustomizableThemeData>()!;
//   }

//   @override
//   bool updateShouldNotify(CustomizableTheme oldWidget) =>
//       data != oldWidget.data;

//   @override
//   Widget wrap(BuildContext context, Widget child) {
//     return CustomizableTheme(
//       data: data,
//       child: child,
//     );
//   }
// }
