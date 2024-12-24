import 'package:flutter/widgets.dart';

class DesignSizing {
  const DesignSizing({
    required this.sizingScale,
  });

  /// The sizing scale of the design theme.
  final double sizingScale;

  double get s1 => sizingScale * 1;
  double get s2 => sizingScale * 2;
  double get s3 => sizingScale * 3;
  double get s4 => sizingScale * 4;
  double get s5 => sizingScale * 5;
  double get s6 => sizingScale * 6;
  double get s7 => sizingScale * 7;
  double get s8 => sizingScale * 8;
  double get s9 => sizingScale * 9;
  double get s10 => sizingScale * 10;
}

/// Extension methods for [DesignSizing] to provide size.
extension DesignSizingWithSize on DesignSizing {
  // #region Size from width and height.
  Size get size1 => Size(s1, s1);
  Size get size2 => Size(s2, s2);
  Size get size3 => Size(s3, s3);
  Size get size4 => Size(s4, s4);
  Size get size5 => Size(s5, s5);
  Size get size6 => Size(s6, s6);
  Size get size7 => Size(s7, s7);
  Size get size8 => Size(s8, s8);
  Size get size9 => Size(s9, s9);
  Size get size10 => Size(s10, s10);
  // #endregion

  // #region Size from width.
  Size get w1 => Size.fromWidth(s1);
  Size get w2 => Size.fromWidth(s2);
  Size get w3 => Size.fromWidth(s3);
  Size get w4 => Size.fromWidth(s4);
  Size get w5 => Size.fromWidth(s5);
  Size get w6 => Size.fromWidth(s6);
  Size get w7 => Size.fromWidth(s7);
  Size get w8 => Size.fromWidth(s8);
  Size get w9 => Size.fromWidth(s9);
  Size get w10 => Size.fromWidth(s10);
  // #endregion

  // #region Size from height.
  Size get h1 => Size.fromHeight(s1);
  Size get h2 => Size.fromHeight(s2);
  Size get h3 => Size.fromHeight(s3);
  Size get h4 => Size.fromHeight(s4);
  Size get h5 => Size.fromHeight(s5);
  Size get h6 => Size.fromHeight(s6);
  Size get h7 => Size.fromHeight(s7);
  Size get h8 => Size.fromHeight(s8);
  Size get h9 => Size.fromHeight(s9);
  Size get h10 => Size.fromHeight(s10);
  // #endregion
}
