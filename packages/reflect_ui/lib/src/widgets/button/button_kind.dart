import 'package:reflect_ui/src/core/widget_kind.dart';

/// The kind of a button.
enum ButtonKind with WidgetKind {
  /// A button indicating a primary action.
  primary,

  /// A button indicating a secondary action.
  secondary,

  /// A button indicating a success.
  success,

  /// A button indicating a danger.
  danger,

  /// A button indicating a warning.
  warning,

  /// A button indicating an info.
  info,
}
