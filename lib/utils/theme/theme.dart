import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:foodu/utils/theme/custom_themes/card_theme.dart';
import 'package:foodu/utils/theme/custom_themes/checkBox_theme.dart';
import 'package:foodu/utils/theme/custom_themes/chip_theme.dart';
import 'package:foodu/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:foodu/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:foodu/utils/theme/custom_themes/tab_bar_theme.dart';
import 'package:foodu/utils/theme/custom_themes/text_field_theme.dart';
import 'package:foodu/utils/theme/custom_themes/text_theme.dart';

class HAppTheme {
  HAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Urbanist',
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.backgroundLight,
    textTheme: HTextTheme.lightTextTheme,
    checkboxTheme: HCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: HChipTheme.lightChipTheme,
    appBarTheme: HAppBarTheme.lightAppBarTheme,
    cardTheme: HCardTheme.lightCardTheme,
    outlinedButtonTheme: HOutlineButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: HElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: HTextFormFieldTheme.lightInputDecorationTheme,
    tabBarTheme: HTabBarTheme.lightTabBarTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Urbanist',
    disabledColor: TColors.borderGrey,
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    textTheme: HTextTheme.darkTextTheme,
    chipTheme: HChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: HAppBarTheme.darkAppBarTheme,
    checkboxTheme: HCheckBoxTheme.darkCheckBoxTheme,
    elevatedButtonTheme: HElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: HOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: HTextFormFieldTheme.darkInputDecorationTheme,
  );
}
