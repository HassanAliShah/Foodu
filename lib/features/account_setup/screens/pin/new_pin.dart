import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/custom_shapes/container/pin_field.dart';
import 'package:foodu/features/navigation_menu/navigation_menu.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class CreateNewPin extends StatelessWidget {
  const CreateNewPin({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(PinController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text(TTexts.createNewPin),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: TSizes.imageThumbSize, left: TSizes.defaultSpace, right: TSizes.defaultSpace),
        child: Column(children: [
          Text(
            textAlign: TextAlign.center,
            TTexts.pinText,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: TSizes.spaceBtwSection,
          ),
          const TPinField(),
          const SizedBox(
            height: TSizes.spaceBtwSection,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.to(const NavigationMenu()), child: const Text(TTexts.continueB)))
        ]),
      ),
    );
  }
}
