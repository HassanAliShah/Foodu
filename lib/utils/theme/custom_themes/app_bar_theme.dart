

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class HAppBarTheme{
  HAppBarTheme._();

  static  AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    centerTitle: false,
    iconTheme: IconThemeData(color: HColors.backgroundDark,size: 24),
    actionsIconTheme: IconThemeData(color: HColors.backgroundDark,size: 24),
  );
}