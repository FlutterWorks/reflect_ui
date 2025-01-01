import 'package:flutter/widgets.dart';

class Typography {
  const Typography({
    required this.bodySmall,
    required this.bodyMedium,
    required this.bodyLarge,
    required this.labelTiny,
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
  const Typography.regular()
      : bodySmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          height: 20 / 14,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        bodyMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          height: 24 / 16,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        bodyLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          height: 28 / 18,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        labelTiny = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 10,
          fontWeight: FontWeight.w600,
          height: 14 / 10,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        labelSmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 16 / 12,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        labelMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 20 / 14,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        labelLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 24 / 16,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        titleSmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          height: 24 / 16,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        titleMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          height: 28 / 18,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        titleLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 20,
          height: 32 / 20,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        displaySmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 36,
          height: 48 / 36,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        displayMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 46,
          height: 56 / 46,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        displayLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 56,
          height: 64 / 56,
          leadingDistribution: TextLeadingDistribution.even,
        );

  const Typography.compact()
      : bodySmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 12,
          height: 16 / 12,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        bodyMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          height: 20 / 14,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        bodyLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          height: 24 / 16,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        labelTiny = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 8,
          fontWeight: FontWeight.w600,
          height: 12 / 8,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        labelSmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 10,
          fontWeight: FontWeight.w600,
          height: 14 / 10,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        labelMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 16 / 12,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        labelLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 20 / 14,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        titleSmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          height: 20 / 14,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        titleMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          height: 24 / 16,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        titleLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 18,
          height: 28 / 18,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        displaySmall = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 32,
          height: 40 / 32,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        displayMedium = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 40,
          height: 52 / 40,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        displayLarge = const TextStyle(
          fontFamily: 'Inter',
          fontSize: 48,
          height: 60 / 48,
          leadingDistribution: TextLeadingDistribution.even,
        );

  // #region Sans Typography

  final TextStyle bodySmall;
  final TextStyle bodyMedium;
  final TextStyle bodyLarge;
  final TextStyle labelTiny;
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
