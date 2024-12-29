enum NamedWidgetVariant {
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

  /// The subtle variant of a widget.
  ///
  /// A subtle widget has a background color that is a lighter shade of the primary color.
  subtle,

  /// The transparent variant of a widget.
  ///
  /// A transparent widget has a background color that is transparent.
  transparent
}

/// The variant of a widget.
mixin WidgetVariant on Enum {
  NamedWidgetVariant get namedVariant =>
      NamedWidgetVariant.values.where((e) => e.name == name).first;
}
