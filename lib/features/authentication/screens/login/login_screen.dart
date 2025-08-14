import 'package:flutter/material.dart';
import 'package:foodu/features/authentication/screens/login/widget/social_buttons.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/app_bar/app_bar.dart';
import '../../../../common/widgets/login_signup/footer.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/header.dart';
import '../../../../routes/routes.dart';
import '../../../../utils/exports.dart';
import 'widget/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const TAppBar(showBackButton: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: TSizes.spaceBtwSection, left: TSizes.defaultSpace, right: TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Header
              THeader(text: TTexts.loginYourAccount.tr,image: TImages.appLogo),
              const SizedBox(height:  TSizes.spaceBtwSection,),

              /// Form
              const TLoginForm(),
              const SizedBox(height:  TSizes.spaceBtwSection,),

              /// Divider
              const TFormDivider(text: TTexts.orContinueWith),
              const SizedBox(height:  TSizes.spaceBtwSection,),


              /// Social Buttons
              const TSocialRowButon(),
              const SizedBox(height:  TSizes.spaceBtwSection / 2.5,),


              /// Text with Sign Up Button
              TFooter(text: TTexts.dontHaveAccount, buttonText: TTexts.signUp.tr, onPressed: () => Get.offAndToNamed(TRoutes.signup))
            ],
          ),
        ),
      ),
    );
  }
}
