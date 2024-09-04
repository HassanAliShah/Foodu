

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';

class HElevatedButtonTheme{
  HElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: TSizes.buttonElevation,
      foregroundColor: Colors.white,
      backgroundColor: TColors.buttonPrimary,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side:  const BorderSide(color:TColors.buttonPrimary),
      padding: const EdgeInsets.symmetric(vertical:  14,horizontal: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      textStyle:  const TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.w700)
    )
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side:  const BorderSide(color:Colors.blue),
          padding: const EdgeInsets.symmetric(vertical:  18),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          textStyle:  const TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600)
      )
  );
}