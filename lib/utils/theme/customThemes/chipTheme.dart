import 'package:flutter/material.dart';

/// AaliyahChipTheme defines consistent styles for Chip widgets in the app.
/// Separate themes are provided for light and dark modes.
class AaliyahChipTheme {
  // Private constructor to prevent creating instances
  AaliyahChipTheme._();

  // =========================
  // Light Mode Chip Theme
  // =========================
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey,          // color when chip is disabled
    labelStyle: const TextStyle(color: Colors.black), // text color
    selectedColor: Colors.teal,          // color when chip is selected
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12), // spacing inside chip
    checkmarkColor: Colors.white,        // color of checkmark when chip is selected
  );

  // =========================
  // Dark Mode Chip Theme
  // =========================
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: Colors.teal,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
