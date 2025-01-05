import 'package:flutter_test/flutter_test.dart';
import 'package:reflect_ui/src/core/colors.dart';
import 'package:reflect_ui/src/core/widget_kind.dart';
import 'package:reflect_ui/src/painting/widget_property.dart';

enum MockWidgetKind with WidgetKind {
  primary,
  secondary,
  success,
  danger,
  warning,
  info,
}

void main() {
  group('KindedWidgetProperty', () {
    test('should return the correct color for the given WidgetKind', () async {
      const property = KindedWidgetProperty(
        primary: Colors.indigo,
        secondary: Colors.gray,
        success: Colors.green,
        danger: Colors.red,
        warning: Colors.yellow,
        info: Colors.blue,
      );
      final primaryColor = property.kinded(MockWidgetKind.primary);
      expect(primaryColor, Colors.indigo);
      final secondaryColor = property.kinded(MockWidgetKind.secondary);
      expect(secondaryColor, Colors.gray);
      final successColor = property.kinded(MockWidgetKind.success);
      expect(successColor, Colors.green);
      final dangerColor = property.kinded(MockWidgetKind.danger);
      expect(dangerColor, Colors.red);
      final warningColor = property.kinded(MockWidgetKind.warning);
      expect(warningColor, Colors.yellow);
      final infoColor = property.kinded(MockWidgetKind.info);
      expect(infoColor, Colors.blue);
    });
  });
}
