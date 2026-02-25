import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:animated_count_text/animated_count_text.dart';

void main() {
  group('AnimatedCount Widget Tests', () {
    testWidgets('Displays initial integer value', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: AnimatedCount(value: 100))),
      );

      expect(find.text('100'), findsOneWidget);
    });

    testWidgets('Displays prefix and suffix correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AnimatedCount(value: 50, prefix: '₹', suffix: '%'),
          ),
        ),
      );

      expect(find.text('₹50%'), findsOneWidget);
    });

    testWidgets('Displays decimal value correctly', (
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
                    AnimatedCount(value: value),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          value = 200;
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

      // Initial value
      expect(find.text('0'), findsOneWidget);

      // Tap button
      await tester.tap(find.text('Update'));
      await tester.pump(); // Start animation

      // Wait for animation to complete
      await tester.pump(const Duration(milliseconds: 600));

      expect(find.text('200'), findsOneWidget);
    });
  });
}
