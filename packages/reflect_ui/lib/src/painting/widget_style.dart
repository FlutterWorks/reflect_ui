import 'package:flutter/widgets.dart';

abstract base class WidgetStyle {}

/// A widget style that has a background color.
base mixin WidgetStyleWithBackground on WidgetStyle {
  WidgetStateProperty<Color?>? get backgroundColor => null;
}

/// A widget style that has a border.
base mixin WidgetStyleWithBorder on WidgetStyle {
  WidgetStateProperty<Color?>? get borderColor => null;
  WidgetStateProperty<BorderRadius?>? get borderRadius => null;
  WidgetStateProperty<double?>? get borderWidth => null;
}

/// A widget style that has a foreground color.
base mixin WidgetStyleWithForeground on WidgetStyle {
  WidgetStateProperty<Color?>? get foregroundColor => null;
}

/// A widget style that has an icon.
base mixin WidgetStyleWithIcon on WidgetStyle {
  WidgetStateProperty<Color?>? get iconColor => null;
  WidgetStateProperty<double?>? get iconSize => null;
}

/// A widget style that has a margin.
base mixin WidgetStyleWithMargin on WidgetStyle {
  WidgetStateProperty<EdgeInsets?>? get margin => null;
}

/// A widget style that has an outline.
base mixin WidgetStyleWithOutline on WidgetStyle {
  WidgetStateProperty<Color?>? get outlineColor => null;
  WidgetStateProperty<BorderRadius?>? get outlineRadius => null;
  WidgetStateProperty<double?>? get outlineWidth => null;
}

/// A widget style that has a padding.
base mixin WidgetStyleWithPadding on WidgetStyle {
  WidgetStateProperty<EdgeInsets?>? get padding => null;
}
