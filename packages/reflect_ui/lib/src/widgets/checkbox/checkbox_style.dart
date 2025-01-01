import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';
import 'package:reflect_ui/src/painting/widget_style.dart';

class CheckboxStyle extends WidgetStyle {
  const CheckboxStyle({
    required super.minSize,
    required super.borderRadius,
    required this.interactiveSize,
  });

  /// The size of the interactive area.
  final WidgetProperty<Size> interactiveSize;
}
