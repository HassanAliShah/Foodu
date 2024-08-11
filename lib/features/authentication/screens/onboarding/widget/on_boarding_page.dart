
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/features/authentication/controller/onboarding_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle, required this.buttonText,
  });

  final String image,title,subTitle,buttonText;

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Padding(
      padding:  EdgeInsets.all(HSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              height: HHelperFunctions.screenHeight() * 0.6,
              width: HHelperFunctions.screenWidth() * 0.8,
              image:  AssetImage(image)),
          Text(title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center ,),
          const SizedBox(height: HSizes.spaceBtwItems,),
          Text(subTitle,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: HColors.textblack
            ),
            textAlign: TextAlign.center ,),
          const SizedBox(height: HSizes.spaceBtwSection,),
          SmoothPageIndicator(controller: controller.pageController,onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: const ExpandingDotsEffect(activeDotColor: HColors.primary,dotHeight: 6),),
          const SizedBox(height: HSizes.spaceBtwSection,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () => controller.nextPage(),
                child: Text(buttonText,)),
          )
        ],
      ),
    );
  }
}