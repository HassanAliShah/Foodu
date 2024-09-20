import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/account_setup/screens/profile_form/profile_form_screen.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';

import '../../controller/otp_controller.dart';
import 'widget/textfield_and_time.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OtpController());
    return SafeArea(
      child: Scaffold(
        appBar: TAppBar(
          showBackButton: true,
          title: Text('OTP Code Verification', style: Theme.of(context).textTheme.titleLarge!.apply(fontSizeFactor: 0.8)),
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
                child: ElevatedButton(onPressed: () => Get.to(const ProfileFormScreen()), child: const Text(TTexts.verify)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
