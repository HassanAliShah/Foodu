
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/footer.dart';
import 'package:foodu/common/widgets/login_signup/form_divider.dart';
import 'package:foodu/common/widgets/login_signup/header.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/login/widget/login_form.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/login/widget/social_buttons.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/signup/sign_up_screen.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Get.back();
          }, icon: const Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: TSizes.spaceBtwSection,left: TSizes.defaultSpace,right :TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo widget
              const HHeader(text: HText.loginYourAccount,image: HImages.appLogo,),

              //Form
              const HLoginForm(),

              //Divider
              const HFormDivider(text: HText.continueWith,),

              //Social Button
              const HSocialRowButon(),


              HFooter(text:HText.dontHaveAccount,buttonText: HText.signUp,onPressed: (){
                Get.to(const SignUpScreen());
              },)

            ],
          ),
        ),
      ),
    );
  }
}




