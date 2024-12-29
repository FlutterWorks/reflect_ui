import 'package:flutter/widgets.dart';

/// The named size of a widget.
enum NamedWidgetSize {
  /// The size of the widget is tiny.
  tiny,

  /// The size of the widget is small.
  small,

  /// The size of the widget is medium.
  medium,

  /// The size of the widget is large.
  large,

  /// The size of the widget is big.
  big,
}

/// The size of a widget.
class WidgetSize extends Size {
  const WidgetSize(this.namedSize) : super(0.0, 0.0);

  /// The name of the size.
  final NamedWidgetSize namedSize;

  @override
  int get hashCode => Object.hash(width, height, namedSize);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is WidgetSize && other.namedSize == namedSize;
  }

  /// The size of the widget is tiny.
  static const WidgetSize tiny = WidgetSize(NamedWidgetSize.tiny);

  /// The size of the widget is small.
  static const WidgetSize small = WidgetSize(NamedWidgetSize.small);

  /// The size of the widget is medium.
  static const WidgetSize medium = WidgetSize(NamedWidgetSize.medium);

  /// The size of the widget is large.
  static const WidgetSize large = WidgetSize(NamedWidgetSize.large);

  /// The size of the widget is big.
  static const WidgetSize big = WidgetSize(NamedWidgetSize.big);
}
