import 'package:flutter/material.dart';
import 'package:foodu/routes/routes.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import '../../../controller/location_controller.dart';

class LocationFieldAndButtonContainer extends StatelessWidget {
  const LocationFieldAndButtonContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller = LocationController.instance;
    return Positioned(
      bottom: 0,
      child: Container(
        width: THelperFunctions.screenWidth(),
        height: THelperFunctions.screenHeight() / 3.3,
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.md,
          horizontal: TSizes.defaultSpace,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: isDark ? TColors.darkCard : TColors.backgroundLight,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(TSizes.buttonHeight),
              topRight: Radius.circular(TSizes.buttonHeight),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Divider(
              endIndent: 130,
              indent: 130,
              thickness: 2,
              height: 10,
            ),

            /// -- Location Text
            SizedBox(
              width: double.infinity,
              child: Text('Location', textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge),
            ),
            const Divider(),

            /// -- Location Text Field
            SizedBox(
              height: TSizes.buttonHeight,
              child: TextField(
                controller: controller.locationController,
                focusNode: controller.locationFocusNode,
                cursorHeight: TSizes.lg,
                cursorColor: TColors.primary,
                style: Theme.of(context).textTheme.bodySmall,
                decoration: InputDecoration(
                  hintText: TTexts.setYourLocation.tr,
                  suffixIcon: Obx(() => Icon(
                        IconlyBold.location,
                        color: controller.locationIconColor.value,
                      )),
                  hintStyle: Theme.of(context).textTheme.titleSmall,
                  fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
                ),
              ),
            ),
            const Divider(),

            SizedBox(
                width: double.infinity, child: ElevatedButton(onPressed: () => Get.toNamed(TRoutes.pin), child: Text(TTexts.continueB.tr)))
          ],
        ),
      ),
    );
  }
}
