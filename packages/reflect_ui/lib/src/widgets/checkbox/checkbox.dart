// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: require_trailing_commas

import 'package:flutter/cupertino.dart' show CupertinoColors;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/colors.dart';
import 'package:reflect_ui/src/core/widget_radius.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
import 'package:reflect_ui/src/widgets/checkbox/checkbox_style.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';

export './checkbox_style.dart';

// The relative values needed to transform a color to it's equivalent focus
// outline color.
const double _kCupertinoFocusColorOpacity = 0.80;
const double _kCupertinoFocusColorBrightness = 0.69;
const double _kCupertinoFocusColorSaturation = 0.835;

/// A macOS style checkbox.
///
/// The checkbox itself does not maintain any state. Instead, when the state of
/// the checkbox changes, the widget calls the [onChanged] callback. Most
/// widgets that use a checkbox will listen for the [onChanged] callback and
/// rebuild the checkbox with a new [value] to update the visual appearance of
/// the checkbox.
///
/// The checkbox can optionally display three values - true, false, and null -
/// if [tristate] is true. When [value] is null a dash is displayed. By default
/// [tristate] is false and the checkbox's [value] must be true or false.
///
/// In the Apple Human Interface Guidelines (HIG), checkboxes are encouraged for
/// use on macOS, but is silent about their use on iOS. If a multi-selection
/// component is needed on iOS, the HIG encourages the developer to use switches
/// ([Switch] in Flutter) instead, or to find a creative custom
/// solution.
///
/// See also:
///
///  * [Checkbox], the Material Design equivalent.
///  * [Switch], a widget with semantics similar to [Checkbox].
///  * [Slider], for selecting a value in a range.
///  * <https://developer.apple.com/design/human-interface-guidelines/components/selection-and-input/toggles/>
class Checkbox extends StatefulWidget {
  /// Creates a macOS-styled checkbox.
  ///
  /// The checkbox itself does not maintain any state. Instead, when the state of
  /// the checkbox changes, the widget calls the [onChanged] callback. Most
  /// widgets that use a checkbox will listen for the [onChanged] callback and
  /// rebuild the checkbox with a new [value] to update the visual appearance of
  /// the checkbox.
  ///
  /// The following arguments are required:
  ///
  /// * [value], which determines whether the checkbox is checked. The [value]
  ///   can only be null if [tristate] is true.
  /// * [onChanged], which is called when the value of the checkbox should
  ///   change. It can be set to null to disable the checkbox.
  const Checkbox({
    super.key,
    required this.value,
    this.tristate = false,
    required this.onChanged,
    this.style,
    this.color,
    this.size = WidgetSize.medium,
    this.radius = WidgetRadius.small,
    this.focusNode,
    this.autofocus = false,
  }) : assert(tristate || value != null);

  /// Whether this checkbox is checked.
  ///
  /// When [tristate] is true, a value of null corresponds to the mixed state.
  /// When [tristate] is false, this value must not be null. This is asserted in
  /// debug mode.
  final bool? value;

  /// Called when the value of the checkbox should change.
  ///
  /// The checkbox passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the checkbox with the new
  /// value.
  ///
  /// If this callback is null, the checkbox will be displayed as disabled
  /// and will not respond to input gestures.
  ///
  /// When the checkbox is tapped, if [tristate] is false (the default) then
  /// the [onChanged] callback will be applied to `!value`. If [tristate] is
  /// true this callback cycle from false to true to null and back to false
  /// again.
  ///
  /// The callback provided to [onChanged] should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// Checkbox(
  ///   value: _throwShotAway,
  ///   onChanged: (bool? newValue) {
  ///     setState(() {
  ///       _throwShotAway = newValue!;
  ///     });
  ///   },
  /// )
  /// ```
  final ValueChanged<bool?>? onChanged;

  /// If true, the checkbox's [value] can be true, false, or null.
  ///
  /// [Checkbox] displays a dash when its value is null.
  ///
  /// When a tri-state checkbox ([tristate] is true) is tapped, its [onChanged]
  /// callback will be applied to true if the current value is false, to null if
  /// value is true, and to false if value is null (i.e. it cycles through false
  /// => true => null => false when tapped).
  ///
  /// If tristate is false (the default), [value] must not be null, and
  /// [onChanged] will only toggle between true and false.
  final bool tristate;

  /// The style of the checkbox.
  ///
  /// Defaults to null.
  final CheckboxStyle? style;

  /// The color of the checkbox's seed color.
  ///
  /// Defaults to null.
  final Color? color;

  /// The size of the checkbox.
  ///
  /// Defaults to [WidgetSize.medium].
  final Size size;

  /// The radius of the checkbox.
  ///
  /// Defaults to [WidgetRadius.medium].
  final BorderRadius radius;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  @override
  State<Checkbox> createState() => _CheckboxState();

  /// Returns a non-null [CheckboxStyle] from the theme.
  @protected
  CheckboxStyle themeStyleOf(BuildContext context) {
    final theme = DesignTheme.of(context);
    final defaults = theme.widgetDefaults;
    return CheckboxStyle(
      minSize: defaults.tertiaryMinSize!,
      borderRadius: defaults.borderRadius,
      interactiveSize: defaults.minSize,
    );
  }
}

class _CheckboxState extends State<Checkbox>
    with TickerProviderStateMixin, ToggleableStateMixin {
  final _CheckboxPainter _painter = _CheckboxPainter();
  bool? _previousValue;

  bool focused = false;

  @override
  void initState() {
    super.initState();
    _previousValue = widget.value;
  }

  @override
  void didUpdateWidget(Checkbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _previousValue = oldWidget.value;
    }
  }

  @override
  void dispose() {
    _painter.dispose();
    super.dispose();
  }

  @override
  ValueChanged<bool?>? get onChanged => widget.onChanged;

  @override
  bool get tristate => widget.tristate;

  @override
  bool? get value => widget.value;

  void onFocusChange(bool value) {
    if (focused != value) {
      focused = value;
    }
  }

  @override
  Widget build(BuildContext context) {
    final DesignThemeData theme = DesignTheme.of(context);
    final CheckboxStyle style = widget.style ?? widget.themeStyleOf(context);

    final Color effectiveActiveColor = theme.colorScheme.primary;
    final Color effectiveInactiveColor = CupertinoColors.inactiveGray;

    final Color effectiveFocusOverlayColor = HSLColor.fromColor(
            effectiveActiveColor.withOpacity(_kCupertinoFocusColorOpacity))
        .withLightness(_kCupertinoFocusColorBrightness)
        .withSaturation(_kCupertinoFocusColorSaturation)
        .toColor();

    final Size minSize = style.minSize.resolveWith(
      {},
      size: widget.size as WidgetSize,
    );
    final BorderRadius borderRadius = style.borderRadius.resolveWith(
      {},
      radius: widget.radius as WidgetRadius,
    );

    final Size interactiveSize = style.interactiveSize.resolveWith(
      {},
      size: widget.size as WidgetSize,
    );

    return Semantics(
      checked: widget.value ?? false,
      mixed: widget.tristate ? widget.value == null : null,
      child: buildToggleable(
        focusNode: widget.focusNode,
        autofocus: widget.autofocus,
        onFocusChange: onFocusChange,
        size: interactiveSize,
        painter: _painter
          ..dimension = minSize.width
          ..focusColor = effectiveFocusOverlayColor
          ..isFocused = focused
          ..downPosition = downPosition
          ..activeColor = effectiveActiveColor
          ..inactiveColor = effectiveInactiveColor
          ..checkColor = Colors.white
          ..value = value
          ..previousValue = _previousValue
          ..isActive = widget.onChanged != null
          ..shape = RoundedRectangleBorder(
            borderRadius: borderRadius,
          )
          ..side = const BorderSide(color: Colors.gray),
      ),
    );
  }
}

class _CheckboxPainter extends ToggleablePainter {
  double _dimension = 16.0;

  set dimension(double value) {
    if (_dimension == value) {
      return;
    }
    _dimension = value;
    notifyListeners();
  }

  Color get checkColor => _checkColor!;
  Color? _checkColor;
  set checkColor(Color value) {
    if (_checkColor == value) {
      return;
    }
    _checkColor = value;
    notifyListeners();
  }

  bool? get value => _value;
  bool? _value;
  set value(bool? value) {
    if (_value == value) {
      return;
    }
    _value = value;
    notifyListeners();
  }

  bool? get previousValue => _previousValue;
  bool? _previousValue;
  set previousValue(bool? value) {
    if (_previousValue == value) {
      return;
    }
    _previousValue = value;
    notifyListeners();
  }

  OutlinedBorder get shape => _shape!;
  OutlinedBorder? _shape;
  set shape(OutlinedBorder value) {
    if (_shape == value) {
      return;
    }
    _shape = value;
    notifyListeners();
  }

  BorderSide? get side => _side;
  BorderSide? _side;
  set side(BorderSide? value) {
    if (_side == value) {
      return;
    }
    _side = value;
    notifyListeners();
  }

  Rect _outerRectAt(Offset origin) {
    final Rect rect = Rect.fromLTWH(
      origin.dx,
      origin.dy,
      _dimension,
      _dimension,
    );
    return rect;
  }

  // The checkbox's border color if value == false, or its fill color when
  // value == true or null.
  Color _colorAt(bool value) {
    return value && isActive ? activeColor : inactiveColor;
  }

  // White stroke used to paint the check and dash.
  Paint _createStrokePaint() {
    return Paint()
      ..color = checkColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.4
      ..strokeCap = StrokeCap.round;
  }

  void _drawBox(
      Canvas canvas, Rect outer, Paint paint, BorderSide? side, bool fill) {
    if (fill) {
      canvas.drawPath(shape.getOuterPath(outer), paint);
    }
    if (side != null) {
      shape.copyWith(side: side).paint(canvas, outer);
    }
  }

  void _drawCheck(Canvas canvas, Offset origin, Paint paint) {
    final Path path = Path();
    // The ratios for the offsets below were found from looking at the checkbox
    // examples on in the HIG docs. The distance from the needed point to the
    // edge was measured, then divided by the total width.
    final Offset start = Offset(_dimension * 0.28, _dimension * 0.5);
    final Offset mid = Offset(_dimension * 0.43, _dimension * 0.65);
    final Offset end = Offset(_dimension * 0.72, _dimension * 0.35);
    path.moveTo(origin.dx + start.dx, origin.dy + start.dy);
    path.lineTo(origin.dx + mid.dx, origin.dy + mid.dy);
    canvas.drawPath(path, paint);
    path.moveTo(origin.dx + mid.dx, origin.dy + mid.dy);
    path.lineTo(origin.dx + end.dx, origin.dy + end.dy);
    canvas.drawPath(path, paint);
  }

  void _drawDash(Canvas canvas, Offset origin, Paint paint) {
    // From measuring the checkbox example in the HIG docs, the dash was found
    // to be half the total width, centered in the middle.
    final Offset start = Offset(_dimension * 0.28, _dimension * 0.5);
    final Offset end = Offset(_dimension * 0.72, _dimension * 0.5);
    canvas.drawLine(origin + start, origin + end, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Paint strokePaint = _createStrokePaint();
    final Offset origin = size / 2.0 - Size.square(_dimension) / 2.0 as Offset;

    final Rect outer = _outerRectAt(origin);
    final Paint paint = Paint()..color = _colorAt(value ?? true);

    if (value == false) {
      final BorderSide border = side ?? BorderSide(color: paint.color);
      _drawBox(canvas, outer, paint, border, false);
    } else {
      _drawBox(canvas, outer, paint, side, true);
      if (value ?? false) {
        _drawCheck(canvas, origin, strokePaint);
      } else {
        _drawDash(canvas, origin, strokePaint);
      }
    }

    if (isFocused) {
      final Rect focusOuter = outer.inflate(1);

      final Paint borderPaint = Paint()
        ..color = focusColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3.5;

      _drawBox(canvas, focusOuter, borderPaint, side, true);
    }
  }
}
