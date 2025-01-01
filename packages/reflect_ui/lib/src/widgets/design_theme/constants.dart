import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/color_descriptor.dart';
import 'package:reflect_ui/src/core/colors.dart';
import 'package:reflect_ui/src/painting/varianted_widget_state_color.dart';

// #region Dark theme constants.

const kDarkPrimaryBackgroundColor = VariantedWidgetStateColor(
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
  plain: {
    null: ColorDescriptor.shade(600),
  },
);

const kDarkPrimaryForegroundColor = VariantedWidgetStateColor(
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
  plain: {
    null: ColorDescriptor.shade(600),
  },
);

const kDarkPrimaryBorderColor = VariantedWidgetStateColor(
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
  plain: {
    null: ColorDescriptor.shade(600),
  },
);

// #endregion

// #region Light theme constants.

const kLightPrimaryBackgroundColor = VariantedWidgetStateColor(
  filled: {
    null: ColorDescriptor.shade(600),
    WidgetState.hovered: ColorDescriptor.shade(700),
    WidgetState.pressed: ColorDescriptor.shade(800),
  },
  tinted: {
    null: ColorDescriptor.shade(50),
    WidgetState.hovered: ColorDescriptor.shade(100),
    WidgetState.pressed: ColorDescriptor.shade(200),
  },
  outlined: {
    null: ColorDescriptor.shade(-1),
    WidgetState.hovered: ColorDescriptor.shade(50),
    WidgetState.pressed: ColorDescriptor.shade(100),
  },
  subtle: {
    null: ColorDescriptor.shade(-1),
    WidgetState.hovered: ColorDescriptor.shade(50),
    WidgetState.pressed: ColorDescriptor.shade(100),
  },
  plain: {
    null: ColorDescriptor.shade(-1),
  },
);

const kLightPrimaryForegroundColor = VariantedWidgetStateColor(
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
  plain: {
    null: ColorDescriptor.shade(600),
  },
);

const kLightPrimaryBorderColor = VariantedWidgetStateColor(
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
  plain: {
    null: ColorDescriptor.shade(-1),
  },
);

// #endregion
