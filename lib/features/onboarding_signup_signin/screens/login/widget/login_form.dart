import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/phone_number_field.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/otp/otp_screen.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class HLoginForm extends StatelessWidget {
  const HLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSection),
      child: Column(
        children: [
          const PhoneNumberField(),
          const SizedBox(height: TSizes.sm),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              Text(HText.rememberMe, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const SizedBox(
            height: TSizes.sm,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(const OtpScreen());
                },
                child: const Text(HText.signIN)),
          ),
        ],
      ),
    ));
  }
}
