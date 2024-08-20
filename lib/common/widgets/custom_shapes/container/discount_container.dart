
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class DiscountConatiner extends StatelessWidget {
  const DiscountConatiner({
    super.key, required this.discount, required this.description, required this.imagePath, required  this.gradient,
  });
  final String discount;
  final String description;
  final String imagePath;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: HHelperFunctions.screenHeight() / 5.3,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.only(left: HSizes.lg),
      decoration: ShapeDecoration(
        gradient: gradient,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(HSizes.cardRadiusXL),
        ),
        shadows: const [
          BoxShadow(
            color: HColors.containerShadow,
            blurRadius: 24,
            offset: Offset(4, 8),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(discount,style: Theme.of(context).textTheme.displayLarge,),
                Text(description,style: Theme.of(context).textTheme.displayMedium,)
              ],
            ),
          ),
          Flexible(child: Image(image: AssetImage(imagePath)))
        ],
      ),);
  }
}