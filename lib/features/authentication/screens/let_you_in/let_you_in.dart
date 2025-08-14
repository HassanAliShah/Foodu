import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/footer.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/header.dart';
import '../../../../routes/routes.dart';
import '../../../../utils/exports.dart';
import 'widget/social_button_with_icon.dart';

class LetYouInScreen extends StatelessWidget {
  const LetYouInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: TSpacingStyles.paddingWithHeightWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Header
              THeader(
                width: THelperFunctions.screenWidth() * 0.7,
                height: THelperFunctions.screenHeight() * 0.24,
                text: TTexts.letYouIn.tr,
                image: isDark ? TImages.darkLetYouIn : TImages.letYouIn,
                style: Theme.of(context).textTheme.headlineLarge!.apply(color: TColors.textblack),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),

              /// Social Buttons
              const SocialButtonsWithIcon(),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),

              /// Divider
              const TFormDivider(text: 'or'),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),

              /// Login Screen Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.toNamed(TRoutes.logIn), child: Text(TTexts.signInWithPhoneNo.tr)),
              ),

              /// Signup Screen Button
              TFooter(text: TTexts.alreadyHaveAccount, onPressed: () => Get.toNamed(TRoutes.signup), buttonText: TTexts.signUp.tr)
            ],
          ),
        ),
      ),
    );
  }
}
