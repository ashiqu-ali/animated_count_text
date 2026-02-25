import 'package:flutter/material.dart';
import 'animated_count_state.dart';

/// A lightweight animated number text widget.
///
/// Automatically animates between the previous and new [value]
/// whenever the value changes.
///
/// Supports:
/// • Integers and doubles
/// • Decimal precision control
/// • Optional prefix (₹, $, €, etc.)
/// • Optional suffix (%, pts, kg, etc.)
/// • Custom animation duration and curve
/// • Custom text styling and alignment
///
/// Example:
/// ```dart
/// AnimatedCount(
///   value: 1200,
/// )
/// ```
///
/// Currency example:
/// ```dart
/// AnimatedCount(
///   value: 2500,
///   prefix: "₹ ",
/// )
/// ```
///
/// Decimal example:
/// ```dart
/// AnimatedCount(
///   value: 12.3456,
///   fractionDigits: 2,
/// )
/// ```
class AnimatedCount extends ImplicitlyAnimatedWidget {
  /// Creates an animated numeric text widget.
  ///
  /// The [value] must not be null.
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
  final num value;

  /// Text style applied to the text.
  final TextStyle? style;

  /// Number of decimal places to display.
  ///
  /// Defaults to `0`.
  final int fractionDigits;

  /// Optional text displayed before the number.
  ///
  /// Example: `"₹ "` or `"$ "`
  final String? prefix;

  /// Optional text displayed after the number.
  ///
  /// Example: `"%"` or `" pts"`
  final String? suffix;

  /// Horizontal alignment of the text.
  final TextAlign? textAlign;

  @override
  AnimatedWidgetBaseState<AnimatedCount> createState() => AnimatedCountState();
}
