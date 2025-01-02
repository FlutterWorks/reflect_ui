import 'package:flutter/material.dart' show Scaffold;
import 'package:flutter/widgets.dart';
import 'package:reflect_ui/src/widgets/design_theme/design_theme.dart';

class PageScaffold extends StatelessWidget {
  const PageScaffold({
    super.key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
  });

  final PreferredSizeWidget? appBar;

  final Widget? body;

  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    final DesignThemeData theme = DesignTheme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
