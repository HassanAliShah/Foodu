

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:foodu/utils/theme/custom_themes/checkBox_theme.dart';
import 'package:foodu/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:foodu/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:foodu/utils/theme/custom_themes/text_field_theme.dart';
import 'package:foodu/utils/theme/custom_themes/text_theme.dart';
import 'package:foodu/utils/theme/custom_themes/chip_theme.dart';

class HAppTheme{
  HAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Urbanist',
    brightness: Brightness.light,
      primaryColor: HColors.primary,
    scaffoldBackgroundColor: HColors.backgroundLight,
    textTheme: HTextTheme.lightTextTheme,
    checkboxTheme: HCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: HChipTheme.lightChipTheme,
    appBarTheme: HAppBarTheme.lightAppBarTheme,
    outlinedButtonTheme: HOutlineButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: HElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: HTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Urbanist',
    brightness: Brightness.dark,
      primaryColor: HColors.primary,
      scaffoldBackgroundColor: HColors.backgroundLight,
      textTheme: HTextTheme.darkTextTheme,
      checkboxTheme: HCheckBoxTheme.darkCheckBoxTheme,
      chipTheme: HChipTheme.darkChipTheme,
      outlinedButtonTheme: HOutlineButtonTheme.darkOutlineButtonTheme,
      elevatedButtonTheme: HElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: HTextFormFieldTheme.darkInputDecorationTheme
  );
}
