

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/login_signup/footer.dart';
import 'package:foodu/common/widgets/login_signup/form_divider.dart';
import 'package:foodu/common/widgets/login_signup/header.dart';
import 'package:foodu/common/widgets/login_signup/social_icon.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/let_you_in/widget/social_button_with_icon.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/signup/sign_up_screen.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LetYouInScreen extends StatelessWidget {
  const LetYouInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(padding: HSpacingStyles.paddingWithHeightWidth
        ,child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HHeader(text: HText.letYouIn, image: HImages.letYouIn),
            //Form
            SocialButtoWithIcon(),
            HFormDivider(text: 'or'),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){}, child: Text(HText.signInWithPhoneNo)
              )),
            HFooter(text: HText.alreadyHaveAccount, onPressed: ()=> Get.to(SignUpScreen()) , buttonText: HText.signUp)
          ],
        ),),
    ));
  }
}

