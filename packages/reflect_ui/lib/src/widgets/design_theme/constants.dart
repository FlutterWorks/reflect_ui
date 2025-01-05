import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/color_descriptor.dart';
import 'package:reflect_ui/src/core/colors.dart';
import 'package:reflect_ui/src/painting/varianted_widget_state_color.dart';

// #region Dark theme constants.

const kDarkPrimaryBackgroundColor = VariantedWidgetStateColor(
  normal: {
    null: ColorDescriptor(color: Colors.gray),
    WidgetState.hovered: ColorDescriptor(color: Colors.gray),
  },
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
  muted: {
    null: ColorDescriptor.shade(600),
  },
  cleared: {
    null: ColorDescriptor.shade(600),
  },
);

const kDarkPrimaryForegroundColor = VariantedWidgetStateColor(
  normal: {
    null: ColorDescriptor(color: Colors.gray),
    WidgetState.hovered: ColorDescriptor(color: Colors.gray),
  },
  filled: {
    null: ColorDescriptor(color: Colors.white),
  },
  tinted: {
    null: ColorDescriptor.shade(600),
  },
  outlined: {
    null: ColorDescriptor.shade(600),
  },
  muted: {
    null: ColorDescriptor.shade(600),
  },
  cleared: {
    null: ColorDescriptor.shade(600),
  },
);

const kDarkPrimaryBorderColor = VariantedWidgetStateColor(
  normal: {
    null: ColorDescriptor(color: Colors.gray),
    WidgetState.hovered: ColorDescriptor(color: Colors.gray),
  },
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
  muted: {
    null: ColorDescriptor.shade(600),
  },
  cleared: {
    null: ColorDescriptor.shade(600),
  },
);

// #endregion

// #region Light theme constants.

final kLightPrimaryBackgroundColor = VariantedWidgetStateColor(
  normal: {
    null: ColorDescriptor(color: Colors.transparent),
    WidgetState.hovered: ColorDescriptor(color: Colors.neutral.shade100),
  },
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
  muted: {
    null: ColorDescriptor.shade(-1),
    WidgetState.hovered: ColorDescriptor.shade(50),
    WidgetState.pressed: ColorDescriptor.shade(100),
  },
  cleared: {
    null: ColorDescriptor.shade(-1),
  },
);

final kLightPrimaryForegroundColor = VariantedWidgetStateColor(
  normal: {
    null: ColorDescriptor(color: Colors.neutral.shade900),
  },
  filled: {
    null: ColorDescriptor(color: Colors.white),
  },
  tinted: {
    null: ColorDescriptor.shade(600),
  },
  outlined: {
    null: ColorDescriptor.shade(600),
  },
  muted: {
    null: ColorDescriptor.shade(600),
  },
  cleared: {
    null: ColorDescriptor.shade(600),
  },
);

final kLightPrimaryBorderColor = VariantedWidgetStateColor(
  normal: {
    null: ColorDescriptor(color: Colors.neutral.shade300),
  },
  filled: {
    null: ColorDescriptor.shade(-1),
  },
  tinted: {
    null: ColorDescriptor.shade(-1),
  },
  outlined: {
    null: ColorDescriptor.shade(600),
  },
  muted: {
    null: ColorDescriptor.shade(-1),
  },
  cleared: {
    null: ColorDescriptor.shade(-1),
  },
);

// #endregion
