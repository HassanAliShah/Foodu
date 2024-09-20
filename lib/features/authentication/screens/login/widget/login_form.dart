import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/phone_number_field.dart';
import 'package:get/get.dart';

import '../../../../../utils/exports.dart';
import '../../otp/otp_screen.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSection),
        child: Column(
          children: [
            /// OTP Field
            const TPhoneNumberField(),
            const SizedBox(height: TSizes.sm),

            /// Remember Me Checkbox
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(TTexts.rememberMe, style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            const SizedBox(height: TSizes.sm),

            /// Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.to(const OtpScreen()), child: const Text(TTexts.signIN)),
            ),
          ],
        ),
      ),
    );
  }
}
