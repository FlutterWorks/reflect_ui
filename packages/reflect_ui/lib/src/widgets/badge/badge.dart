// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart' show CupertinoColors;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/painting/widget_style.dart';
import 'package:reflect_ui/src/utils/constants.dart';
import 'package:reflect_ui/src/widgets/badge/badge_kind.dart';
import 'package:reflect_ui/src/widgets/badge/badge_style.dart';
import 'package:reflect_ui/src/widgets/badge/badge_variant.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';

export './badge_kind.dart';
export './badge_style.dart';
export './badge_variant.dart';

// Measured against iOS 12 in Xcode.
const EdgeInsets _kBadgePadding = EdgeInsets.all(16.0);
const EdgeInsets _kBackgroundBadgePadding = EdgeInsets.symmetric(
  vertical: 1.0,
  horizontal: 6.0,
);

/// A badge widget.
///
/// Takes in a text or an icon that fades out and in on touch. May optionally have a
/// background.
///
/// The [padding] defaults to 16.0 pixels. When using a [Badge] within
/// a fixed height parent, like a [CupertinoNavigationBar], a smaller, or even
/// [EdgeInsets.zero], should be used to prevent clipping larger [child]
/// widgets.
///
/// Preserves any parent [IconThemeData] but overwrites its [IconThemeData.color]
/// with the [CupertinoThemeData.primaryColor] (or
/// [CupertinoThemeData.primaryContrastingColor] if the badge is disabled).
///
/// {@tool dartpad}
/// This sample shows produces an enabled and disabled [Badge] and
/// [Badge.filled].
///
/// ** See code in examples/api/lib/cupertino/badge/cupertino_badge.0.dart **
/// {@end-tool}
///
/// See also:
///
///  * <https://developer.apple.com/design/human-interface-guidelines/badges/>
class Badge extends StatefulWidget {
  /// Creates an iOS-style badge.
  const Badge({
    super.key,
    required this.child,
    this.style,
    this.variant = BadgeVariant.filled,
    this.kind = BadgeKind.primary,
    this.padding,
    this.color,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.alignment = Alignment.center,
  });

  /// The widget below this widget in the tree.
  ///
  /// Typically a [Text] widget.
  final Widget child;

  /// The style of the badge.
  ///
  /// Defaults to null.
  final BadgeStyle? style;

  /// The variant of the badge.
  ///
  /// Defaults to [BadgeVariant.filled].
  final BadgeVariant variant;

  /// The kind of the badge.
  ///
  /// Defaults to [BadgeKind.primary].
  final BadgeKind kind;

  /// The amount of space to surround the child inside the bounds of the badge.
  ///
  /// Defaults to 16.0 pixels.
  final EdgeInsetsGeometry? padding;

  /// The color of the badge's background.
  ///
  /// Defaults to null which produces a badge with no background or border.
  ///
  /// Defaults to the [CupertinoTheme]'s `primaryColor` when the
  /// [Badge.filled] constructor is used.
  final Color? color;

  /// The color of the badge's background when the badge is disabled.
  ///
  /// Ignored if the [Badge] doesn't also have a [color].
  ///
  /// Defaults to [CupertinoColors.quaternarySystemFill] when [color] is
  /// specified.
  final Color disabledColor;

  /// The radius of the badge's corners when it has a background color.
  ///
  /// Defaults to round corners of 8 logical pixels.
  final BorderRadius? borderRadius;

  /// The alignment of the badge's [child].
  ///
  /// Typically badges are sized to be just big enough to contain the child and its
  /// [padding]. If the badge's size is constrained to a fixed size, for example by
  /// enclosing it with a [SizedBox], this property defines how the child is aligned
  /// within the available space.
  ///
  /// Always defaults to [Alignment.center].
  final AlignmentGeometry alignment;

  @override
  State<Badge> createState() => _BadgeState();
}

class _BadgeState extends State<Badge> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final DesignThemeData theme = DesignTheme.of(context);

    final WidgetStyle widgetStyle = theme.baseStyle;

    BadgeStyle? style = widget.style;

    Set<WidgetState> states = <WidgetState>{};

    final Color? backgroundColor = (style?.backgroundColor)?.resolve(states);
    final Color? foregroundColor = (style?.foregroundColor)?.resolve(states);
    final Color? borderColor = (widgetStyle.borderColor)?.resolve(states);
    final BorderSide? side = ((style?.side)?.resolve(states) ??
        (borderColor != null
            ? BorderSide(width: 1, color: borderColor)
            : null));
    final TextStyle textStyle =
        (style?.textStyle?.resolve(states) ?? theme.typography.labelMedium)
            .copyWith(
      color: foregroundColor,
      fontWeight: FontWeight.w500,
      fontSize: 10,
      // height: 12 / 10,
    );

    final IconThemeData iconTheme =
        IconTheme.of(context).copyWith(color: foregroundColor);

    final Size size = theme.sizing.size10;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: size.width * kWidgetDimensionTertiaryScale,
        minHeight: size.height * kWidgetDimensionTertiaryScale,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          color: backgroundColor,
        ),
        foregroundDecoration: BoxDecoration(
          border: side != null ? Border.fromBorderSide(side) : null,
          borderRadius: widget.borderRadius,
        ),
        child: Padding(
          padding: widget.padding ??
              (backgroundColor != null
                  ? _kBackgroundBadgePadding
                  : _kBadgePadding),
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
    );
  }
}
