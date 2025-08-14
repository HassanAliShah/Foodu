import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/routes/routes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'widget/textfield_and_time.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TAppBar(
          showBackButton: true,
          title: Text(TTexts.otpCodeVerification.tr, style: Theme.of(context).textTheme.titleLarge!.apply(fontSizeFactor: 0.8)),
        ),
        body: Padding(
          padding: TSpacingStyles.paddingWithHeightWidth,
          child: Column(
            children: [
              /// Otp text box and time
              const TextFieldAndTime(),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.toNamed(TRoutes.profileForm), child: Text(TTexts.verify.tr)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
