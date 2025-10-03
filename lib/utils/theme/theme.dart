import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/utils/theme/custom_themes/appbar_theme.dart';
import 'package:the_aaliyahs_collection/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:the_aaliyahs_collection/utils/theme/custom_themes/chip_theme.dart';
import 'package:the_aaliyahs_collection/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:the_aaliyahs_collection/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:the_aaliyahs_collection/utils/theme/custom_themes/text_field_theme.dart';
import 'package:the_aaliyahs_collection/utils/theme/custom_themes/text_theme.dart';

class AaliyahAppTheme {
  // Private constructor

  AaliyahAppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.teal,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AaliyahTextTheme.lightTextTheme,
    chipTheme: AaliyahChipTheme.lightChipTheme,
    appBarTheme: AaliyahAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AaliyahBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: AaliyahOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AaliyahTextFormFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: AaliyahElevatedButtonTheme.lightElevatedButtonTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
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
