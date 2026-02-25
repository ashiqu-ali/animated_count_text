import 'package:flutter/material.dart';
import 'animated_count_state.dart';

/// A smooth animated number text widget.
///
/// This widget implicitly animates between the previous and new [value]
/// whenever the value changes.
///
/// It supports:
/// - Integer and double values
/// - Decimal precision control
/// - Optional prefix (e.g., ₹, $, €)
/// - Optional suffix (e.g., %, pts)
/// - Custom text alignment
///
/// Example – Basic:
/// ```dart
/// AnimatedCount(
///   value: 1200,
/// )
/// ```
///
/// Example – Currency:
/// ```dart
/// AnimatedCount(
///   value: 2500,
///   prefix: "₹ ",
///   fractionDigits: 0,
/// )
/// ```
///
/// Example – Percentage:
/// ```dart
/// AnimatedCount(
///   value: 87.5,
///   suffix: "%",
///   fractionDigits: 1,
/// )
/// ```
class AnimatedCount extends ImplicitlyAnimatedWidget {
  /// Creates an animated numeric text widget.
  ///
  /// The [value] parameter must not be null.
  const AnimatedCount({
    super.key,
    required this.value,
    this.style,
    this.fractionDigits = 0,
    this.prefix,
    this.suffix,
    this.textAlign,
    super.duration = const Duration(milliseconds: 600),
    super.curve = Curves.fastOutSlowIn,
  });

  /// The numeric value to animate to.
  ///
  /// Accepts both [int] and [double].
  /// Internally converted to [double] for animation.
  final num value;

  /// The text style applied to the animated number.
  final TextStyle? style;

  /// Controls the number of decimal digits displayed.
  ///
  /// Defaults to 0 (integer display).
  final int fractionDigits;

  /// Optional text displayed before the animated number.
  ///
  /// Common use cases:
  /// - Currency symbols: `"₹"`, `"$"`
  /// - Custom labels: `"Score: "`
  final String? prefix;

  /// Optional text displayed after the animated number.
  ///
  /// Common use cases:
  /// - Percentage: `"%"`,
  /// - Units: `" pts"`, `" kg"`
  final String? suffix;

  /// How the text should be aligned horizontally.
  final TextAlign? textAlign;

  @override
  AnimatedWidgetBaseState<AnimatedCount> createState() => AnimatedCountState();
}
