import 'package:flutter/widgets.dart';

class DesignTypography {
  const DesignTypography({
    this.fontSans = 'Roboto',
    this.fontSerif = 'Roboto',
    this.fontMono = 'Roboto Mono',
    this.fontSizeTiny = 10,
    this.lineHeightTiny = 12,
    this.fontSizeSmall = 14,
    this.lineHeightSmall = 20,
    this.fontSizeMedium = 16,
    this.lineHeightMedium = 24,
    this.fontSizeLarge = 18,
    this.lineHeightLarge = 28,
    this.fontSizeBig = 20,
    this.lineHeightBig = 32,
  });

  /// The roboto typography.
  const DesignTypography.roboto() : this();

  /// The roboto compact typography.
  const DesignTypography.robotoCompact()
      : this(
          fontSizeSmall: 12,
          lineHeightSmall: 16,
          fontSizeMedium: 14,
          lineHeightMedium: 20,
          fontSizeLarge: 16,
          lineHeightLarge: 24,
        );

  /// The inter typography.
  const DesignTypography.inter({String? fontMono})
      : this(
          fontSans: 'Inter',
          fontSerif: 'Inter',
          fontMono: fontMono ?? 'Roboto Mono',
        );

  /// The inter compact typography.
  const DesignTypography.interCompact({String? fontMono})
      : this(
          fontSans: 'Inter',
          fontSerif: 'Inter',
          fontMono: fontMono ?? 'Roboto Mono',
          fontSizeSmall: 12,
          lineHeightSmall: 16,
          fontSizeMedium: 14,
          lineHeightMedium: 20,
          fontSizeLarge: 16,
          lineHeightLarge: 24,
        );

  /// The sans-serif font family of the design theme.
  final String fontSans;

  /// The serif font family of the design theme.
  final String fontSerif;

  /// The monospace font family of the design theme.
  final String fontMono;

  /// The font size of the tiny text.
  final double fontSizeTiny;

  /// The line height of the tiny text.
  final double lineHeightTiny;

  /// The font size of the small text.
  final double fontSizeSmall;

  /// The line height of the small text.
  final double lineHeightSmall;

  /// The font size of the medium text.
  final double fontSizeMedium;

  /// The line height of the medium text.
  final double lineHeightMedium;

  /// The font size of the large text.
  final double fontSizeLarge;

  /// The line height of the large text.
  final double lineHeightLarge;

  /// The font size of the big text.
  final double fontSizeBig;

  /// The line height of the big text.
  final double lineHeightBig;
}

extension DesignTypographyWithTextStyle on DesignTypography {
  /// The body small text style.
  TextStyle get bodySmall {
    return TextStyle(
      fontFamily: fontSans,
      fontSize: fontSizeSmall,
      height: lineHeightSmall,
    );
  }

  /// The body medium text style.
  TextStyle get bodyMedium {
    return TextStyle(
      fontFamily: fontSans,
      fontSize: fontSizeMedium,
      height: lineHeightMedium,
    );
  }

  /// The body large text style.
  TextStyle get bodyLarge {
    return TextStyle(
      fontFamily: fontSans,
      fontSize: fontSizeLarge,
      height: lineHeightLarge,
    );
  }

  /// The label small text style.
  TextStyle get labelSmall {
    return TextStyle(
      fontFamily: fontMono,
      fontSize: fontSizeTiny,
      height: lineHeightTiny,
    );
  }

  /// The label medium text style.
  TextStyle get labelMedium {
    return TextStyle(
      fontFamily: fontMono,
      fontSize: fontSizeSmall,
      height: lineHeightSmall,
    );
  }

  /// The label large text style.
  TextStyle get labelLarge {
    return TextStyle(
      fontFamily: fontMono,
      fontSize: fontSizeMedium,
      height: lineHeightMedium,
    );
  }
}
