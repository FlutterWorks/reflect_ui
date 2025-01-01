import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/color_descriptor.dart';
import 'package:reflect_ui/src/core/colors.dart';
import 'package:reflect_ui/src/painting/varianted_widget_state_color.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';

// #region Regular constants.
const kRegularPrimaryMinSize = SizedWidgetProperty<Size>(
  tiny: Size.square(24),
  small: Size.square(32),
  medium: Size.square(44),
  large: Size.square(48),
  big: Size.square(56),
);

const kRegularPrimaryPadding = SizedWidgetProperty<EdgeInsets>(
  tiny: EdgeInsets.all(4),
  small: EdgeInsets.all(8),
  medium: EdgeInsets.all(12),
  large: EdgeInsets.all(16),
  big: EdgeInsets.all(20),
);

const kRegularPrimaryBorderRadius = WidgetPropertyAll<BorderRadius>(
  BorderRadius.all(Radius.circular(6)),
);

const kRegularPrimaryBorderWidth = WidgetPropertyAll<double>(1);

const kRegularSecondaryMinSize = SizedWidgetProperty<Size>(
  tiny: Size.square(24 * 0.8),
  small: Size.square(32 * 0.8),
  medium: Size.square(44 * 0.8),
  large: Size.square(48 * 0.8),
  big: Size.square(56 * 0.8),
);

const kRegularSecondaryPadding = SizedWidgetProperty<EdgeInsets>(
  tiny: EdgeInsets.all(2),
  small: EdgeInsets.all(4),
  medium: EdgeInsets.all(8),
  large: EdgeInsets.all(12),
  big: EdgeInsets.all(16),
);

const kRegularSecondaryBorderRadius = WidgetPropertyAll<BorderRadius>(
  BorderRadius.all(Radius.circular(6 * 0.8)),
);

const kRegularTertiaryMinSize = SizedWidgetProperty<Size>(
  tiny: Size.square(24 * 0.56),
  small: Size.square(32 * 0.56),
  medium: Size.square(44 * 0.56),
  large: Size.square(48 * 0.56),
  big: Size.square(56 * 0.56),
);

const kRegularTertiaryPadding = SizedWidgetProperty<EdgeInsets>(
  tiny: EdgeInsets.all(2),
  small: EdgeInsets.all(4),
  medium: EdgeInsets.all(8),
  large: EdgeInsets.all(12),
  big: EdgeInsets.all(16),
);

const kRegularTertiaryBorderRadius = WidgetPropertyAll<BorderRadius>(
  BorderRadius.all(Radius.circular(6 * 0.56)),
);

// #endregion

// #region Compact constants.

const kCompactPrimaryMinSize = SizedWidgetProperty<Size>(
  tiny: Size.square(24),
  small: Size.square(28),
  medium: Size.square(32),
  large: Size.square(36),
  big: Size.square(40),
);

const kCompactPrimaryPadding = SizedWidgetProperty<EdgeInsets>(
  tiny: EdgeInsets.all(2),
  small: EdgeInsets.all(4),
  medium: EdgeInsets.all(8),
  large: EdgeInsets.all(12),
  big: EdgeInsets.all(16),
);

const kCompactPrimaryBorderRadius = WidgetPropertyAll<BorderRadius>(
  BorderRadius.all(Radius.circular(6)),
);

const kCompactPrimaryBorderWidth = WidgetPropertyAll<double>(1);

const kCompactSecondaryMinSize = SizedWidgetProperty<Size>(
  tiny: Size.square(24 * 0.8),
  small: Size.square(28 * 0.8),
  medium: Size.square(32 * 0.8),
  large: Size.square(36 * 0.8),
  big: Size.square(40 * 0.8),
);

const kCompactSecondaryPadding = SizedWidgetProperty<EdgeInsets>(
  tiny: EdgeInsets.all(2),
  small: EdgeInsets.all(4),
  medium: EdgeInsets.all(8),
  large: EdgeInsets.all(12),
  big: EdgeInsets.all(16),
);

const kCompactSecondaryBorderRadius = WidgetPropertyAll<BorderRadius>(
  BorderRadius.all(Radius.circular(6 * 0.8)),
);

const kCompactTertiaryMinSize = SizedWidgetProperty<Size>(
  tiny: Size.square(24 * 0.56),
  small: Size.square(28 * 0.56),
  medium: Size.square(32 * 0.56),
  large: Size.square(36 * 0.56),
  big: Size.square(40 * 0.56),
);

const kCompactTertiaryPadding = SizedWidgetProperty<EdgeInsets>(
  tiny: EdgeInsets.all(2),
  small: EdgeInsets.all(4),
  medium: EdgeInsets.all(8),
  large: EdgeInsets.all(12),
  big: EdgeInsets.all(16),
);

const kCompactTertiaryBorderRadius = WidgetPropertyAll<BorderRadius>(
  BorderRadius.all(Radius.circular(6 * 0.56)),
);

// #endregion

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
