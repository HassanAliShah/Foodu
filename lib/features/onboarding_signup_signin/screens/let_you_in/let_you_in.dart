

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/login_signup/footer.dart';
import 'package:foodu/common/widgets/login_signup/form_divider.dart';
import 'package:foodu/common/widgets/login_signup/header.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/let_you_in/widget/social_button_with_icon.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/signup/sign_up_screen.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class LetYouInScreen extends StatelessWidget {
  const LetYouInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return SafeArea(child: Scaffold(
      body: Padding(padding: TSpacingStyles.paddingWithHeightWidth
        ,child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             THeader(text: TText.letYouIn, image: isDark  ?  TImages.darkLetYouIn :TImages.letYouIn),
            //Form
            const SocialButtoWithIcon(),
            const TFormDivider(text: 'or'),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){}, child: const Text(TText.signInWithPhoneNo)
              )),
            TFooter(text: TText.alreadyHaveAccount, onPressed: ()=> Get.to(const SignUpScreen()) , buttonText: TText.signUp)
          ],
        ),),
    ));
  }
}

