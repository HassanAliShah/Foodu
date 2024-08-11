
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';

class HFooter extends StatelessWidget {
  const HFooter({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: HSizes.spaceBtwSection),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style: Theme.of(context).textTheme.titleSmall,),
          SizedBox(width: HSizes.spaceBtwItems,),
          TextButton(onPressed: (){}, child: Text(HText.signUp,style: Theme.of(context).textTheme.headlineSmall,),)
        ],
      ),
    );
  }
}