
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: HColors.borderGrey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: IconButton(onPressed: (){}, icon: Image(image: AssetImage(HImages.facebook),height: HSizes.lg,width: HSizes.lg,)),
        ),
        SizedBox(width: HSizes.defaultSpace,),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: HColors.borderGrey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: IconButton(onPressed: (){}, icon: Image(image: AssetImage(HImages.google),height: HSizes.lg,width: HSizes.lg,)),
        ),
        SizedBox(width: HSizes.defaultSpace,),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: HColors.borderGrey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: IconButton(onPressed: (){}, icon: Image(image: AssetImage(HImages.apple),height: HSizes.lg,width: HSizes.lg,)),
        )
      ],
    );
  }
}