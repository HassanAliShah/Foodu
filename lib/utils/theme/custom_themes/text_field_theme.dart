

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class TTextFormFieldTheme{

  TTextFormFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TColors.textGrey,
    suffixIconColor: TColors.textGrey,filled: true,
    fillColor: TColors.textFieldFillColor,
    hintStyle: const TextStyle().copyWith(fontSize: 14,color: TColors.textGrey),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide:  BorderSide.none,
    ),
      enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide.none,
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  const BorderSide(width: 1, color: TColors.primary),
      ),
      errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  const BorderSide(width: 1, color: Colors.red),
      ),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  const BorderSide(width: 1, color: Colors.orange),
      )
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: TColors.textGrey,
      suffixIconColor: TColors.textGrey,filled: true,
      fillColor: TColors.textFieldFillColor,
      hintStyle: const TextStyle().copyWith(fontSize: 14,color: TColors.textGrey),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide.none,
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  BorderSide.none,
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  const BorderSide(width: 1, color: TColors.primary),
      ),
      errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  const BorderSide(width: 1, color: Colors.red),
      ),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide:  const BorderSide(width: 1, color: Colors.orange),
      )
  );
}