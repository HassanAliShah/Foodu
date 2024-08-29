

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/custom_shapes/container/pin_field.dart';
import 'package:foodu/common/widgets/dialouge/custom_dialogue.dart';
import 'package:foodu/features/account_setup/controller/pin_controller.dart';
import 'package:foodu/features/home_action_menu/screens/home/home_screen.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ConfirmPin extends StatelessWidget {
  const ConfirmPin({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PinController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(HText.createNewPin),
      ),

      body:
      Padding(
        padding: EdgeInsets.only(
            top: HSizes.imageThumbSize,
            left: HSizes.defaultSpace,
            right: HSizes.defaultSpace
        ),
        child: Column(
            children: [
              Text(textAlign: TextAlign.center,HText.confirmPinText,style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: HSizes.spaceBtwSection,),
              PinField(),
              SizedBox(height: HSizes.spaceBtwSection,),
              SizedBox(width: double.infinity,child:  ElevatedButton(onPressed: () => Get.to(CustomDialog(title: "Top Up Successful", subtitle: "You have successfully top up e-wallet for \$50", emoji: Icons.wallet)), child: Text(HText.continueB)))
            ]

        ),
      ),
    );
  }
}

