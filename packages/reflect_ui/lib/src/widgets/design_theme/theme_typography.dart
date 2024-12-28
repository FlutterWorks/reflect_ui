import 'package:flutter/widgets.dart';

class ThemeTypography {
  const ThemeTypography({
    required this.bodyTiny,
    required this.bodySmall,
    required this.bodyMedium,
    required this.bodyLarge,
    required this.labelTiny,
    required this.labelSmall,
    required this.labelMedium,
    required this.labelLarge,
    required this.titleTiny,
    required this.titleSmall,
    required this.titleMedium,
    required this.titleLarge,
    required this.displayTiny,
    required this.displaySmall,
    required this.displayMedium,
    required this.displayLarge,
    // this.monoBodyTiny,
    // this.monoBodySmall,
    // this.monoBodyMedium,
    // this.monoBodyLarge,
    // this.monoLabelTiny,
    // this.monoLabelSmall,
    // this.monoLabelMedium,
    // this.monoLabelLarge,
    // this.monoTitleTiny,
    // this.monoTitleSmall,
    // this.monoTitleMedium,
    // this.monoTitleLarge,
    // this.monoDisplayTiny,
    // this.monoDisplaySmall,
    // this.monoDisplayMedium,
    // this.monoDisplayLarge,
  });

  /// Create a typography with the Roboto font family.
  const ThemeTypography.roboto()
      : bodyTiny = const TextStyle(fontFamily: 'Roboto'),
        bodySmall = const TextStyle(fontFamily: 'Roboto'),
        bodyMedium = const TextStyle(fontFamily: 'Roboto'),
        bodyLarge = const TextStyle(fontFamily: 'Roboto'),
        labelTiny = const TextStyle(fontFamily: 'Roboto'),
        labelSmall = const TextStyle(fontFamily: 'Roboto'),
        labelMedium = const TextStyle(fontFamily: 'Roboto'),
        labelLarge = const TextStyle(fontFamily: 'Roboto'),
        titleTiny = const TextStyle(fontFamily: 'Roboto'),
        titleSmall = const TextStyle(fontFamily: 'Roboto'),
        titleMedium = const TextStyle(fontFamily: 'Roboto'),
        titleLarge = const TextStyle(fontFamily: 'Roboto'),
        displayTiny = const TextStyle(fontFamily: 'Roboto'),
        displaySmall = const TextStyle(fontFamily: 'Roboto'),
        displayMedium = const TextStyle(fontFamily: 'Roboto'),
        displayLarge = const TextStyle(fontFamily: 'Roboto');

  /// Create a typography with the Inter font family.
  const ThemeTypography.inter()
      : bodyTiny = const TextStyle(fontFamily: 'Inter'),
        bodySmall = const TextStyle(fontFamily: 'Inter'),
        bodyMedium = const TextStyle(fontFamily: 'Inter'),
        bodyLarge = const TextStyle(fontFamily: 'Inter'),
        labelTiny = const TextStyle(fontFamily: 'Inter'),
        labelSmall = const TextStyle(fontFamily: 'Inter'),
        labelMedium = const TextStyle(fontFamily: 'Inter'),
        labelLarge = const TextStyle(fontFamily: 'Inter'),
        titleTiny = const TextStyle(fontFamily: 'Inter'),
        titleSmall = const TextStyle(fontFamily: 'Inter'),
        titleMedium = const TextStyle(fontFamily: 'Inter'),
        titleLarge = const TextStyle(fontFamily: 'Inter'),
        displayTiny = const TextStyle(fontFamily: 'Inter'),
        displaySmall = const TextStyle(fontFamily: 'Inter'),
        displayMedium = const TextStyle(fontFamily: 'Inter'),
        displayLarge = const TextStyle(fontFamily: 'Inter');

  // #region Sans Typography

  final TextStyle bodyTiny;
  final TextStyle bodySmall;
  final TextStyle bodyMedium;
  final TextStyle bodyLarge;
  final TextStyle labelTiny;
  final TextStyle labelSmall;
  final TextStyle labelMedium;
  final TextStyle labelLarge;
  final TextStyle titleTiny;
  final TextStyle titleSmall;
  final TextStyle titleMedium;
  final TextStyle titleLarge;
  final TextStyle displayTiny;
  final TextStyle displaySmall;
  final TextStyle displayMedium;
  final TextStyle displayLarge;

  // #endregion

  // // #region Mono Typography

  // final TextStyle? monoBodyTiny;
  // final TextStyle? monoBodySmall;
  // final TextStyle? monoBodyMedium;
  // final TextStyle? monoBodyLarge;
  // final TextStyle? monoLabelTiny;
  // final TextStyle? monoLabelSmall;
  // final TextStyle? monoLabelMedium;
  // final TextStyle? monoLabelLarge;
  // final TextStyle? monoTitleTiny;
  // final TextStyle? monoTitleSmall;
  // final TextStyle? monoTitleMedium;
  // final TextStyle? monoTitleLarge;
  // final TextStyle? monoDisplayTiny;
  // final TextStyle? monoDisplaySmall;
  // final TextStyle? monoDisplayMedium;
  // final TextStyle? monoDisplayLarge;

  // // #endregion
}
