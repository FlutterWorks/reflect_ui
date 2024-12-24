import 'package:collection/collection.dart';
import 'package:flutter/material.dart'
    show Colors, MaterialApp, SelectableText, Theme;
import 'package:preview_app/storybook_config.g.dart';
import 'package:reflect_ui/reflect_ui.dart';
import 'package:storybook_dart/annotations.dart' as storybook;
import 'package:storybook_dart/storybook_dart.dart';

part 'storybook_preview_app.g.dart';

class _HomePage extends StatefulWidget {
  const _HomePage({
    required this.config,
  });

  final StorybookConfig config;

  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  Brightness _brightness = Brightness.light;
  bool _useCompactTheme = true;

  String _selectedStoryId = '';

  Widget _buildBodyWithSingleStory(
    BuildContext context, {
    required String storyId,
  }) {
    final story =
        widget.config.stories.firstWhereOrNull((e) => e.id == storyId);
    return ColoredBox(
      color: Colors.white,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints(maxWidth: 1440),
          child: Builder(
            builder: (context) {
              if (story == null) {
                return const Text('Not found');
              }
              return story.build(context, []);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 240,
            child: ListView.separated(
              itemCount: widget.config.stories.length,
              itemBuilder: (context, index) {
                final story = widget.config.stories[index];
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    setState(() {
                      _selectedStoryId = story.id;
                    });
                  },
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedStoryId == story.id
                            ? Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.1)
                            : null,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(story.meta.title),
                          SelectableText(story.name),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(height: 1);
              },
            ),
          ),
          const Divider(),
          Expanded(
            child: _buildBodyWithSingleStory(
              context,
              storyId: _selectedStoryId,
            ),
          ),
        ],
      ),
    );
  }

  Widget _build(BuildContext context) {
    final storyId = Uri.base.queryParameters['id'];

    return Scaffold(
      body: storyId != null
          ? _buildBodyWithSingleStory(context, storyId: storyId)
          : _buildBody(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeData = _useCompactTheme
        ? DesignThemeData.lightCompact()
        : DesignThemeData.light();
    return DefaultTextStyle(
      style: (themeData.typography.bodyMedium),
      child: DefaultSelectionStyle(
        cursorColor: themeData.colors.primary,
        selectionColor: themeData.colors.primary.withShade(100),
        child: DesignTheme(
          data: themeData,
          child: Stack(
            children: [
              _build(context),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.red,
                  width: 240,
                  height: 100,
                  child: Row(
                    children: [
                      for (final brightness in [
                        Brightness.light,
                        Brightness.dark,
                      ])
                        Radio<Brightness>(
                          value: brightness,
                          groupValue: _brightness,
                          onChanged: (value) {
                            setState(() {
                              _brightness = value!;
                            });
                          },
                        ),
                      Switch(
                        value: _useCompactTheme,
                        onChanged: (value) {
                          setState(() {
                            _useCompactTheme = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@storybook.StorybookPreviewer()
class StorybookPreviewApp extends StorybookPreviewer
    with _$StorybookPreviewApp {
  const StorybookPreviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StorybookPreviewer',
      theme: theme,
      home: _HomePage(config: config),
    );
  }
}
