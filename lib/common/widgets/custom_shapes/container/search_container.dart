
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:iconly/iconly.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, this.showBackground = true,
    this.showBorder = true, required this.text,
    this.iconData = Icons.search,
  });
  final String text;
  final IconData? iconData;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Container(
      width: THelperFunctions.screenHeight(),
      padding: const EdgeInsets.all(TSizes.xm),
      decoration: BoxDecoration(
        color: showBackground ? isDark ?TColors.darkCard : TColors.textFieldFillColor :Colors.transparent,
        borderRadius: BorderRadius.circular(TSizes.cardRadiusMd),
        border:showBorder ? Border.all(color: TColors.borderGrey) : null,
      ),
      child:
      Row(
        children: [
          const Icon(IconlyLight.search,color: TColors.iconGreyColor,),
          const SizedBox(width: TSizes.spaceBtwItems,),
          Text(text,style: Theme.of(context).textTheme.labelSmall,)
        ],
      ),
    );
  }
}