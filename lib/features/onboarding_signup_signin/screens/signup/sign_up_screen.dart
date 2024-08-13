
import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/login_signup/footer.dart';
import 'package:foodu/common/widgets/login_signup/form_divider.dart';
import 'package:foodu/common/widgets/login_signup/header.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/login/login_screen.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/login/widget/social_buttons.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/signup/widget/sign_up_form.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          padding: HSpacingStyles.paddingWithHeightWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // logo widget
               HHeader(text: HText.createNewAccount,image: HImages.appLogo,),

              //Form
              const HSignUpForm(),

              //Divider
              HFormDivider(text: "or ${HText.continueWith}",),

              //Social Button
              const HSocialRowButon(),


               HFooter(text: HText.alreadyHaveAccount,buttonText: HText.signIN,onPressed: (){
                 Get.to(LoginScreen());
               },)

            ],
          ),
        ),
      ),
    );
  }
}

