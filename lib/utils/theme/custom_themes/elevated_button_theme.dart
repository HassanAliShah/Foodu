

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class HElevatedButtonTheme{
  HElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: HSizes.buttonElevation,
      foregroundColor: Colors.white,
      backgroundColor: HColors.buttonPrimary,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side:  const BorderSide(color:HColors.buttonPrimary),
      padding: const EdgeInsets.symmetric(vertical:  14),
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