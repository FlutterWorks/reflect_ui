import 'package:flutter/widgets.dart';

class ThemeBorders {
  const ThemeBorders({
    this.none = const BorderRadius.all(Radius.zero),
    this.tiny = const BorderRadius.all(Radius.circular(2)),
    this.small = const BorderRadius.all(Radius.circular(4)),
    this.medium = const BorderRadius.all(Radius.circular(6)),
    this.large = const BorderRadius.all(Radius.circular(8)),
    this.big = const BorderRadius.all(Radius.circular(12)),
    this.full = const BorderRadius.all(Radius.circular(9999)),
  });

  /// The none border.
  final BorderRadius none;

  /// The tiny border.
  final BorderRadius tiny;

  /// The small border.
  final BorderRadius small;

  /// The medium border.
  final BorderRadius medium;

  /// The large border.
  final BorderRadius large;

  /// The big border.
  final BorderRadius big;

  /// The full border.
  final BorderRadius full;
}
