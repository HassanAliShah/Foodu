

import 'package:flutter/material.dart';
import 'package:foodu/features/account_setup/controller/pin_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
class TPinField extends StatelessWidget {
  const TPinField({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller  = PinController.instance;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: TSizes.buttonHeight,
          width: TSizes.buttonHeight,
          child: Center(
            child: TextField(
              cursorColor: TColors.primary,
              focusNode: controller.focusNode1
              ,cursorHeight: TSizes.lg,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
              keyboardType: TextInputType.phone,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
              ),
              onChanged: (value) {
                controller.moveToNextField(value, controller.focusNode1, controller.focusNode2);
              },
            ),
          ),
        ),
        SizedBox(
          height: TSizes.buttonHeight,
          width: TSizes.buttonHeight,
          child: Center(
            child: TextField(
              cursorColor: TColors.primary
              ,cursorHeight: TSizes.lg,
              focusNode: controller.focusNode2,
              textAlign: TextAlign.center,
              obscureText: true,
              style: Theme.of(context).textTheme.bodySmall,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
              ),
              onChanged: (value) {
                controller.moveToNextField(value, controller.focusNode2, controller.focusNode3);
              },
            ),
          ),
        ),
        SizedBox(
          height: TSizes.buttonHeight,
          width: TSizes.buttonHeight,
          child: Center(
            child: TextField(
              cursorColor: TColors.primary
              ,cursorHeight: TSizes.lg,
              focusNode: controller.focusNode3,
              textAlign: TextAlign.center,
              obscureText: true,
              style: Theme.of(context).textTheme.bodySmall,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
              ),
              onChanged: (value) {
                controller.moveToNextField(value, controller.focusNode3, controller.focusNode4);
              },
            ),
          ),
        ),
        SizedBox(
          height: TSizes.buttonHeight,
          width: TSizes.buttonHeight,
          child: Center(
            child: TextField(
              cursorColor: TColors.primary
              ,cursorHeight: TSizes.lg,
              focusNode: controller.focusNode4,
              textAlign: TextAlign.center,
              obscureText: true,
              style: Theme.of(context).textTheme.bodySmall,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
              ),
              onChanged: (value) {
                controller.focusNode4.unfocus();
              },
            ),
          ),
        ),
      ],
    );
  }
}