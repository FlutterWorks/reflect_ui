import 'package:flutter/widgets.dart';

/// The utility styles for corners.
class UtilityCorners {
  const UtilityCorners({
    this.none = BorderRadius.zero,
    this.tiny = const BorderRadius.all(Radius.circular(2)),
    this.small = const BorderRadius.all(Radius.circular(4)),
    this.medium = const BorderRadius.all(Radius.circular(6)),
    this.large = const BorderRadius.all(Radius.circular(8)),
    this.full = const BorderRadius.all(Radius.circular(9999)),
  });

  /// No corners.
  final BorderRadius none;

  /// Tiny corners.
  final BorderRadius tiny;

  /// Small corners.
  final BorderRadius small;

  /// Medium corners.
  final BorderRadius medium;

  /// Large corners.
  final BorderRadius large;

  /// Full corners.
  final BorderRadius full;
}

/// The utility styles for shadows.
class UtilityShadows {
  const UtilityShadows();
}

/// The utility styles for sizing.
class UtilitySizing {
  const UtilitySizing(this.sizingScale);

  /// The sizing scale.
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

/// The utility styles for spacing.
class UtilitySpacing {
  const UtilitySpacing(this.spacingScale);

  /// The spacing scale.
  final double spacingScale;

  /// 0 spacing scale.
  double get s0 => spacingScale * 0;

  /// 1 spacing scale.
  double get s1 => spacingScale * 1;

  /// 2 spacing scale.
  double get s2 => spacingScale * 2;

  /// 3 spacing scale.
  double get s3 => spacingScale * 3;

  /// 4 spacing scale.
  double get s4 => spacingScale * 4;

  /// 5 spacing scale.
  double get s5 => spacingScale * 5;

  /// 6 spacing scale.
  double get s6 => spacingScale * 6;

  /// 7 spacing scale.
  double get s7 => spacingScale * 7;

  /// 8 spacing scale.
  double get s8 => spacingScale * 8;

  /// 9 spacing scale.
  double get s9 => spacingScale * 9;

  /// 10 spacing scale.
  double get s10 => spacingScale * 10;
}

extension BaseStyleSizingWithEdgeInsets on UtilitySpacing {
  EdgeInsets get edgeInsets0 => EdgeInsets.zero;
  EdgeInsets get edgeInsets1 => EdgeInsets.all(1 * spacingScale);
  EdgeInsets get edgeInsets2 => EdgeInsets.all(2 * spacingScale);
  EdgeInsets get edgeInsets3 => EdgeInsets.all(3 * spacingScale);
  EdgeInsets get edgeInsets4 => EdgeInsets.all(4 * spacingScale);
  EdgeInsets get edgeInsets5 => EdgeInsets.all(5 * spacingScale);
  EdgeInsets get edgeInsets6 => EdgeInsets.all(6 * spacingScale);
  EdgeInsets get edgeInsets7 => EdgeInsets.all(7 * spacingScale);
  EdgeInsets get edgeInsets8 => EdgeInsets.all(8 * spacingScale);
  EdgeInsets get edgeInsets9 => EdgeInsets.all(9 * spacingScale);
  EdgeInsets get edgeInsets10 => EdgeInsets.all(10 * spacingScale);
  EdgeInsets get edgeInsets11 => EdgeInsets.all(11 * spacingScale);
  EdgeInsets get edgeInsets12 => EdgeInsets.all(12 * spacingScale);
  EdgeInsets get edgeInsets13 => EdgeInsets.all(13 * spacingScale);
  EdgeInsets get edgeInsets14 => EdgeInsets.all(14 * spacingScale);
  EdgeInsets get edgeInsets15 => EdgeInsets.all(15 * spacingScale);
  EdgeInsets get edgeInsets16 => EdgeInsets.all(16 * spacingScale);
  EdgeInsets get edgeInsets20 => EdgeInsets.all(20 * spacingScale);
  EdgeInsets get edgeInsets24 => EdgeInsets.all(24 * spacingScale);
  EdgeInsets get edgeInsets28 => EdgeInsets.all(28 * spacingScale);
  EdgeInsets get edgeInsets32 => EdgeInsets.all(32 * spacingScale);
  EdgeInsets get edgeInsets40 => EdgeInsets.all(40 * spacingScale);
  EdgeInsets get edgeInsets48 => EdgeInsets.all(48 * spacingScale);
  EdgeInsets get edgeInsets64 => EdgeInsets.all(64 * spacingScale);
  EdgeInsets get edgeInsets80 => EdgeInsets.all(80 * spacingScale);
  EdgeInsets get edgeInsets96 => EdgeInsets.all(96 * spacingScale);
}

/// The default utility styles.
const $corners = UtilityCorners();

/// The default utility shadows.
const $shadows = UtilityShadows();

/// The default utility sizing.
const $sizing = UtilitySizing(4);

/// The default utility spacing.
const $spacing = UtilitySpacing(4);
