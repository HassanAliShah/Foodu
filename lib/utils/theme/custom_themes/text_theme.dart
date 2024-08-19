

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class HTextTheme{

  HTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32.0,fontFamily: 'Urbanist', fontWeight: FontWeight.bold, color: HColors.textPrimary),
    headlineMedium: TextStyle().copyWith(fontSize: 24.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w600, color: HColors.textPrimary),
    headlineSmall: TextStyle().copyWith(fontSize: 18.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w400, color: HColors.backgroundLight),

    titleLarge: TextStyle().copyWith(fontSize: 24.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w600, color:HColors.textblack),
    titleMedium: TextStyle().copyWith(fontSize: 16.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w500, color: HColors.textPrimary),
    titleSmall: TextStyle().copyWith(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w400, color: HColors.textGrey),

    bodyLarge: TextStyle().copyWith(fontSize: 18.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w700, color: HColors.textblack),
    bodyMedium: TextStyle().copyWith(fontSize: 16.0,fontFamily: 'Urbanist', fontWeight: FontWeight.normal, color: HColors.textblack),
    bodySmall: TextStyle().copyWith(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w600, color: HColors.textblack),

    labelSmall: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w400, color: HColors.textGrey),
    labelLarge: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w600, color: HColors.textPrimary),
    labelMedium: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: HColors.textPrimary.withOpacity(0.5)),

    displayLarge: TextStyle(fontSize: 30,fontFamily: 'Luckiest Guy',fontWeight: FontWeight.w400,color: HColors.backgroundLight),
    displayMedium: TextStyle(fontSize: 14,fontFamily: 'Luckiest Guy',fontWeight: FontWeight.w400,color: HColors.backgroundLight),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black),

    titleLarge: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),

    bodyLarge: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),

    labelLarge: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white.withOpacity(0.5)),
  );
}