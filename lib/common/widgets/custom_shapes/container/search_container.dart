
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class HSearchContainer extends StatelessWidget {
  const HSearchContainer({
    super.key, this.showBackground = true,
    this.showBorder = true, required this.text,
    this.iconData = Icons.search,
  });
  final String text;
  final IconData? iconData;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: HHelperFunctions.screenHeight(),
      padding: EdgeInsets.all(HSizes.xm),
      decoration: BoxDecoration(
        color: showBackground ?  HColors.textFieldFillColor :Colors.transparent,
        borderRadius: BorderRadius.circular(HSizes.cardRadiusLg),
        border:showBorder ? Border.all(color: HColors.borderGrey) : null,
      ),
      child:
      Row(
        children: [
          Icon(iconData,color: HColors.textGrey,),
          SizedBox(width: HSizes.spaceBtwItems,),
          Text(text,style: Theme.of(context).textTheme.labelSmall,)
        ],
      ),
    );
  }
}