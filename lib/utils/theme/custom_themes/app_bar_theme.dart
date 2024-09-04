import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

import '../../constants/sizes.dart';

class HAppBarTheme {
  HAppBarTheme._();

  static AppBarTheme lightAppBarTheme = const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: TColors.backgroundDark, size: TSizes.iconMd),
    actionsIconTheme: IconThemeData(color: TColors.backgroundDark, size: TSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: TColors.textblack, fontFamily: 'Urbanist'),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: TColors.backgroundDark,
    surfaceTintColor: TColors.backgroundDark,
    iconTheme: IconThemeData(color: Colors.white, size: TSizes.iconMd),
    actionsIconTheme: IconThemeData(color: Colors.white, size: TSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'Urbanist'),
  );
}
