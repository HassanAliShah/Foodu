
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(child: Divider(color: TColors.textGrey,thickness: 0.5,indent: 10,endIndent: 5,)),
          Text(text,style: Theme.of(context).textTheme.titleSmall,),
          const Flexible(child: Divider(color: TColors.textGrey,thickness: 0.5,indent: 5,endIndent: 10,)),
        ],
      ),
    );
  }
}