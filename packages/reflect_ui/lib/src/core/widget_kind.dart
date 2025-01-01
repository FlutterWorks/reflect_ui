enum NamedKind {
  primary,
  secondary,
  success,
  danger,
  warning,
  info,
}

/// The kind of a widget.
mixin WidgetKind on Enum {
  NamedKind get namedKind =>
      NamedKind.values.where((e) => e.name == name).first;
}
