import 'package:flutter/widgets.dart';

class ThemeTypography {
  const ThemeTypography({
    required this.bodySmall,
    required this.bodyMedium,
    required this.bodyLarge,
    required this.labelSmall,
    required this.labelMedium,
    required this.labelLarge,
    required this.titleSmall,
    required this.titleMedium,
    required this.titleLarge,
    required this.displaySmall,
    required this.displayMedium,
    required this.displayLarge,
    // this.monoBodySmall,
    // this.monoBodyMedium,
    // this.monoBodyLarge,
    // this.monoLabelSmall,
    // this.monoLabelMedium,
    // this.monoLabelLarge,
    // this.monoTitleSmall,
    // this.monoTitleMedium,
    // this.monoTitleLarge,
    // this.monoDisplaySmall,
    // this.monoDisplayMedium,
    // this.monoDisplayLarge,
  });

  /// Create a typography with the Inter font family.
  const ThemeTypography.inter()
      : bodySmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          height: 20 / 14,
        ),
        bodyMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          height: 24 / 16,
        ),
        bodyLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          height: 28 / 18,
        ),
        labelSmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 16 / 12,
        ),
        labelMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 20 / 14,
        ),
        labelLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 24 / 16,
        ),
        titleSmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          height: 24 / 16,
        ),
        titleMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          height: 28 / 18,
        ),
        titleLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 20,
          height: 32 / 20,
        ),
        displaySmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 36,
          height: 48 / 36,
        ),
        displayMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 46,
          height: 56 / 46,
        ),
        displayLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 56,
          height: 64 / 56,
        );

  const ThemeTypography.interCompact()
      : bodySmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 12,
          height: 16 / 12,
        ),
        bodyMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          height: 20 / 14,
        ),
        bodyLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          height: 24 / 16,
        ),
        labelSmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 10,
          fontWeight: FontWeight.w600,
          height: 14 / 10,
        ),
        labelMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 16 / 12,
        ),
        labelLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 20 / 14,
        ),
        titleSmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          height: 20 / 14,
        ),
        titleMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          height: 24 / 16,
        ),
        titleLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          height: 28 / 18,
        ),
        displaySmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 32,
          height: 40 / 32,
        ),
        displayMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 40,
          height: 52 / 40,
        ),
        displayLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 48,
          height: 60 / 48,
        );

  // #region Sans Typography

  final TextStyle bodySmall;
  final TextStyle bodyMedium;
  final TextStyle bodyLarge;
  final TextStyle labelSmall;
  final TextStyle labelMedium;
  final TextStyle labelLarge;
  final TextStyle titleSmall;
  final TextStyle titleMedium;
  final TextStyle titleLarge;
  final TextStyle displaySmall;
  final TextStyle displayMedium;
  final TextStyle displayLarge;

  // #endregion

  // // #region Mono Typography

  // final TextStyle? monoBodySmall;
  // final TextStyle? monoBodyMedium;
  // final TextStyle? monoBodyLarge;
  // final TextStyle? monoLabelSmall;
  // final TextStyle? monoLabelMedium;
  // final TextStyle? monoLabelLarge;
  // final TextStyle? monoTitleSmall;
  // final TextStyle? monoTitleMedium;
  // final TextStyle? monoTitleLarge;
  // final TextStyle? monoDisplaySmall;
  // final TextStyle? monoDisplayMedium;
  // final TextStyle? monoDisplayLarge;

  // // #endregion
}
