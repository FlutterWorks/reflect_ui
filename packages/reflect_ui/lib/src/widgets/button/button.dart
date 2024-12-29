// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
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
/// The [padding] defaults to 16.0 pixels. When using a [Button] within
/// a fixed height parent, like a [CupertinoNavigationBar], a smaller, or even
/// [EdgeInsets.zero], should be used to prevent clipping larger [child]
/// widgets.
///
/// Preserves any parent [IconThemeData] but overwrites its [IconThemeData.color]
/// with the [CupertinoThemeData.primaryColor] (or
/// [CupertinoThemeData.primaryContrastingColor] if the button is disabled).
///
/// {@tool dartpad}
/// This sample shows produces an enabled and disabled [Button] and
/// [Button.filled].
///
/// ** See code in examples/api/lib/cupertino/button/cupertino_button.0.dart **
/// {@end-tool}
///
/// See also:
///
///  * <https://developer.apple.com/design/human-interface-guidelines/buttons/>
class Button extends StatefulWidget {
  /// Creates an iOS-style button.
  const Button({
    super.key,
    required this.child,
    this.style,
    this.kind = ButtonKind.primary,
    this.variant = ButtonVariant.filled,
    this.size = WidgetSize.medium,
    this.color,
    this.focusNode,
    this.autofocus = false,
    this.onFocusChange,
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

  /// The kind of the button.
  ///
  /// Defaults to [ButtonKind.primary].
  final ButtonKind kind;

  /// The variant of the button.
  ///
  /// Defaults to [ButtonVariant.filled].
  final ButtonVariant variant;

  /// The size of the button.
  ///
  /// Defaults to [WidgetSize.medium].
  final Size size;

  /// The color of the button's seed color.
  ///
  /// Defaults to null.
  final Color? color;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// The callback that is called when the button is tapped or otherwise activated.
  ///
  /// If this is set to null, the button will be disabled.
  final VoidCallback? onPressed;

  /// Handler called when the focus changes.
  ///
  /// Called with true if this widget's node gains focus, and false if it loses
  /// focus.
  final ValueChanged<bool>? onFocusChange;

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

  @override
  Widget build(BuildContext context) {
    final DesignThemeData theme = DesignTheme.of(context);
    final ButtonStyle style = widget.style ?? ButtonStyle.fromTheme(theme);

    final effectiveStyle = style.resolve(
      states,
      widget.kind,
      widget.variant,
      widget.size is WidgetSize ? widget.size as WidgetSize : null,
      theme,
    );

    return MouseRegion(
      cursor: widget.enabled && kIsWeb
          ? SystemMouseCursors.click
          : MouseCursor.defer,
      onEnter: (event) {
        _isHovered = true;
        setState(() {});
      },
      onExit: (event) {
        _isHovered = false;
        setState(() {});
      },
      onHover: (event) {
        if (!_isHovered) {
          _isHovered = true;
          setState(() {});
        }
      },
      child: FocusableActionDetector(
        focusNode: widget.focusNode,
        autofocus: widget.autofocus,
        onFocusChange: widget.onFocusChange,
        onShowFocusHighlight: _onShowFocusHighlight,
        enabled: widget.enabled,
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
                child: Padding(
                  padding: effectiveStyle.padding,
                  child: Align(
                    alignment: Alignment.center,
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: DefaultTextStyle(
                      style: effectiveStyle.textStyle,
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
        ),
      ),
    );
  }
}
