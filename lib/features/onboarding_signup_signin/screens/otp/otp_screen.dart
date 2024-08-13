import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/features/onboarding_signup_signin/controller/otp_controller.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/otp/widget/textfield_and_time.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =  Get.put(OtpController());
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(HText.otpCodeVerification),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: HSpacingStyles.paddingWithHeightWidth,
        child: Column(
          children: [
            // otp text box and time
            TextFeildandTime(),

            SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: Text(HText.verify)))
          ],
        ),
      ),
    ));
  }
}
