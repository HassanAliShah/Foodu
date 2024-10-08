

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class TTextTheme{

  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0,fontFamily: 'Urbanist', fontWeight: FontWeight.bold, color: TColors.textPrimary),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w600, color: TColors.textPrimary),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w400, color: TColors.backgroundLight),

    titleLarge: const TextStyle().copyWith(fontSize: 24.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w600, color:TColors.textblack),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w500, color: TColors.textPrimary),
    titleSmall: const TextStyle().copyWith(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w400, color: TColors.textGrey),

    bodyLarge: const TextStyle().copyWith(fontSize: 18.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w700, color: TColors.textblack),
    bodyMedium: const TextStyle().copyWith(fontSize: 16.0,fontFamily: 'Urbanist', fontWeight: FontWeight.normal, color: TColors.textblack),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w600, color: TColors.textblack),

    labelSmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w400, color: TColors.textGrey),
    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w600, color: TColors.textPrimary),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: TColors.textPrimary.withOpacity(0.5)),

    displayLarge: const TextStyle(fontSize: 30,fontFamily: 'Luckiest Guy',fontWeight: FontWeight.w400,color: TColors.backgroundLight),
    displayMedium: const TextStyle(fontSize: 14,fontFamily: 'Luckiest Guy',fontWeight: FontWeight.w400,color: TColors.backgroundLight),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0,fontFamily: 'Urbanist', fontWeight: FontWeight.bold, color: TColors.textPrimary),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w600, color: TColors.textPrimary),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w400, color: TColors.backgroundLight),

    titleLarge: const TextStyle().copyWith(fontSize: 24.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w600, color:TColors.backgroundLight),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w500, color: TColors.textPrimary),
    titleSmall: const TextStyle().copyWith(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w400, color: TColors.textGrey),

    bodyLarge: const TextStyle().copyWith(fontSize: 18.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w700, color: TColors.backgroundLight),
    bodyMedium: const TextStyle().copyWith(fontSize: 16.0,fontFamily: 'Urbanist', fontWeight: FontWeight.normal, color: TColors.backgroundLight),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.w600, color: TColors.backgroundLight),

    labelSmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w400, color: TColors.textGrey),
    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w600, color: TColors.textPrimary),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: TColors.textPrimary.withOpacity(0.5)),
  );
}