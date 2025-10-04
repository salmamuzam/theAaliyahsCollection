import 'package:flutter/material.dart';

/// AaliyahAppBarTheme defines the styling for AppBars in the app.
/// It has separate themes for light mode and dark mode.
class AaliyahAppBarTheme {
  // Private constructor to prevent instantiation
  AaliyahAppBarTheme._();

  // =========================
  // Light Mode AppBar Theme
  // =========================
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,                   // removes shadow
    centerTitle: false,             // title aligned to start (left)
    scrolledUnderElevation: 0,      // no shadow when scrolling under
    backgroundColor: Colors.transparent, // transparent background
    surfaceTintColor: Colors.transparent, // no tint effect
    iconTheme: IconThemeData(
      color: Colors.black,          // icon color
      size: 24,                     // icon size
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,          // action icons color
      size: 24,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,          // title text color
    ),
  );

  // =========================
  // Dark Mode AppBar Theme
  // =========================
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.black,          // icon color (can be adjusted if needed)
      size: 24,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,          // action icons color in dark mode
      size: 24,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,          // title text color in dark mode
    ),
  );
}
