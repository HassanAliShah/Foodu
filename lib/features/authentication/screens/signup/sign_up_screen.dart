
import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/login_signup/footer.dart';
import 'package:foodu/common/widgets/login_signup/form_divider.dart';
import 'package:foodu/common/widgets/login_signup/header.dart';
import 'package:foodu/common/widgets/login_signup/social_buttons.dart';
import 'package:foodu/features/authentication/screens/signup/widget/sign_up_form.dart';
import 'package:foodu/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          padding: HSpacingStyles.paddingWithAppHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo widget
              HHeader(text: HText.createNewAccount,),

              //Form
              HSignUpForm(),

              //Divider
              HFormDivider(text: HText.continueWith,),

              //Social Button
              HSocialRowButon(),


              HFooter(text: HText.alreadyHaveAccount,)

            ],
          ),
        ),
      ),
    );
  }
}

