import 'package:flutter/widgets.dart';

class ThemeSpacing {
  const ThemeSpacing({
    required this.spacingScale,
  });

  /// The spacing scale of the design theme.
  final double spacingScale;

  double get s0 => 0;
  double get s1 => spacingScale * 1;
  double get s2 => spacingScale * 2;
  double get s3 => spacingScale * 3;
  double get s4 => spacingScale * 4;
  double get s5 => spacingScale * 5;
  double get s6 => spacingScale * 6;
  double get s7 => spacingScale * 7;
  double get s8 => spacingScale * 8;
  double get s9 => spacingScale * 9;
  double get s10 => spacingScale * 10;
}

/// Extension methods for [ThemeSpacing] to provide padding.
extension ThemeSpacingWithPadding on ThemeSpacing {
  // #region Padding all.
  EdgeInsets get p0 => EdgeInsets.all(s0);
  EdgeInsets get p1 => EdgeInsets.all(s1);
  EdgeInsets get p2 => EdgeInsets.all(s2);
  EdgeInsets get p3 => EdgeInsets.all(s3);
  EdgeInsets get p4 => EdgeInsets.all(s4);
  EdgeInsets get p5 => EdgeInsets.all(s5);
  EdgeInsets get p6 => EdgeInsets.all(s6);
  EdgeInsets get p7 => EdgeInsets.all(s7);
  EdgeInsets get p8 => EdgeInsets.all(s8);
  EdgeInsets get p9 => EdgeInsets.all(s9);
  EdgeInsets get p10 => EdgeInsets.all(s10);
  // #endregion
  // #region Padding top.
  EdgeInsets get pt0 => EdgeInsets.only(top: s0);
  EdgeInsets get pt1 => EdgeInsets.only(top: s1);
  EdgeInsets get pt2 => EdgeInsets.only(top: s2);
  EdgeInsets get pt3 => EdgeInsets.only(top: s3);
  EdgeInsets get pt4 => EdgeInsets.only(top: s4);
  EdgeInsets get pt5 => EdgeInsets.only(top: s5);
  EdgeInsets get pt6 => EdgeInsets.only(top: s6);
  EdgeInsets get pt7 => EdgeInsets.only(top: s7);
  EdgeInsets get pt8 => EdgeInsets.only(top: s8);
  EdgeInsets get pt9 => EdgeInsets.only(top: s9);
  EdgeInsets get pt10 => EdgeInsets.only(top: s10);
  // #endregion

  // #region Padding bottom.
  EdgeInsets get pb0 => EdgeInsets.only(bottom: s0);
  EdgeInsets get pb1 => EdgeInsets.only(bottom: s1);
  EdgeInsets get pb2 => EdgeInsets.only(bottom: s2);
  EdgeInsets get pb3 => EdgeInsets.only(bottom: s3);
  EdgeInsets get pb4 => EdgeInsets.only(bottom: s4);
  EdgeInsets get pb5 => EdgeInsets.only(bottom: s5);
  EdgeInsets get pb6 => EdgeInsets.only(bottom: s6);
  EdgeInsets get pb7 => EdgeInsets.only(bottom: s7);
  EdgeInsets get pb8 => EdgeInsets.only(bottom: s8);
  EdgeInsets get pb9 => EdgeInsets.only(bottom: s9);
  EdgeInsets get pb10 => EdgeInsets.only(bottom: s10);
  // #endregion

  // #region Padding left.
  EdgeInsets get pl0 => EdgeInsets.only(left: s0);
  EdgeInsets get pl1 => EdgeInsets.only(left: s1);
  EdgeInsets get pl2 => EdgeInsets.only(left: s2);
  EdgeInsets get pl3 => EdgeInsets.only(left: s3);
  EdgeInsets get pl4 => EdgeInsets.only(left: s4);
  EdgeInsets get pl5 => EdgeInsets.only(left: s5);
  EdgeInsets get pl6 => EdgeInsets.only(left: s6);
  EdgeInsets get pl7 => EdgeInsets.only(left: s7);
  EdgeInsets get pl8 => EdgeInsets.only(left: s8);
  EdgeInsets get pl9 => EdgeInsets.only(left: s9);
  EdgeInsets get pl10 => EdgeInsets.only(left: s10);
  // #endregion

  // #region Padding right.
  EdgeInsets get pr0 => EdgeInsets.only(right: s0);
  EdgeInsets get pr1 => EdgeInsets.only(right: s1);
  EdgeInsets get pr2 => EdgeInsets.only(right: s2);
  EdgeInsets get pr3 => EdgeInsets.only(right: s3);
  EdgeInsets get pr4 => EdgeInsets.only(right: s4);
  EdgeInsets get pr5 => EdgeInsets.only(right: s5);
  EdgeInsets get pr6 => EdgeInsets.only(right: s6);
  EdgeInsets get pr7 => EdgeInsets.only(right: s7);
  EdgeInsets get pr8 => EdgeInsets.only(right: s8);
  EdgeInsets get pr9 => EdgeInsets.only(right: s9);
  EdgeInsets get pr10 => EdgeInsets.only(right: s10);
  // #endregion

  // #region Padding horizontal.
  EdgeInsets get px0 => EdgeInsets.symmetric(horizontal: s0);
  EdgeInsets get px1 => EdgeInsets.symmetric(horizontal: s1);
  EdgeInsets get px2 => EdgeInsets.symmetric(horizontal: s2);
  EdgeInsets get px3 => EdgeInsets.symmetric(horizontal: s3);
  EdgeInsets get px4 => EdgeInsets.symmetric(horizontal: s4);
  EdgeInsets get px5 => EdgeInsets.symmetric(horizontal: s5);
  EdgeInsets get px6 => EdgeInsets.symmetric(horizontal: s6);
  EdgeInsets get px7 => EdgeInsets.symmetric(horizontal: s7);
  EdgeInsets get px8 => EdgeInsets.symmetric(horizontal: s8);
  EdgeInsets get px9 => EdgeInsets.symmetric(horizontal: s9);
  EdgeInsets get px10 => EdgeInsets.symmetric(horizontal: s10);
  // #endregion

  // #region Padding vertical.
  EdgeInsets get py0 => EdgeInsets.symmetric(vertical: s0);
  EdgeInsets get py1 => EdgeInsets.symmetric(vertical: s1);
  EdgeInsets get py2 => EdgeInsets.symmetric(vertical: s2);
  EdgeInsets get py3 => EdgeInsets.symmetric(vertical: s3);
  EdgeInsets get py4 => EdgeInsets.symmetric(vertical: s4);
  EdgeInsets get py5 => EdgeInsets.symmetric(vertical: s5);
  EdgeInsets get py6 => EdgeInsets.symmetric(vertical: s6);
  EdgeInsets get py7 => EdgeInsets.symmetric(vertical: s7);
  EdgeInsets get py8 => EdgeInsets.symmetric(vertical: s8);
  EdgeInsets get py9 => EdgeInsets.symmetric(vertical: s9);
  EdgeInsets get py10 => EdgeInsets.symmetric(vertical: s10);
  // #endregion
}

/// Extension methods for [ThemeSpacing] to provide margin.
extension ThemeSpacingWithMargin on ThemeSpacing {
  // #region Margin all.
  EdgeInsets get m0 => EdgeInsets.all(s0);
  EdgeInsets get m1 => EdgeInsets.all(s1);
  EdgeInsets get m2 => EdgeInsets.all(s2);
  EdgeInsets get m3 => EdgeInsets.all(s3);
  EdgeInsets get m4 => EdgeInsets.all(s4);
  EdgeInsets get m5 => EdgeInsets.all(s5);
  EdgeInsets get m6 => EdgeInsets.all(s6);
  EdgeInsets get m7 => EdgeInsets.all(s7);
  EdgeInsets get m8 => EdgeInsets.all(s8);
  EdgeInsets get m9 => EdgeInsets.all(s9);
  EdgeInsets get m10 => EdgeInsets.all(s10);
  // #endregion

  // #region Margin top.
  EdgeInsets get mt0 => EdgeInsets.only(top: s0);
  EdgeInsets get mt1 => EdgeInsets.only(top: s1);
  EdgeInsets get mt2 => EdgeInsets.only(top: s2);
  EdgeInsets get mt3 => EdgeInsets.only(top: s3);
  EdgeInsets get mt4 => EdgeInsets.only(top: s4);
  EdgeInsets get mt5 => EdgeInsets.only(top: s5);
  EdgeInsets get mt6 => EdgeInsets.only(top: s6);
  EdgeInsets get mt7 => EdgeInsets.only(top: s7);
  EdgeInsets get mt8 => EdgeInsets.only(top: s8);
  EdgeInsets get mt9 => EdgeInsets.only(top: s9);
  EdgeInsets get mt10 => EdgeInsets.only(top: s10);
  // #endregion

  // #region Margin bottom.
  EdgeInsets get mb0 => EdgeInsets.only(bottom: s0);
  EdgeInsets get mb1 => EdgeInsets.only(bottom: s1);
  EdgeInsets get mb2 => EdgeInsets.only(bottom: s2);
  EdgeInsets get mb3 => EdgeInsets.only(bottom: s3);
  EdgeInsets get mb4 => EdgeInsets.only(bottom: s4);
  EdgeInsets get mb5 => EdgeInsets.only(bottom: s5);
  EdgeInsets get mb6 => EdgeInsets.only(bottom: s6);
  EdgeInsets get mb7 => EdgeInsets.only(bottom: s7);
  EdgeInsets get mb8 => EdgeInsets.only(bottom: s8);
  EdgeInsets get mb9 => EdgeInsets.only(bottom: s9);
  EdgeInsets get mb10 => EdgeInsets.only(bottom: s10);
  // #endregion

  // #region Margin left.
  EdgeInsets get ml0 => EdgeInsets.only(left: s0);
  EdgeInsets get ml1 => EdgeInsets.only(left: s1);
  EdgeInsets get ml2 => EdgeInsets.only(left: s2);
  EdgeInsets get ml3 => EdgeInsets.only(left: s3);
  EdgeInsets get ml4 => EdgeInsets.only(left: s4);
  EdgeInsets get ml5 => EdgeInsets.only(left: s5);
  EdgeInsets get ml6 => EdgeInsets.only(left: s6);
  EdgeInsets get ml7 => EdgeInsets.only(left: s7);
  EdgeInsets get ml8 => EdgeInsets.only(left: s8);
  EdgeInsets get ml9 => EdgeInsets.only(left: s9);
  EdgeInsets get ml10 => EdgeInsets.only(left: s10);
  // #endregion

  // #region Margin right.
  EdgeInsets get mr0 => EdgeInsets.only(right: s0);
  EdgeInsets get mr1 => EdgeInsets.only(right: s1);
  EdgeInsets get mr2 => EdgeInsets.only(right: s2);
  EdgeInsets get mr3 => EdgeInsets.only(right: s3);
  EdgeInsets get mr4 => EdgeInsets.only(right: s4);
  EdgeInsets get mr5 => EdgeInsets.only(right: s5);
  EdgeInsets get mr6 => EdgeInsets.only(right: s6);
  EdgeInsets get mr7 => EdgeInsets.only(right: s7);
  EdgeInsets get mr8 => EdgeInsets.only(right: s8);
  EdgeInsets get mr9 => EdgeInsets.only(right: s9);
  EdgeInsets get mr10 => EdgeInsets.only(right: s10);
  // #endregion

  // #region Margin horizontal.
  EdgeInsets get mx0 => EdgeInsets.symmetric(horizontal: s0);
  EdgeInsets get mx1 => EdgeInsets.symmetric(horizontal: s1);
  EdgeInsets get mx2 => EdgeInsets.symmetric(horizontal: s2);
  EdgeInsets get mx3 => EdgeInsets.symmetric(horizontal: s3);
  EdgeInsets get mx4 => EdgeInsets.symmetric(horizontal: s4);
  EdgeInsets get mx5 => EdgeInsets.symmetric(horizontal: s5);
  EdgeInsets get mx6 => EdgeInsets.symmetric(horizontal: s6);
  EdgeInsets get mx7 => EdgeInsets.symmetric(horizontal: s7);
  EdgeInsets get mx8 => EdgeInsets.symmetric(horizontal: s8);
  EdgeInsets get mx9 => EdgeInsets.symmetric(horizontal: s9);
  EdgeInsets get mx10 => EdgeInsets.symmetric(horizontal: s10);
  // #endregion

  // #region Margin vertical.
  EdgeInsets get my0 => EdgeInsets.symmetric(vertical: s0);
  EdgeInsets get my1 => EdgeInsets.symmetric(vertical: s1);
  EdgeInsets get my2 => EdgeInsets.symmetric(vertical: s2);
  EdgeInsets get my3 => EdgeInsets.symmetric(vertical: s3);
  EdgeInsets get my4 => EdgeInsets.symmetric(vertical: s4);
  EdgeInsets get my5 => EdgeInsets.symmetric(vertical: s5);
  EdgeInsets get my6 => EdgeInsets.symmetric(vertical: s6);
  EdgeInsets get my7 => EdgeInsets.symmetric(vertical: s7);
  EdgeInsets get my8 => EdgeInsets.symmetric(vertical: s8);
  EdgeInsets get my9 => EdgeInsets.symmetric(vertical: s9);
  EdgeInsets get my10 => EdgeInsets.symmetric(vertical: s10);
  // #endregion
}
