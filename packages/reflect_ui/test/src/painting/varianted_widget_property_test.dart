import 'package:flutter_test/flutter_test.dart';
import 'package:reflect_ui/src/core/colors.dart';
import 'package:reflect_ui/src/core/widget_variant.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';

enum MockWidgetVariant with WidgetVariant {
  filled,
  tinted,
  outlined,
  muted,
  cleared,
}

void main() {
  group('VariantedWidgetProperty', () {
    test('should return the correct color value for the given WidgetVariant',
        () async {
      const property = VariantedWidgetProperty(
        filled: Colors.indigo,
        tinted: Colors.gray,
        outlined: Colors.green,
        muted: Colors.red,
        cleared: Colors.yellow,
      );
      final filledValue = property.varianted(
        MockWidgetVariant.filled,
        {},
        null,
      );
      expect(filledValue, Colors.indigo);
      final tintedValue = property.varianted(
        MockWidgetVariant.tinted,
        {},
        null,
      );
      expect(tintedValue, Colors.gray);
      final outlinedValue = property.varianted(
        MockWidgetVariant.outlined,
        {},
        null,
      );
      expect(outlinedValue, Colors.green);
      final mutedValue = property.varianted(
        MockWidgetVariant.muted,
        {},
        null,
      );
      expect(mutedValue, Colors.red);
      final clearedValue = property.varianted(
        MockWidgetVariant.cleared,
        {},
        null,
      );
      expect(clearedValue, Colors.yellow);
    });
  });
}
