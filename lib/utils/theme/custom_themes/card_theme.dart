

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class HCardTheme{
  HCardTheme._();

  static  CardTheme lightCardTheme =  CardTheme(
    surfaceTintColor: TColors.backgroundLight,
    color: TColors.backgroundLight,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
    elevation: 2.0,
  );
}