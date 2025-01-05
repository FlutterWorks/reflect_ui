// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/widget_radius.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';
import 'package:reflect_ui/src/widgets/button/button_kind.dart';
import 'package:reflect_ui/src/widgets/button/button_style.dart';
import 'package:reflect_ui/src/widgets/button/button_variant.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';

export 'package:reflect_ui/src/widgets/button/button_kind.dart';
export 'package:reflect_ui/src/widgets/button/button_style.dart';
export 'package:reflect_ui/src/widgets/button/button_variant.dart';

/// A button widget.
///
/// Takes in a text or an icon that fades out and in on touch. May optionally have a
/// background.
///
/// See also:
///
///  * <https://reflect-ui.leanflutter.dev/design-system/buttons/>
class Button extends StatefulWidget {
  /// Creates an iOS-style button.
  const Button({
    super.key,
    required this.child,
    this.style,
    this.color,
    this.kind,
    this.variant,
    this.size = WidgetSize.medium,
    this.radius = WidgetRadius.medium,
    this.highContrast = false,
    this.expand = false,
    this.focusNode,
    this.autofocus = false,
    this.onFocusChange,
    this.onHover,
    required this.onPressed,
  });

  /// The widget below this widget in the tree.
  ///
  /// Typically a [Text] widget.
  final Widget child;

  /// The style of the button.
  ///
  /// Defaults to null.
  final ButtonStyle? style;

  /// The color of the button's seed color.
  ///
  /// Defaults to null.
  final Color? color;

  /// The kind of the button.
  ///
  /// Defaults to null.
  final ButtonKind? kind;

  /// The variant of the button.
  ///
  /// Defaults to null.
  final ButtonVariant? variant;

  /// The size of the button.
  ///
  /// Defaults to [WidgetSize.medium].
  final Size size;

  /// The radius of the button.
  ///
  /// Defaults to [WidgetRadius.medium].
  final BorderRadius radius;

  /// Whether the button should have a high contrast background and foreground
  /// color.
  ///
  /// Defaults to false.
  final bool highContrast;

  /// Whether the button should expand to fill its container.
  ///
  /// Defaults to false.
  final bool expand;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// Handler called when the focus changes.
  ///
  /// Called with true if this widget's node gains focus, and false if it loses
  /// focus.
  final ValueChanged<bool>? onFocusChange;

  /// Handler called when the hover state changes.
  ///
  /// Called with true if this widget's node gains hover, and false if it loses
  /// hover.
  final ValueChanged<bool>? onHover;

  /// The callback that is called when the button is tapped or otherwise activated.
  ///
  /// If this is set to null, the button will be disabled.
  final VoidCallback? onPressed;

  /// Whether the button is enabled or disabled. Buttons are disabled by default. To
  /// enable a button, set its [onPressed] property to a non-null value.
  bool get enabled => onPressed != null;

  @override
  State<Button> createState() => _ButtonState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(FlagProperty('enabled', value: enabled, ifFalse: 'disabled'));
  }

  /// Returns a non-null [ButtonStyle] from the theme.
  @protected
  ButtonStyle themeStyleOf(BuildContext context) {
    final theme = DesignTheme.of(context);
    final defaults = theme.widgetDefaults;
    return ButtonStyle(
      minSize: defaults.minSize,
      padding: defaults.padding,
      backgroundColor: defaults.backgroundColor,
      foregroundColor: defaults.foregroundColor,
      borderColor: defaults.borderColor,
      borderRadius: defaults.borderRadius,
      borderWidth: defaults.borderWidth,
      iconStyle: defaults.iconStyle,
      textStyle: defaults.labelStyle,
    );
  }
}

class _ButtonState extends State<Button> with SingleTickerProviderStateMixin {
  late bool _isHovered;
  late bool _isFocused;
  late bool _isPressed;

  Set<WidgetState> get states {
    return <WidgetState>{
      if (_isHovered) WidgetState.hovered,
      if (_isFocused) WidgetState.focused,
      if (_isPressed) WidgetState.pressed,
      if (!widget.enabled) WidgetState.disabled,
    };
  }

  @override
  void initState() {
    super.initState();
    _isHovered = false;
    _isFocused = false;
    _isPressed = false;
  }

  void _handleTapDown(TapDownDetails event) {
    if (!_isPressed) {
      _isPressed = true;
      setState(() {});
    }
  }

  void _handleTapUp(TapUpDetails event) {
    if (_isPressed) {
      _isPressed = false;
      setState(() {});
    }
  }

  void _handleTapCancel() {
    if (_isPressed) {
      _isPressed = false;
      setState(() {});
    }
  }

  void _onShowFocusHighlight(bool showHighlight) {
    setState(() {
      _isFocused = showHighlight;
    });
  }

  void _onShowHoverHighlight(bool showHighlight) {
    if (widget.onHover != null) {
      widget.onHover?.call(showHighlight);
    }
    setState(() {
      _isHovered = showHighlight;
    });
  }

  @override
  Widget build(BuildContext context) {
    final DesignThemeData theme = DesignTheme.of(context);
    final ButtonStyle style = widget.style ?? widget.themeStyleOf(context);

    Color seedColor = widget.color ?? style.color.kinded(widget.kind);
    Color bgColor = style.backgroundColor.varianted(widget.variant, seedColor);
    Color fgColor = style.foregroundColor.varianted(widget.variant, seedColor);
    Color borderColor = style.borderColor.varianted(widget.variant, seedColor);

    final effectiveStyle = style.resolve(
      states,
      widget.kind,
      widget.variant,
      widget.size is WidgetSize ? widget.size as WidgetSize : null,
      WidgetRadius.medium,
      theme,
    );

    return FocusableActionDetector(
      enabled: widget.enabled,
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      onFocusChange: widget.onFocusChange,
      onShowFocusHighlight: _onShowFocusHighlight,
      onShowHoverHighlight: _onShowHoverHighlight,
      mouseCursor: widget.enabled && kIsWeb
          ? SystemMouseCursors.click
          : MouseCursor.defer,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: widget.enabled ? _handleTapDown : null,
        onTapUp: widget.enabled ? _handleTapUp : null,
        onTapCancel: widget.enabled ? _handleTapCancel : null,
        onTap: widget.onPressed,
        child: Semantics(
          button: true,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: effectiveStyle.minSize.width,
              minHeight: effectiveStyle.minSize.height,
            ),
            child: Container(
              width: widget.expand ? double.infinity : null,
              foregroundDecoration: BoxDecoration(
                border: effectiveStyle.borderColor != null
                    ? Border.all(
                        color: effectiveStyle.borderColor!,
                        width: effectiveStyle.borderWidth ?? 0,
                      )
                    : null,
                borderRadius: effectiveStyle.borderRadius,
              ),
              decoration: BoxDecoration(
                color: effectiveStyle.backgroundColor,
                borderRadius: effectiveStyle.borderRadius,
              ),
              padding: effectiveStyle.padding,
              child: Align(
                alignment: Alignment.center,
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: DefaultTextStyle(
                  style: effectiveStyle.textStyle.copyWith(
                    color: effectiveStyle.foregroundColor,
                  ),
                  child: IconTheme(
                    data: IconTheme.of(context).copyWith(
                      color: effectiveStyle.foregroundColor,
                    ),
                    child: widget.child,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
