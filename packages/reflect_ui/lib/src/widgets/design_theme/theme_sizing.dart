import 'package:flutter/widgets.dart';

class ThemeSizing {
  const ThemeSizing({
    required this.sizingScale,
  });

  final double sizingScale;

  double get s0 => 0;
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

/// Extension methods for [ThemeSizing] to provide size.
extension ThemeSizingWithSize on ThemeSizing {
  Size get size0 => Size.square(s0);
  Size get size1 => Size.square(s1);
  Size get size2 => Size.square(s2);
  Size get size3 => Size.square(s3);
  Size get size4 => Size.square(s4);
  Size get size5 => Size.square(s5);
  Size get size6 => Size.square(s6);
  Size get size7 => Size.square(s7);
  Size get size8 => Size.square(s8);
  Size get size9 => Size.square(s9);
  Size get size10 => Size.square(s10);
}
