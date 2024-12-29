enum NamedWidgetKind {
  primary,
  secondary,
  success,
  danger,
  warning,
  info,
}

/// The kind of a widget.
mixin WidgetKind on Enum {
  NamedWidgetKind get namedKind =>
      NamedWidgetKind.values.where((e) => e.name == name).first;
}
