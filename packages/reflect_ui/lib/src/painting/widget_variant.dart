/// The variant of a widget.
mixin WidgetVariant on Enum {
  /// The filled variant of a widget.
  ///
  /// A filled widget has a solid background color.
  static const String filled = 'filled';

  /// The tinted variant of a widget.
  ///
  /// A tinted widget has a background color that is a shade of the primary color.
  static const String tinted = 'tinted';

  /// The outlined variant of a widget.
  ///
  /// An outlined widget has a border around the widget.
  static const String outlined = 'outlined';

  /// The subtle variant of a widget.
  ///
  /// A subtle widget has a background color that is a lighter shade of the primary color.
  static const String subtle = 'subtle';

  /// The transparent variant of a widget.
  ///
  /// A transparent widget has a background color that is transparent.
  static const String transparent = 'transparent';
}
