import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/color_descriptor.dart';
import 'package:reflect_ui/src/painting/varianted_widget_state_color.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';

// #region Normal constants.
const kNormalMinSize = SizedWidgetProperty<Size>(
  tiny: Size.square(24),
  small: Size.square(32),
  medium: Size.square(44),
  large: Size.square(48),
  big: Size.square(56),
);

const kNormalPadding = SizedWidgetProperty<EdgeInsets>(
  tiny: EdgeInsets.all(4),
  small: EdgeInsets.all(8),
  medium: EdgeInsets.all(12),
  large: EdgeInsets.all(16),
  big: EdgeInsets.all(20),
);

const kNormalBorderRadius = WidgetPropertyAll<BorderRadius>(
  BorderRadius.all(Radius.circular(6)),
);

// #endregion

// #region Compact constants.

const kCompactMinSize = SizedWidgetProperty<Size>(
  tiny: Size.square(20),
  small: Size.square(24),
  medium: Size.square(32),
  large: Size.square(40),
  big: Size.square(48),
);

const kCompactPadding = SizedWidgetProperty<EdgeInsets>(
  tiny: EdgeInsets.all(2),
  small: EdgeInsets.all(4),
  medium: EdgeInsets.all(8),
  large: EdgeInsets.all(12),
  big: EdgeInsets.all(16),
);

const kCompactBorderRadius = WidgetPropertyAll<BorderRadius>(
  BorderRadius.all(Radius.circular(4)),
);

// #endregion

// #region Dark theme constants.

const kDarkBackgroundColor = VariantedWidgetStateColor(
  filled: {
    null: ColorDescriptor.shade(600),
    WidgetState.hovered: ColorDescriptor.shade(700),
  },
  tinted: {
    null: ColorDescriptor.shade(50),
    WidgetState.hovered: ColorDescriptor.shade(100),
  },
  outlined: {
    null: ColorDescriptor.shade(600),
  },
  subtle: {
    null: ColorDescriptor.shade(600),
  },
  transparent: {
    null: ColorDescriptor.shade(600),
  },
);

const kDarkForegroundColor = VariantedWidgetStateColor(
  filled: {
    null: ColorDescriptor(color: Colors.white),
  },
  tinted: {
    null: ColorDescriptor.shade(600),
  },
  outlined: {
    null: ColorDescriptor.shade(600),
  },
  subtle: {
    null: ColorDescriptor.shade(600),
  },
  transparent: {
    null: ColorDescriptor.shade(600),
  },
);

const kDarkBorderColor = VariantedWidgetStateColor(
  filled: {
    null: ColorDescriptor.shade(600),
    WidgetState.hovered: ColorDescriptor.shade(700),
  },
  tinted: {
    null: ColorDescriptor.shade(50),
    WidgetState.hovered: ColorDescriptor.shade(100),
  },
  outlined: {
    null: ColorDescriptor.shade(600),
  },
  subtle: {
    null: ColorDescriptor.shade(600),
  },
  transparent: {
    null: ColorDescriptor.shade(600),
  },
);

// #endregion

// #region Light theme constants.

const kLightBackgroundColor = VariantedWidgetStateColor(
  filled: {
    null: ColorDescriptor.shade(600),
    WidgetState.hovered: ColorDescriptor.shade(700),
  },
  tinted: {
    null: ColorDescriptor.shade(50),
    WidgetState.hovered: ColorDescriptor.shade(100),
  },
  outlined: {
    null: ColorDescriptor.shade(-1),
    WidgetState.hovered: ColorDescriptor.shade(50),
  },
  subtle: {
    null: ColorDescriptor.shade(-1),
    WidgetState.hovered: ColorDescriptor.shade(50),
  },
  transparent: {
    null: ColorDescriptor.shade(-1),
  },
);

const kLightForegroundColor = VariantedWidgetStateColor(
  filled: {
    null: ColorDescriptor(color: Colors.white),
  },
  tinted: {
    null: ColorDescriptor.shade(600),
  },
  outlined: {
    null: ColorDescriptor.shade(600),
  },
  subtle: {
    null: ColorDescriptor.shade(600),
  },
  transparent: {
    null: ColorDescriptor.shade(600),
  },
);

const kLightBorderColor = VariantedWidgetStateColor(
  filled: {
    null: ColorDescriptor.shade(-1),
  },
  tinted: {
    null: ColorDescriptor.shade(-1),
  },
  outlined: {
    null: ColorDescriptor.shade(600),
  },
  subtle: {
    null: ColorDescriptor.shade(-1),
  },
  transparent: {
    null: ColorDescriptor.shade(-1),
  },
);

// #endregion
