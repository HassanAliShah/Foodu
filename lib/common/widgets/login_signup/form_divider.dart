
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';

class HFormDivider extends StatelessWidget {
  HFormDivider({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: HSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: Divider(color: HColors.textGrey,thickness: 0.5,indent: 10,endIndent: 5,)),
          Text(text,style: Theme.of(context).textTheme.titleSmall,),
          Flexible(child: Divider(color: HColors.textGrey,thickness: 0.5,indent: 5,endIndent: 10,)),
        ],
      ),
    );
  }
}