

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/text_strings.dart';

class HAppBarTheme{
  HAppBarTheme._();

  static  AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    centerTitle: false,titleTextStyle: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: HColors.textblack),
    iconTheme: IconThemeData(color: HColors.backgroundDark,size: 24),
    actionsIconTheme: IconThemeData(color: HColors.backgroundDark,size: 24),
  );
}