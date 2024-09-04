

import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:ripple_wave/ripple_wave.dart';
import 'package:slide_to_act/slide_to_act.dart';

class FindingDriver extends StatelessWidget {
  const FindingDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
        title: Text("Searching Driver",style: Theme.of(context).textTheme.bodySmall,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Head
          Padding(padding: const EdgeInsets.only(top: 10),child: Column(
      children: [
        const Center(child: Image(image: AssetImage(HImages.appLogo))),
        const SizedBox(height: TSizes.md,),
        Text("Finding you a nearby driver...",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center ,),
        const SizedBox(height: TSizes.x,),
        Text("This may take a few seconds...",
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.center ,),
      ],
    ),),
          Padding(padding: const EdgeInsets.symmetric(vertical: 20),child:
          RippleWave(
            color: Colors.green,
            repeat: true,
            child: Image.asset(HImages.pic)
          ),),
          SizedBox(
            width: THelperFunctions.screenWidth() /1.7,
            child: SlideAction(
              text: "     >>Slide to cancel",
              sliderButtonIconPadding: 14,
              innerColor: TColors.primary,
              textColor: Colors.grey,
              outerColor: Colors.white,
              sliderButtonIcon: const Icon(Icons.close,color: Colors.white,),
              textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: TColors.textGrey
              ),


              

            ),
          )

        ],
      ),
    );
  }
}
