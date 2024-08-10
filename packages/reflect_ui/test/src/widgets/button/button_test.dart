import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reflect_ui/src/widgets/button/button.dart';

void main() {
  testWidgets('Button', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Button(
          child: const Text('Button'),
          onPressed: () {},
        ),
      ),
    );
    expect(find.text('Button'), findsOneWidget);
  });
}
