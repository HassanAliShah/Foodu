import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
class TextIconContainer extends StatelessWidget {
  TextIconContainer({
    super.key,
    required this.text, required this.iconData, required this.onTap,
  });

  final String text;
  final IconData iconData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: HSizes.buttonHeight,
        padding: const EdgeInsets.symmetric(horizontal: HSizes.appBarHeight),
        decoration: ShapeDecoration(
          color: HColors.textFieldFillColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(HSizes.md),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
            Icon(iconData,color: HColors.textGrey,),
          ],
        ),
      ),
    );
  }
}