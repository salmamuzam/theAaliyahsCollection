import 'package:flutter/material.dart';

/// AaliyahElevatedButtonTheme defines consistent styles for all ElevatedButtons.
/// Separate themes are provided for light and dark modes.
class AaliyahElevatedButtonTheme {
  // Private constructor to prevent creating instances
  AaliyahElevatedButtonTheme._();

  // =========================
  // Light Theme ElevatedButton
  // =========================
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0, // removes shadow
      foregroundColor: Colors.white, // text color
      backgroundColor: Colors.teal,  // button background color
      disabledForegroundColor: Colors.grey, // text color when disabled
      disabledBackgroundColor: Colors.grey, // background color when disabled
      side: const BorderSide(color: Colors.teal), // border color
      padding: const EdgeInsets.symmetric(vertical: 18), // vertical padding
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // rounded corners
      ),
    ),
  );

  // =========================
  // Dark Theme ElevatedButton
  // =========================
  static final ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.teal,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.teal),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
