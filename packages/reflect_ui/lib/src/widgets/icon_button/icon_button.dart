import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reflect_ui/src/core/widget_variant.dart';
import 'package:reflect_ui/src/widgets/button/button.dart';
import 'package:collection/collection.dart';

enum IconButtonVariant with WidgetVariant {
  filled,
  tinted,
  outlined,
  subtle,
  plain,
}

class IconButton extends Button {
  IconButton(
    IconData icon, {
    super.key,
    Function(BuildContext? context, IconData icon)? iconBuilder,
    Color? iconColor,
    double? iconSize,
    super.style,
    IconButtonVariant? variant,
    super.kind,
    super.color,
    super.focusNode,
    super.onFocusChange,
    super.autofocus = false,
    required super.onPressed,
  }) : super(
          child: iconBuilder != null
              ? iconBuilder(null, icon)
              : Icon(
                  icon,
                  size: iconSize ?? 22,
                  color: iconColor,
                ),
          variant: ButtonVariant.values.firstWhereOrNull(
            (e) => e.namedVariant == variant?.namedVariant,
          ),
        );
}
