
import 'package:flutter/material.dart';
import 'package:foodu/features/onboarding_signup_signin/controller/onboarding_controller.dart';
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
      padding:  const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              height: THelperFunctions.screenHeight() * 0.5,
              width: THelperFunctions.screenWidth() * 0.8,
              image:  AssetImage(image)),
          Text(title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center ,),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Text(subTitle,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: TColors.textblack
            ),
            textAlign: TextAlign.center ,),
          const SizedBox(height: TSizes.defaultSpace,),
          SmoothPageIndicator(controller: controller.pageController,onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: const ExpandingDotsEffect(activeDotColor: TColors.primary,dotHeight: 6),),
          const SizedBox(height: TSizes.defaultSpace,),
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