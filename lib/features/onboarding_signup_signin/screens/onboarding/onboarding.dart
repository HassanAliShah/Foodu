
import 'package:flutter/material.dart';
import 'package:foodu/features/onboarding_signup_signin/controller/onboarding_controller.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/onboarding/widget/on_boarding_page.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.updatePageIndicator,
        children:const [
          OnBoardingPage(title: TText.onBoardingTitle1,image: TImages.onBoardingImage1,subTitle: TText.onBoardingSubTitle1,buttonText: TText.onBoardingButton1,),
          OnBoardingPage(title: TText.onBoardingTitle2,image: TImages.onBoardingImage2,subTitle: TText.onBoardingSubTitle2,buttonText: TText.onBoardingButton2,),
          OnBoardingPage(title: TText.onBoardingTitle3,image: TImages.onBoardingImage3,subTitle: TText.onBoardingSubTitle3,buttonText: TText.onBoardingButton3,),
        ],
      ),
    );
  }
}

