

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HColors{
  HColors._();

  // App Basic Color
  static const Color primary = Color(0xff1BAC4B);

  // Background Color

  static const Color backgroundLight = Colors.white;
  static const Color backgroundDark = Color(0xff181A20);


  // Gradient Colors
  static const Gradient linerGradient =  LinearGradient(
    begin: Alignment(-0.96, 0.28),
    end: Alignment(0.96, -0.28),
    colors: [Color(0xFF1BAC4B), Color(0xFF46D375)],
  );

  // Text Color
  static const Color textPrimary = Color(0xff1BAC4B);
  static const Color textblack = Color(0xFF212121);
  static const Color textGrey = Color(0xFF9E9E9E);

  // Button Color
  static const Color buttonPrimary = Color(0xff1BAC4B);
  static const Color buttonSecondary = Color(0xffE8F7ED);

  //Container Border
  static const Color borderGrey = Color(0xFFEEEEEE);

  //Container Shadow Color
  static const Color containerShadow =  Color(0x3F1BAC4B);

  //Text Field Fill Color
  static const Color textFieldFillColor = Color(0xFFF9F9F9);

  //Rating Color
  static const Color rating = Colors.orange;


}