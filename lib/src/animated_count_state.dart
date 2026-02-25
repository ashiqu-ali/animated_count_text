import 'package:flutter/material.dart';
import 'animation_engine.dart';
import 'number_formatter.dart';
import 'animated_count_widget.dart';

/// Internal state class for [AnimatedCount].
///
/// This class manages:
/// - Tween lifecycle
/// - Animation evaluation
/// - Formatting of the animated value
class AnimatedCountState extends AnimatedWidgetBaseState<AnimatedCount> {
  /// Tween used to animate between old and new values.
  Tween<double>? _valueTween;

  @override
  Widget build(BuildContext context) {
    final double evaluatedValue = AnimationEngine.evaluate(
      _valueTween,
      animation,
      widget.value,
    );

    final String formatted = NumberFormatter.format(
      evaluatedValue,
      widget.fractionDigits,
      prefix: widget.prefix,
      suffix: widget.suffix,
    );

    return Text(formatted, style: widget.style, textAlign: widget.textAlign);
  }

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _valueTween =
        visitor(
              _valueTween,
              widget.value.toDouble(),
              (dynamic value) => Tween<double>(begin: value as double),
            )
            as Tween<double>?;
  }
}
