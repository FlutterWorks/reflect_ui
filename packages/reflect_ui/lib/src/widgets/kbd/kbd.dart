import 'package:flutter/material.dart' show TextTheme, Theme;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/widgets/extended_theme/extended_theme.dart';

/// Display keyboard button or keys combination
class Kbd extends StatefulWidget {
  const Kbd(
    this.label, {
    super.key,
  });

  final String label;

  @override
  State<Kbd> createState() => _KbdState();
}

class _KbdState extends State<Kbd> {
  @override
  Widget build(BuildContext context) {
    final ExtendedThemeData themeData = ExtendedTheme.of(context);

    final TextTheme textTheme = Theme.of(context).textTheme;
    final colorScheme = themeData.colorScheme;

    final backgroundColor = colorScheme.surfaceContainer;
    final borderColor = colorScheme.outline;
    final labelColor = colorScheme.onSurface;

    final TextStyle textStyle =
        (textTheme.labelMedium ?? const TextStyle()).copyWith(
      color: labelColor,
      fontWeight: FontWeight.w700,
      fontFamily: 'JetBrains Mono',
      fontFamilyFallback: ['Roboto Mono', 'monospace'],
      fontSize: 12,
    );

    return Container(
      constraints: const BoxConstraints(
        minWidth: 0,
        minHeight: 22,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: BorderDirectional(
          start: BorderSide(
            color: borderColor,
            width: 1,
          ),
          top: BorderSide(
            color: borderColor,
            width: 1,
          ),
          end: BorderSide(
            color: borderColor,
            width: 1,
          ),
          bottom: BorderSide(
            color: borderColor,
            width: 3,
          ),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        child: DefaultTextStyle(
          style: textStyle,
          child: Text(widget.label),
        ),
      ),
    );
  }
}
