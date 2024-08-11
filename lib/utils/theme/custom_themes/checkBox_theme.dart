

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class HCheckBoxTheme {

  HCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected))
        {
          return Colors.white;
        }
      else
        {
          Colors.black;
        }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected))
      {
        return HColors.primary;
      }
      else
      {
        Colors.transparent;
      }
    }),
  );

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected))
      {
        return HColors.primary;
      }
      else
      {
        Colors.white;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected))
      {
        return HColors.primary;
      }
      else
      {
        Colors.transparent;
      }
    }),
  );
}