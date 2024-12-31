import 'package:flutter/material.dart';
import 'package:reflect_ui/src/core/widget_size.dart';
import 'package:reflect_ui/src/widgets/alert/alert_kind.dart';
import 'package:reflect_ui/src/widgets/alert/alert_style.dart';
import 'package:reflect_ui/src/widgets/alert/alert_variant.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';
import 'package:reflect_ui/src/widgets/gapped_column/gapped_column.dart';
import 'package:reflect_ui/src/widgets/gapped_row/gapped_row.dart';

export 'alert_kind.dart';
export 'alert_style.dart';
export 'alert_variant.dart';

/// A alert widget.
class Alert extends StatefulWidget {
  const Alert({
    super.key,
    required this.kind,
    this.variant = AlertVariant.filled,
    this.style,
    this.icon,
    this.title,
    this.message,
    this.actions,
  });

  final AlertKind kind;

  final AlertVariant variant;

  final AlertStyle? style;

  final Widget? icon;

  /// An optional title of the action sheet. When the [message] is non-null,
  /// the font of the [title] is bold.
  ///
  /// Typically a [Text] widget.
  final Widget? title;

  /// An optional descriptive message that provides more details about the
  /// reason for the alert.
  ///
  /// Typically a [Text] widget.
  final Widget? message;

  /// The set of actions that are displayed for the user to select.
  ///
  /// This must be a list of [CupertinoActionSheetAction] widgets.
  final List<Widget>? actions;

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    final DesignThemeData theme = DesignTheme.of(context);
    final AlertStyle style = widget.style ?? AlertStyle.fromTheme(theme);

    final effectiveStyle = style.resolve(
      {},
      widget.kind,
      widget.variant,
      WidgetSize.medium,
      theme,
    );

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
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
      child: GappedRow(
        gap: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.icon != null)
            IconTheme(
              data: IconThemeData(
                color: effectiveStyle.foregroundColor,
                size: 18,
              ),
              child: widget.icon!,
            ),
          Expanded(
            child: GappedColumn(
              gap: 4,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.title != null)
                  DefaultTextStyle(
                    style: effectiveStyle.textStyle.copyWith(
                      color: effectiveStyle.foregroundColor,
                      fontWeight: FontWeight.w600,
                    ),
                    child: widget.title!,
                  ),
                if (widget.message != null)
                  DefaultTextStyle(
                    style: effectiveStyle.textStyle.copyWith(
                      color: effectiveStyle.foregroundColor,
                    ),
                    child: widget.message!,
                  ),
                if ((widget.actions ?? []).isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: GappedRow(gap: 8, children: widget.actions!),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
