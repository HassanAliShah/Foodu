
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
          OnBoardingPage(title: HText.onBoardingTitle1,image: HImages.onBoardingImage1,subTitle: HText.onBoardingSubTitle1,buttonText: HText.onBoardingButton1,),
          OnBoardingPage(title: HText.onBoardingTitle2,image: HImages.onBoardingImage2,subTitle: HText.onBoardingSubTitle2,buttonText: HText.onBoardingButton2,),
          OnBoardingPage(title: HText.onBoardingTitle3,image: HImages.onBoardingImage3,subTitle: HText.onBoardingSubTitle3,buttonText: HText.onBoardingButton3,),
        ],
      ),
    );
  }
}

