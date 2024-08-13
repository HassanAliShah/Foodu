
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
class SocialButtoWithIcon extends StatelessWidget {
  const SocialButtoWithIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: HSizes.defaultSpace),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: (){}, child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(HImages.facebook,),
                Text("${HText.continueWith} Facebook",style: Theme.of(context).textTheme.bodySmall,)
              ],
            )),
          ),
          SizedBox(height: HSizes.spaceBtwItems,),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: (){}, child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(HImages.google,),
                Text("${HText.continueWith} Google",style: Theme.of(context).textTheme.bodySmall,)
              ],
            )),
          ),
          SizedBox(height: HSizes.spaceBtwItems,),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: (){}, child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(HImages.apple,),
                Text("${HText.continueWith} Apple",style: Theme.of(context).textTheme.bodySmall,)
              ],
            )),
          ),
        ],
      ),
    );
  }
}