import 'package:flutter/material.dart';

/// AaliyahBottomSheetTheme defines consistent styles for BottomSheets in the app.
/// It has separate themes for light and dark modes.
class AaliyahBottomSheetTheme {
  // Private constructor to prevent creating instances
  AaliyahBottomSheetTheme._();

  // =========================
  // Light Mode BottomSheet Theme
  // =========================
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true, // show the small handle at the top to indicate draggable
    backgroundColor: Colors.white, // sheet background color
    modalBackgroundColor: Colors.white, // background behind modal
    constraints: const BoxConstraints(minWidth: double.infinity), // sheet width fills the screen
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16), // rounded corners for the sheet
    ),
  );

  // =========================
  // Dark Mode BottomSheet Theme
  // =========================
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black, // dark background
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
