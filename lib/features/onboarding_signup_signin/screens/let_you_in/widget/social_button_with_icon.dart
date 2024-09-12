
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:gap/gap.dart';
class SocialButtoWithIcon extends StatelessWidget {
  const SocialButtoWithIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(top: TSizes.defaultSpace),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: (){},
                style: OutlinedButton.styleFrom(
                    backgroundColor: isDark ? TColors.darkCard :  Colors.white
                ),
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(TImages.facebook,),
                const Gap(TSizes.sm),
                Text("${TText.continueWith} Facebook",style: Theme.of(context).textTheme.bodySmall,)
              ],
            )),
          ),
          const SizedBox(height: TSizes.spaceBtwItems,),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: (){},
                style: OutlinedButton.styleFrom(
                    backgroundColor: isDark ? TColors.darkCard :  Colors.white
                ),
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(TImages.google,),
                const Gap(TSizes.sm),
                Text("${TText.continueWith} Google",style: Theme.of(context).textTheme.bodySmall,)
              ],
            )),
          ),
          const SizedBox(height: TSizes.spaceBtwItems,),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: (){},
                style: OutlinedButton.styleFrom(
                  backgroundColor: isDark ? TColors.darkCard :  Colors.white
                ),
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(  isDark  ?  TImages.lightAppleLogo :TImages.apple,),
                const Gap(TSizes.sm),
                Text("${TText.continueWith} Apple",style: Theme.of(context).textTheme.bodySmall,)
              ],
            )),
          ),
        ],
      ),
    );
  }
}