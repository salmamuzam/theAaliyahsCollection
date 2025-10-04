import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/appbarTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/bottomSheetTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/chipTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/elevatedButtonTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/outlinedButtonTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/textFieldTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/textTheme.dart';

/// AaliyahAppTheme combines all custom theme components
/// to provide a full light and dark theme for the app.
class AaliyahAppTheme {
  // Private constructor to prevent creating instances
  AaliyahAppTheme._();

  // =========================
  // Light Theme
  // =========================
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,                     // enable Material 3 styling
    fontFamily: 'Poppins',                  // app-wide font
    brightness: Brightness.light,           // light mode
    primaryColor: Colors.teal,              // main app color
    scaffoldBackgroundColor: Colors.white,  // background color of screens
    textTheme: AaliyahTextTheme.lightTextTheme,        // text styles
    chipTheme: AaliyahChipTheme.lightChipTheme,       // chip styles
    appBarTheme: AaliyahAppBarTheme.lightAppBarTheme, // AppBar styles
    bottomSheetTheme: AaliyahBottomSheetTheme.lightBottomSheetTheme, // BottomSheet
    outlinedButtonTheme: AaliyahOutlinedButtonTheme.lightOutlinedButtonTheme, // OutlinedButtons
    inputDecorationTheme: AaliyahTextFormFieldTheme.lightInputDecorationTheme, // TextFields
    elevatedButtonTheme: AaliyahElevatedButtonTheme.lightElevatedButtonTheme, // ElevatedButtons
  );

  // =========================
  // Dark Theme
  // =========================
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,            // dark mode
    primaryColor: Colors.teal,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AaliyahTextTheme.darkTextTheme,
    chipTheme: AaliyahChipTheme.darkChipTheme,
    appBarTheme: AaliyahAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: AaliyahBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: AaliyahOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AaliyahTextFormFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: AaliyahElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
