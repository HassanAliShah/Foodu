

import 'package:flutter/material.dart';
import 'package:foodu/features/account_setup/controller/pin_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
class PinField extends StatelessWidget {
  const PinField({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller  = PinController.instance;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: HSizes.buttonHeight,
          width: HSizes.buttonHeight,
          child: Center(
            child: TextField(
              cursorColor: HColors.primary,
              focusNode: controller.focusNode1
              ,cursorHeight: HSizes.lg,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
              keyboardType: TextInputType.phone,
              obscureText: true,
              onChanged: (value) {
                controller.moveToNextField(value, controller.focusNode1, controller.focusNode2);
              },
            ),
          ),
        ),
        SizedBox(
          height: HSizes.buttonHeight,
          width: HSizes.buttonHeight,
          child: Center(
            child: TextField(
              cursorColor: HColors.primary
              ,cursorHeight: HSizes.lg,
              focusNode: controller.focusNode2,
              textAlign: TextAlign.center,
              obscureText: true,
              style: Theme.of(context).textTheme.bodySmall,
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                controller.moveToNextField(value, controller.focusNode2, controller.focusNode3);
              },
            ),
          ),
        ),
        SizedBox(
          height: HSizes.buttonHeight,
          width: HSizes.buttonHeight,
          child: Center(
            child: TextField(
              cursorColor: HColors.primary
              ,cursorHeight: HSizes.lg,
              focusNode: controller.focusNode3,
              textAlign: TextAlign.center,
              obscureText: true,
              style: Theme.of(context).textTheme.bodySmall,
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                controller.moveToNextField(value, controller.focusNode3, controller.focusNode4);
              },
            ),
          ),
        ),
        SizedBox(
          height: HSizes.buttonHeight,
          width: HSizes.buttonHeight,
          child: Center(
            child: TextField(
              cursorColor: HColors.primary
              ,cursorHeight: HSizes.lg,
              focusNode: controller.focusNode4,
              textAlign: TextAlign.center,
              obscureText: true,
              style: Theme.of(context).textTheme.bodySmall,
              keyboardType: TextInputType.phone,
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