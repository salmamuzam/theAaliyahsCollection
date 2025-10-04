import 'package:flutter/material.dart';

/// AaliyahHelperFunctions contains small helper functions
/// that are used across the app to make code cleaner.
class AaliyahHelperFunctions {

  /// Navigate to another screen without replacing the current screen.
  /// 
  /// [context] -> the current BuildContext
  /// [screen] -> the widget screen to navigate to
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  /// Check if the app is currently in dark mode.
  /// Returns true if the app theme brightness is dark.
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
