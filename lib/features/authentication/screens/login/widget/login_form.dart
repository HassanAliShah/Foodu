import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/phone_number_field.dart';
import 'package:get/get.dart';
import '../../../../../routes/routes.dart';
import '../../../../../utils/exports.dart';
import '../../../controller/login_controller.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = LoginController.instance;
    return Form(
      child: Column(
        spacing: TSizes.spaceBtwItems,
        children: [
          /// OTP Field
          const TPhoneNumberField(),

          /// Remember Me Checkbox
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(()=> Checkbox(value: controller.rememberMe.value, onChanged: (value) => controller.rememberMe.value = value!)),
              Text(TTexts.rememberMe.tr, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),

          /// Sign in Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () => Get.toNamed(TRoutes.otp), child: Text(TTexts.signIN.tr)),
          ),
        ],
      ),
    );
  }
}
