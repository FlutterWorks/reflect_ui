import 'package:flutter/foundation.dart';
import 'package:reflect_ui/src/painting/widget_style.dart';

/// The style of a button.
///
/// A button style is a set of properties that define the appearance of a button.
class ButtonStyle extends WidgetStyle with Diagnosticable {
  const ButtonStyle({
    super.color,
    super.minSize,
    super.margin,
    super.padding,
    super.backgroundColor,
    super.foregroundColor,
    super.borderColor,
    super.borderRadius,
    super.borderWidth,
    super.boxShadow,
    super.iconStyle,
    super.textStyle,
  });
}
