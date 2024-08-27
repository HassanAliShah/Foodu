

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class HOutlineButtonTheme{

  HOutlineButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  elevation: 0,
  foregroundColor: HColors.primary,
  backgroundColor: Color(0xffE8F7ED),
  disabledBackgroundColor: Colors.grey,
  disabledForegroundColor: Colors.grey,
  side:  const BorderSide(color:HColors.borderGrey),
  padding: const EdgeInsets.symmetric(vertical:  14,horizontal: 32),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  textStyle:  const TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w600
    ),
  ),);

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side:  const BorderSide(color:Colors.blue),
      padding: const EdgeInsets.symmetric(vertical:  18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      textStyle:  const TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w600
      ),
    ),);



}