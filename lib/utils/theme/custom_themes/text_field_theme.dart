

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HTextFormFieldTheme{

  HTextFormFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: HColors.textGrey,
    suffixIconColor: HColors.textGrey,filled: true,
    fillColor: HColors.textFieldFillColor,
    hintStyle: TextStyle().copyWith(fontSize: 14,color: HColors.textGrey),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide:  BorderSide.none,
    ),
      enabledBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide(width: 1, color: HColors.primary),
      ),
      errorBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide(width: 1, color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide(width: 1, color: Colors.orange),
      )
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.blue,
      suffixIconColor: Colors.blue,
      labelStyle: TextStyle().copyWith(fontSize: 14,color: Colors.black),
      hintStyle: TextStyle().copyWith(fontSize: 14,color: Colors.black),
      errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
      border: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide(width: 1, color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide(width: 1, color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide(width: 1, color: Colors.black12),
      ),
      errorBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide(width: 1, color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide(width: 1, color: Colors.orange),
      )
  );
}