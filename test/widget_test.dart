import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ms_calculator/features/calculators/basic_calculator/screens/tools_screen.dart';

void main() {
  testWidgets('tools screen renders age calculator, bmi calculator and converters', (tester) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 3.0;

    await tester.pumpWidget(
      const MaterialApp(home: ToolsScreen()),
    );
    await tester.pumpAndSettle();

    expect(find.text('Calculators & Converters'), findsOneWidget);
    expect(find.text('Age Calculator'), findsOneWidget);
    expect(find.text('BMI Calculator'), findsOneWidget);
    expect(find.text('Length'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Energy'),
      500.0,
      scrollable: find.byType(Scrollable),
    );
    expect(find.text('Energy'), findsOneWidget);

    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
  });
}
