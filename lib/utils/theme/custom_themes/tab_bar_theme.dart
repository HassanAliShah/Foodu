

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class  HTabBarTheme {
  HTabBarTheme._();

  static TabBarTheme lightTabBarTheme = TabBarTheme(
    indicatorColor: HColors.primary,
    tabAlignment: TabAlignment.start,
    labelStyle: TextStyle(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.bold, color: HColors.primary),
    unselectedLabelStyle: TextStyle(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.bold, color: HColors.textGrey)
  );
}