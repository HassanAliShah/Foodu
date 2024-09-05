
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/social_icon.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';

class TSocialRowButon extends StatelessWidget {
  const TSocialRowButon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TSocialIcon(image: TImages.facebook,onTap: (){},),
        const SizedBox(width: TSizes.defaultSpace,),
        TSocialIcon(image: TImages.google,onTap: (){},),
        const SizedBox(width: TSizes.defaultSpace,),
        TSocialIcon(image: TImages.apple,onTap: (){},),
      ],
    );
  }
}
