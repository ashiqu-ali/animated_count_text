/// Extension that provides safe number parsing methods for String.
extension StringNumberParsing on String {
  /// Safely converts the string to an integer.
  /// Returns 0 if parsing fails.
  int toInt() {
    return int.tryParse(trim()) ?? 0;
  }

  /// Safely converts the string to a double.
  /// Returns 0.0 if parsing fails.
  double toDouble() {
    return double.tryParse(trim()) ?? 0.0;
  }
}
