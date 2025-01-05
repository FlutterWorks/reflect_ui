// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/core/widget_radius.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
import 'package:reflect_ui/src/widgets/badge/badge_kind.dart';
import 'package:reflect_ui/src/widgets/badge/badge_style.dart';
import 'package:reflect_ui/src/widgets/badge/badge_variant.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';

export './badge_kind.dart';
export './badge_style.dart';
export './badge_variant.dart';

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
    this.color,
    this.variant = BadgeVariant.filled,
    this.kind = BadgeKind.primary,
    this.size = WidgetSize.medium,
    this.radius = WidgetRadius.full,
    this.padding,
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

  /// The color of the badge's seed color.
  ///
  /// Defaults to null.
  final Color? color;

  /// The kind of the badge.
  ///
  /// Defaults to [BadgeKind.primary].
  final BadgeKind kind;

  /// The variant of the badge.
  ///
  /// Defaults to [BadgeVariant.filled].
  final BadgeVariant variant;

  /// The size of the badge.
  ///
  /// Defaults to [WidgetSize.medium].
  final Size size;

  /// The radius of the badge's corners when it has a background color.
  ///
  /// Defaults to round corners of 8 logical pixels.
  final BorderRadius? radius;

  /// The amount of space to surround the child inside the bounds of the badge.
  ///
  /// Defaults to 16.0 pixels.
  final EdgeInsetsGeometry? padding;

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

  /// Returns a non-null [BadgeStyle] from the theme.
  @protected
  BadgeStyle themeStyleOf(BuildContext context) {
    final theme = DesignTheme.of(context);
    final defaults = theme.widgetDefaults;
    return BadgeStyle(
      color: defaults.seedColor,
      minSize: defaults.secondaryMinSize ?? defaults.minSize,
      padding: defaults.secondaryPadding ?? defaults.padding,
      backgroundColor: defaults.backgroundColor,
      foregroundColor: defaults.foregroundColor,
      borderColor: defaults.borderColor,
      borderRadius: defaults.borderRadius,
      borderWidth: defaults.borderWidth,
      iconStyle: defaults.secondaryIconStyle ?? defaults.iconStyle,
      textStyle: defaults.secondaryLabelStyle ?? defaults.labelStyle,
    );
  }
}

class _BadgeState extends State<Badge> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final DesignThemeData theme = DesignTheme.of(context);
    final BadgeStyle style = widget.style ?? widget.themeStyleOf(context);

    final effectiveStyle = style.resolve(
      {},
      widget.kind,
      widget.variant,
      widget.size is WidgetSize ? widget.size as WidgetSize : null,
      widget.radius is WidgetRadius
          ? widget.radius as WidgetRadius
          : WidgetRadius.medium,
      theme,
    );

    Size minSize = effectiveStyle.minSize;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minSize.width,
        minHeight: minSize.height,
      ),
      child: Container(
        foregroundDecoration: BoxDecoration(
          border: effectiveStyle.borderColor != null
              ? Border.all(
                  color: effectiveStyle.borderColor!,
                  width: effectiveStyle.borderWidth ?? 0,
                )
              : null,
          borderRadius: BorderRadius.circular(9999),
        ),
        decoration: BoxDecoration(
          color: effectiveStyle.backgroundColor,
          borderRadius: BorderRadius.circular(9999),
        ),
        child: Padding(
          padding: widget.padding ?? effectiveStyle.padding,
          child: Align(
            alignment: widget.alignment,
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: DefaultTextStyle(
              style: effectiveStyle.textStyle.copyWith(
                color: effectiveStyle.foregroundColor,
              ),
              child: IconTheme(
                data: IconThemeData(
                  color: effectiveStyle.foregroundColor,
                ),
                child: widget.child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
