enum NamedVariant {
  /// The filled variant of a widget.
  ///
  /// A filled widget has a solid background color.
  filled,

  /// The tinted variant of a widget.
  ///
  /// A tinted widget has a background color that is a shade of the primary color.
  tinted,

  /// The outlined variant of a widget.
  ///
  /// An outlined widget has a border around the widget.
  outlined,

  /// The muted variant of a widget.
  ///
  /// A muted widget has a background color that is a lighter shade of the primary color.
  muted,

  /// The cleared variant of a widget.
  ///
  /// A cleared widget without background and border.
  cleared,
}

/// The variant of a widget.
mixin WidgetVariant on Enum {
  NamedVariant get namedVariant =>
      NamedVariant.values.where((e) => e.name == name).first;
}
