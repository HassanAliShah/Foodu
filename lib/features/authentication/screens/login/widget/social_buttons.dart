
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/social_icon.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class TSocialRowButon extends StatelessWidget {
  const TSocialRowButon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TSocialIcon(image: TImages.facebook,onTap: (){},),
        const SizedBox(width: TSizes.defaultSpace,),
        TSocialIcon(image: TImages.google,onTap: (){},),
        const SizedBox(width: TSizes.defaultSpace,),
        TSocialIcon(image: isDark ? TImages.lightAppleLogo : TImages.apple,onTap: (){},),
      ],
    );
  }
}
