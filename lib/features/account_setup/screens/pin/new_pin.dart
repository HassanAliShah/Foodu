
import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/features/account_setup/controller/pin_controller.dart';
import 'package:foodu/features/account_setup/screens/pin/widget/pin_field.dart';
import 'package:foodu/features/navigation_menu/navigation_menu.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class CreateNewPin extends StatelessWidget {
  const CreateNewPin({super.key});

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
            Text(textAlign: TextAlign.center,HText.pinText,style: Theme.of(context).textTheme.bodySmall,),
            SizedBox(height: HSizes.spaceBtwSection,),
            PinField(),
            SizedBox(height: HSizes.spaceBtwSection,),
            SizedBox(width: double.infinity,child:  ElevatedButton(onPressed: () => Get.to(NavigationMenu()), child: Text(HText.continueB)))
          ]

        ),
      ),
    );
  }
}

