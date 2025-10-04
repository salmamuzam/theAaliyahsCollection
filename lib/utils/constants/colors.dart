import 'package:flutter/material.dart';

/// AaliyahColors is a collection of all colors used in the app.
/// Using this class helps keep colors consistent and easy to change.
class AaliyahColors {
  // Private constructor so this class cannot be instantiated
  AaliyahColors._();

  // =========================
  // App Main Colors
  // =========================
  static const Color primary = Color(0xFF02333A);   // main app color
  static const Color secondary = Color(0xFFF2F3F6); // secondary background color
  static const Color accent = Color(0xFFEABB9A);    // accent color for highlights

  // =========================
  // Gradient Colors
  // =========================
  static const LinearGradient linearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF004D40),
      Color(0xFF00695C),
      Color(0xFF00897B),
      Color(0xFF26A69A),
      Color(0xFF80CBC4),
    ],
    // Gradient from dark green to light teal
  );

  // =========================
  // Text Colors
  // =========================
  static const Color textPrimary = Color(0xFF0A3D44);   // main text color
  static const Color textSecondary = Color(0xFF5C6B6E); // secondary text
  static const Color textWhite = Colors.white;          // white text

  // =========================
  // Background Colors
  // =========================
  static const Color light = Color(0xFFFFFFFF);         // light mode background
  static const Color dark = Color(0xFF121212);          // dark mode background
  static const Color primaryBackground = Color(0xFFF2F3F6); // default screen background

  // =========================
  // Container Backgrounds
  // =========================
  static const Color lightContainer = Color(0xFFE9ECEF); // for cards or panels in light mode
  static const Color darkContainer = Color(0xFF1A2B2F);  // for cards or panels in dark mode

  // =========================
  // Button Colors
  // =========================
  static const Color buttonPrimary = Color(0xFF02333A);   // primary action button
  static const Color buttonSecondary = Color(0xFFEABB9A); // secondary action button
  static const Color buttonDisabled = Color(0xFFB0B0B0);  // disabled button

  // =========================
  // Border Colors
  // =========================
  static const Color borderPrimary = Color(0xFFCED4DA);
  static const Color borderSecondary = Color(0xFFADB5BD);

  // =========================
  // Status / Validation Colors
  // =========================
  static const Color error = Color(0xFFE53935);   // errors, warnings
  static const Color success = Color(0xFF43A047); // success messages
  static const Color warning = Color(0xFFFFA000); // warning messages
  static const Color info = Color(0xFF1E88E5);    // informational messages

  // =========================
  // Neutral / Grey Shades
  // =========================
  static const Color black = Color(0xFF000000);
  static const Color darkerGrey = Color(0xFF495057);
  static const Color darkGrey = Color(0xFF6C757D);
  static const Color grey = Color(0xFFADB5BD);
  static const Color lightGrey = Color(0xFFCED4DA);
  static const Color softGrey = Color(0xFFE9ECEF);
  static const Color white = Colors.white;
}
