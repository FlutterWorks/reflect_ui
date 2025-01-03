import 'package:reflect_ui/reflect_ui.dart';
import 'package:storybook_dart/annotations.dart' as storybook;
import 'package:storybook_dart/storybook_dart.dart';

part 'design_theme_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/DesignTheme',
  argTypes: [
    storybook.ArgType('label'),
  ],
)
class DesignThemeMeta extends Meta with _$DesignThemeMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return StatefulBuilder(
      builder: (context, setState) {
        final colorScheme = DesignTheme.of(context).colorScheme;

        return SizedBox(
          width: 640,
          child: Wrap(
            children: [
              ColoredBox(
                color: colorScheme.primary,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text('Primary'),
                ),
              ),
              ColoredBox(
                color: colorScheme.secondary,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text('Secondary'),
                ),
              ),
              ColoredBox(
                color: colorScheme.tertiary,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text('Tertiary'),
                ),
              ),
              ColoredBox(
                color: colorScheme.success,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text('Success'),
                ),
              ),
              ColoredBox(
                color: colorScheme.warning,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text('Warning'),
                ),
              ),
              ColoredBox(
                color: colorScheme.info,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text('Info'),
                ),
              ),
              ColoredBox(
                color: colorScheme.danger,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text('Danger'),
                ),
              ),
              ColoredBox(
                color: colorScheme.surface,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text('Surface'),
                ),
              ),
              ColoredBox(
                color: colorScheme.onSurface,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text('On Surface'),
                ),
              ),
              ColoredBox(
                color: colorScheme.surfaceContainer,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text('Surface Container'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

@storybook.Story('Default')
class DesignThemeDefaultStory extends StoryObj<DesignThemeMeta>
    with _$DesignThemeDefaultStory {}
