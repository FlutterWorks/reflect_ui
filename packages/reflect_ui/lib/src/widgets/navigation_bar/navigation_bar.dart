import 'package:flutter/material.dart' show AppBar;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';

class NavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationBar({
    super.key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
  });

  /// The leading widget of the navigation bar.
  final Widget? leading;

  /// Whether to automatically imply the leading widget.
  final bool automaticallyImplyLeading;

  /// The title widget of the navigation bar.
  final Widget? title;

  /// The actions widget of the navigation bar.
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final DesignThemeData theme = DesignTheme.of(context);
    return AppBar(
      leading: leading,
      backgroundColor: theme.colorScheme.surfaceContainer,
      surfaceTintColor: theme.colorScheme.onSurfaceContainer,
      title: title != null
          ? DefaultTextStyle(
              style: theme.typography.titleLarge.copyWith(
                color: theme.colorScheme.onSurfaceContainer,
              ),
              child: title!,
            )
          : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54);
}
