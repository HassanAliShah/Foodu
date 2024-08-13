
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';

class HFooter extends StatelessWidget {
   HFooter({
    super.key, required this.text, required this.onPressed, required this.buttonText,
  });

  final String text;
  final VoidCallback onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: HSizes.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style: Theme.of(context).textTheme.labelSmall,),
          SizedBox(width: HSizes.sm,),
          TextButton(onPressed: onPressed, child: Text(buttonText,style: Theme.of(context).textTheme.labelLarge,),)
        ],
      ),
    );
  }
}