
import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/login_signup/footer.dart';
import 'package:foodu/common/widgets/login_signup/form_divider.dart';
import 'package:foodu/common/widgets/login_signup/header.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/login/login_screen.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/login/widget/social_buttons.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/signup/widget/sign_up_form.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const TAppBar(
          showBackButton: true,
        ),
        body: SingleChildScrollView(
          padding: TSpacingStyles.paddingWithHeightWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // logo widget
               const THeader(text: TTexts.createNewAccount,image: TImages.appLogo,),

              //Form
              const TSignUpForm(),

              //Divider
              const TFormDivider(text: "or ${TTexts.continueWith}",),

              //Social Button
              const TSocialRowButon(),


               TFooter(text: TTexts.alreadyHaveAccount,buttonText: TTexts.signIN,onPressed: (){
                 Get.to(const LoginScreen());
               },)

            ],
          ),
        ),
      ),
    );
  }
}

