class NumberUtils {
  const NumberUtils._();

  /// Parses English digits and optional comma grouping into a number.
  static double parse(String input) {
    return double.tryParse(input.trim().replaceAll(',', '')) ?? 0.0;
  }
}
