import 'package:animated_count_text/animated_count_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AnimatedCount Widget Tests', () {
    testWidgets('Displays initial integer value', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: AnimatedCount(value: 100))),
      );

      expect(find.text('100'), findsOneWidget);
    });

    testWidgets('Displays prefix correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: AnimatedCount(value: 250, prefix: '₹ ')),
        ),
      );

      expect(find.text('₹ 250'), findsOneWidget);
    });

    testWidgets('Displays decimal values with fractionDigits', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: AnimatedCount(value: 99.75, fractionDigits: 2)),
        ),
      );

      expect(find.text('99.75'), findsOneWidget);
    });

    testWidgets('Animates when value changes', (WidgetTester tester) async {
      double value = 0;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  children: [
                    AnimatedCount(
                      value: value,
                      duration: const Duration(milliseconds: 800),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          value = 500;
                        });
                      },
                      child: const Text('Update'),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      );

      // Initial state
      expect(find.text('0'), findsOneWidget);

      // Trigger update
      await tester.tap(find.text('Update'));
      await tester.pump(); // start animation

      // Wait for animation to finish
      await tester.pump(const Duration(milliseconds: 800));

      expect(find.text('500'), findsOneWidget);
    });

    testWidgets('Handles negative values correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: AnimatedCount(value: -150))),
      );

      expect(find.text('-150'), findsOneWidget);
    });
  });
}
