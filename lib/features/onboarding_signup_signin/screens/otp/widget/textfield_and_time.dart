

import 'package:flutter/material.dart';
import 'package:foodu/features/onboarding_signup_signin/controller/otp_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class TextFeildandTime extends StatelessWidget {
  const TextFeildandTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   final controller = OtpController.instance;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: HSizes.buttonHeight),
      child: Column(
        children: [
          Text(HText.codeSendTo,style: Theme.of(context).textTheme.bodySmall,),
          SizedBox(
            height: HSizes.buttonHeight,
          ),
          Row(
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
                    style: Theme.of(context).textTheme.bodySmall,
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {
                      controller.focusNode4.unfocus();
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: HSizes.buttonHeight,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Resend code in ',
                    style: Theme.of(context).textTheme.titleSmall
                ),
                TextSpan(
                    text: '55',
                    style: Theme.of(context).textTheme.bodySmall
                ),
                TextSpan(
                    text: ' s',
                    style: Theme.of(context).textTheme.titleSmall
                ),
              ],
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}