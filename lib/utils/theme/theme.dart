import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/appbarTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/bottomSheetTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/chipTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/elevatedButtonTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/outlinedButtonTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/textFieldTheme.dart';
import 'package:the_aaliyahs_collection/utils/theme/customThemes/textTheme.dart';

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
