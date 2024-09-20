import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/app_bar/app_bar.dart';
import '../../../../common/widgets/login_signup/footer.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/header.dart';
import '../../../../utils/exports.dart';
import '../login/login_screen.dart';
import '../login/widget/social_buttons.dart';
import 'widget/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const TAppBar(showBackButton: true),
        body: SingleChildScrollView(
          padding: TSpacingStyles.paddingWithHeightWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// Header
              const THeader(text: TTexts.createNewAccount, image: TImages.appLogo),

              /// Form
              const TSignUpForm(),

              /// Divider
              const TFormDivider(text: "or ${TTexts.continueWith}"),

              //Social Button
              const TSocialRowButon(),

              TFooter(
                buttonText: TTexts.signIN,
                text: TTexts.alreadyHaveAccount,
                onPressed: () => Get.to(const LoginScreen()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
