import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/widget_style.dart';

class CheckboxStyle extends WidgetStyle {
  const CheckboxStyle({
    super.minSize,
  });

  EffectiveCheckboxStyle resolve(Set<WidgetState> states) {
    return EffectiveCheckboxStyle(
      minSize: minSize.resolve(states),
    );
  }
}

class EffectiveCheckboxStyle {
  const EffectiveCheckboxStyle({
    required this.minSize,
  });

  final Size minSize;
}
