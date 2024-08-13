
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/social_icon.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';

class HSocialRowButon extends StatelessWidget {
  const HSocialRowButon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcon(image: HImages.facebook,onTap: (){},),
        SizedBox(width: HSizes.defaultSpace,),
        SocialIcon(image: HImages.google,onTap: (){},),
        SizedBox(width: HSizes.defaultSpace,),
        SocialIcon(image: HImages.apple,onTap: (){},),
      ],
    );
  }
}
