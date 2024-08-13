
import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
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
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          padding: EdgeInsets.only(top: HSizes.spaceBtwSection,left: HSizes.defaultSpace,right :HSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo widget
              HHeader(text: HText.loginYourAccount,image: HImages.appLogo,),

              //Form
              HLoginForm(),

              //Divider
              HFormDivider(text: HText.continueWith,),

              //Social Button
              HSocialRowButon(),


              HFooter(text:HText.dontHaveAccount,buttonText: HText.signUp,onPressed: (){
                Get.to(SignUpScreen());
              },)

            ],
          ),
        ),
      ),
    );
  }
}




