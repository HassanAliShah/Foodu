import 'package:flutter/material.dart';
import 'package:foodu/features/authentication/screens/login/widget/social_buttons.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/app_bar/app_bar.dart';
import '../../../../common/widgets/login_signup/footer.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/header.dart';
import '../../../../utils/exports.dart';
import '../signup/sign_up_screen.dart';
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
              const THeader(text: TTexts.loginYourAccount, image: TImages.appLogo),

              /// Form
              const TLoginForm(),

              /// Divider
              const TFormDivider(text: TTexts.continueWith),

              /// Social Buttons
              const TSocialRowButon(),

              TFooter(text: TTexts.dontHaveAccount, buttonText: TTexts.signUp, onPressed: () => Get.to(const SignUpScreen()))
            ],
          ),
        ),
      ),
    );
  }
}
