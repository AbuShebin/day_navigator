import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:day_navigator/day_navigator.dart';

void main() {
  testWidgets('DayNavigator renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DayNavigator(
            initialDate: DateTime.now(),
            onDateChanged: (_) {},
          ),
        ),
      ),
    );

    expect(find.byType(DayNavigator), findsOneWidget);
  });
}
