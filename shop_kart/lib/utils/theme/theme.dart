import 'package:flutter/material.dart';
import 'package:shop_kart/utils/theme/custom_themes/chip_theme.dart';


import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/check_box_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outline_button_theme.dart';
import 'custom_themes/text_feild_theme.dart';
import 'custom_themes/text_theme.dart';




class SkAppTheme{
  SkAppTheme._();

//light
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.black,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: SkChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: SkAppBarTheme.lightAppBarTheme,
    checkboxTheme: SkCheckboxTheme.lightCheckBoxTheme,
    bottomSheetTheme: SkBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SkElevatedButtonTheme.lightElevatedTheme,
    outlinedButtonTheme: SkOutLineButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme:SkTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: SkChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: SkAppBarTheme.darkAppBarTheme,
    checkboxTheme: SkCheckboxTheme.darkCheckBoxTheme,
    bottomSheetTheme: SkBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SkElevatedButtonTheme.darkElevatedTheme,
    outlinedButtonTheme: SkOutLineButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme:SkTextFormFieldTheme.darkInputDecorationTheme,
  );
}