

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class  TSwitchTheme {
  TSwitchTheme._();

  static SwitchThemeData lightSwitchTheme =  SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      }
      return Colors.white;
    }),
    trackColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return TColors.primary;
      }
      return Colors.grey.shade300;
    }),
  );

  static SwitchThemeData darkSwitchTheme =  SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      }
      return Colors.white;
    }),
    trackColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return TColors.primary;
      }
      return TColors.darkCard;
    }),
  );
}