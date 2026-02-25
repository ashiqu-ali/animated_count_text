import 'package:animated_count_text/animated_count_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimatedCountExampleApp());
}

class AnimatedCountExampleApp extends StatelessWidget {
  const AnimatedCountExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedCountExamplePage(),
    );
  }
}

class AnimatedCountExamplePage extends StatefulWidget {
  const AnimatedCountExamplePage({super.key});

  @override
  State<AnimatedCountExamplePage> createState() =>
      _AnimatedCountExamplePageState();
}

class _AnimatedCountExamplePageState extends State<AnimatedCountExamplePage> {
  double _value = 0;

  void _increase() {
    setState(() {
      _value += 250;
    });
  }

  void _decrease() {
    setState(() {
      _value -= 150;
    });
  }

  void _reset() {
    setState(() {
      _value = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Count Example")),
      body: Center(
        child: AnimatedCount(
          value: _value,
          prefix: "₹ ",
          fractionDigits: 0,
          duration: const Duration(milliseconds: 800),
          style: const TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: _increase, child: const Text("+250")),
            ElevatedButton(onPressed: _decrease, child: const Text("-150")),
            ElevatedButton(onPressed: _reset, child: const Text("Reset")),
          ],
        ),
      ),
    );
  }
}
