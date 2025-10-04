import 'package:flutter/material.dart';

/// AaliyahOutlinedButtonTheme defines consistent styles for all OutlinedButtons.
/// Separate themes are provided for light and dark modes.
class AaliyahOutlinedButtonTheme {
  // Private constructor to prevent creating instances
  AaliyahOutlinedButtonTheme._();

  // =========================
  // Light Mode OutlinedButton Theme
  // =========================
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0, // removes shadow
      foregroundColor: Colors.black, // text color
      side: const BorderSide(color: Colors.teal), // border color
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20), // spacing inside button
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14), // rounded corners
      ),
    ),
  );

  // =========================
  // Dark Mode OutlinedButton Theme
  // =========================
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white, // text color
      side: const BorderSide(color: Colors.tealAccent), // border color for dark mode
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
}
