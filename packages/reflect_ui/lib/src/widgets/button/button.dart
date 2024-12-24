// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
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
    this.variant = ButtonVariant.filled,
    this.kind = ButtonKind.primary,
    this.padding,
    this.color,
    this.borderRadius,
    this.alignment = Alignment.center,
    this.focusNode,
    this.onFocusChange,
    this.autofocus = false,
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

  /// The variant of the button.
  ///
  /// Defaults to [ButtonVariant.filled].
  final ButtonVariant variant;

  /// The kind of the button.
  ///
  /// Defaults to [ButtonKind.primary].
  final ButtonKind kind;

  /// The amount of space to surround the child inside the bounds of the button.
  ///
  /// Defaults to the [DesignTheme]'s `userInteractivePadding`.
  final EdgeInsetsGeometry? padding;

  /// The color of the button's background.
  ///
  /// Defaults to null which produces a button with no background or border.
  ///
  /// Defaults to the [DesignTheme]'s `primaryColor`.
  final Color? color;

  /// The callback that is called when the button is tapped or otherwise activated.
  ///
  /// If this is set to null, the button will be disabled.
  final VoidCallback? onPressed;

  /// The radius of the button's corners when it has a background color.
  ///
  /// Defaults to the [DesignTheme]'s `userInteractiveBorderRadius`.
  final BorderRadius? borderRadius;

  /// The alignment of the button's [child].
  ///
  /// Typically buttons are sized to be just big enough to contain the child and its
  /// [padding]. If the button's size is constrained to a fixed size, for example by
  /// enclosing it with a [SizedBox], this property defines how the child is aligned
  /// within the available space.
  ///
  /// Always defaults to [Alignment.center].
  final AlignmentGeometry alignment;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// Handler called when the focus changes.
  ///
  /// Called with true if this widget's node gains focus, and false if it loses
  /// focus.
  final ValueChanged<bool>? onFocusChange;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

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
    final DesignThemeData themeData = DesignTheme.of(context);
    final bool enabled = widget.enabled;

    ButtonStyle style = widget.style ??
        ButtonStyle.resolveWith(
          themeData.widgetBaseStyleResolver,
          widget.kind,
          widget.variant,
          color: widget.color,
          context: context,
        );

    final Color? backgroundColor = style.backgroundColor?.resolve(states);
    final Color? foregroundColor = style.foregroundColor?.resolve(states);
    final BorderSide? side = style.side?.resolve(states);
    final TextStyle textStyle =
        (style.textStyle?.resolve(states) ?? themeData.typography.labelMedium)
            .copyWith(
      color: foregroundColor,
    );

    final IconThemeData iconTheme =
        IconTheme.of(context).copyWith(color: foregroundColor);

    return MouseRegion(
      cursor: enabled && kIsWeb ? SystemMouseCursors.click : MouseCursor.defer,
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
        enabled: enabled,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapDown: enabled ? _handleTapDown : null,
          onTapUp: enabled ? _handleTapUp : null,
          onTapCancel: enabled ? _handleTapCancel : null,
          onTap: widget.onPressed,
          child: Semantics(
            button: true,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: themeData.userInteractiveDimension,
                minHeight: themeData.userInteractiveDimension,
              ),
              child: Container(
                foregroundDecoration: BoxDecoration(
                  border: side != null ? Border.fromBorderSide(side) : null,
                  borderRadius: widget.borderRadius ??
                      themeData.userInteractiveBorderRadius,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: widget.borderRadius ??
                      themeData.userInteractiveBorderRadius,
                ),
                child: Padding(
                  padding: widget.padding ?? themeData.userInteractivePadding,
                  child: Align(
                    alignment: widget.alignment,
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: DefaultTextStyle(
                      style: textStyle,
                      child: IconTheme(
                        data: iconTheme,
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
