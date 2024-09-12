import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/features/account_setup/screens/profile_form/profile_form_screen.dart';
import 'package:foodu/features/onboarding_signup_signin/controller/otp_controller.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/otp/widget/textfield_and_time.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =  Get.put(OtpController());
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(TText.otpCodeVerification),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: TSpacingStyles.paddingWithHeightWidth,
        child: Column(
          children: [
            // otp text box and time
            const TextFeildandTime(),

            SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: ()=> Get.to(const ProfileFormScreen()), child: const Text(TText.verify)))
          ],
        ),
      ),
    ));
  }
}
