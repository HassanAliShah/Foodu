

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/onboarding/onboarding.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.offAll( () => const OnBoardingScreen());
    });
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(TImages.welcome),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: TSpacingStyles.paddingWithHeightWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              TText.welcomeTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(
                TText.welcomeSubtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall
            ),
            const SizedBox(height: TSizes.defaultSpace,),
          ],
        ),
      ),
    );
  }
}
