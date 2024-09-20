import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:gap/gap.dart';

class SocialButtonsWithIcon extends StatelessWidget {
  const SocialButtonsWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(top: TSizes.defaultSpace),
      child: Column(
        children: [

          /// Facebook Sign In
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(backgroundColor: isDark ? TColors.darkCard : Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(TImages.facebook, width: 25, height: 25),
                    const Gap(TSizes.sm),
                    Text("${TTexts.continueWith} Facebook", style: Theme.of(context).textTheme.bodySmall)
                  ],
                )),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),

          /// Google Sign In
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(backgroundColor: isDark ? TColors.darkCard : Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(TImages.google, width: 25, height: 25),
                    const Gap(TSizes.sm),
                    Text("${TTexts.continueWith} Google", style: Theme.of(context).textTheme.bodySmall)
                  ],
                )),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),

          /// Apple Sign In
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(backgroundColor: isDark ? TColors.darkCard : Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(isDark ? TImages.lightAppleLogo : TImages.apple, width: 25, height: 25),
                  const Gap(TSizes.sm),
                  Text("${TTexts.continueWith} Apple", style: Theme.of(context).textTheme.bodySmall)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
