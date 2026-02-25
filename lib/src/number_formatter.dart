/// Internal number formatting utility.
///
/// Responsible for:
/// - Decimal precision formatting
/// - Prefix attachment
/// - Suffix attachment
class NumberFormatter {
  /// Formats the animated numeric value.
  ///
  /// [value] is the evaluated animation value.
  /// [fractionDigits] controls decimal precision.
  ///
  /// Optional:
  /// - [prefix] is placed before the number.
  /// - [suffix] is placed after the number.
  ///
  /// Example:
  /// ```dart
  /// NumberFormatter.format(
  ///   2500,
  ///   0,
  ///   prefix: "₹ ",
  /// );
  /// ```
  static String format(
    double value,
    int fractionDigits, {
    String? prefix,
    String? suffix,
  }) {
    final formatted = value.toStringAsFixed(fractionDigits);

    return '${prefix ?? ''}$formatted${suffix ?? ''}';
  }
}
