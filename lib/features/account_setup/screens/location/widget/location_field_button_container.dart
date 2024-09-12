
import 'package:flutter/material.dart';
import 'package:foodu/features/account_setup/screens/pin/new_pin.dart';
import 'package:foodu/features/account_setup/screens/profile_form/widget/textIconContainer.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class locationFieldAndButtonContainer extends StatelessWidget {
  const locationFieldAndButtonContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: 0,
      child: Container(
        width: THelperFunctions.screenWidth(),
        height:THelperFunctions.screenHeight() / 3.3,
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.md,
          horizontal: TSizes.defaultSpace,
        ),
        clipBehavior: Clip.antiAlias,
        decoration:  ShapeDecoration(
          color: isDark ?TColors.darkCard : TColors.backgroundLight,
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
            const Divider(endIndent: 130,indent: 130,thickness: 2,height: 10,),
            SizedBox(
              width: double.infinity,
              child: Text(
                  'Location',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge
              ),
            ),
            const Divider(),

            TextIconContainer(text: "Islamabad", iconData: Icons.location_on, onTap: (){}),

            const Divider(),

            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(const CreateNewPin()), child: const Text(TTexts.continueB)))
          ],
        ),
      ),
    );
  }
}