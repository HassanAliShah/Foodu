

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/onboarding/onboarding.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.offAll( () => const OnBoardingScreen());
    });
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(HImages.welcome),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: HSpacingStyles.paddingWithHeightWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              HText.welcomeTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge
            ),
            SizedBox(height: HSizes.spaceBtwItems,),
            Text(
                HText.welcomeSubtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall
            ),
            SizedBox(height: HSizes.defaultSpace,),
          ],
        ),
      ),
    );
  }
}
