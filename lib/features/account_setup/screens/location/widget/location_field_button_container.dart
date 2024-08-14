
import 'package:flutter/material.dart';
import 'package:foodu/features/account_setup/screens/pin/new_pin.dart';
import 'package:foodu/features/account_setup/screens/profile_form/widget/textIconContainer.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class locationFieldAndButtonContainer extends StatelessWidget {
  const locationFieldAndButtonContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: HHelperFunctions.screenWidth(),
        height:HHelperFunctions.screenHeight() / 3.3,
        padding: const EdgeInsets.symmetric(
          vertical: HSizes.md,
          horizontal: HSizes.defaultSpace,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: HColors.backgroundLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(HSizes.buttonHeight),
              topRight: Radius.circular(HSizes.buttonHeight),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Divider(endIndent: 130,indent: 130,thickness: 2,height: 10,),
            SizedBox(
              width: double.infinity,
              child: Text(
                  'Location',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge
              ),
            ),
            Divider(),

            TextIconContainer(text: "Islamabad", iconData: Icons.location_on, onTap: (){}),

            Divider(),

            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(CreateNewPin()), child: Text(HText.continueB)))
          ],
        ),
      ),
    );
  }
}