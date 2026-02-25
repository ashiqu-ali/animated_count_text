import 'package:flutter/material.dart';

/// Internal animation utility.
///
/// Responsible for safely evaluating the tween value.
/// Falls back to the raw value if tween is null.
class AnimationEngine {
  /// Evaluates the tween against the current animation.
  ///
  /// If no tween exists, returns the fallback value.
  static double evaluate(
    Tween<double>? tween,
    Animation<double> animation,
    num fallback,
  ) {
    return tween?.evaluate(animation) ?? fallback.toDouble();
  }
}
