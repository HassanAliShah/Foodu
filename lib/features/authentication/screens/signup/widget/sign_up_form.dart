import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/phone_number_field.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import '../../../../../routes/routes.dart';
import '../../../controller/sign_up_controller.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.instance;
    final isDark = THelperFunctions.isDarkMode(context);

    /// Form
    return Form(
      child: Column(
        children: [
          /// Phone Number
          const TPhoneNumberField(),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          /// Email Text Field
          SizedBox(
            height: TSizes.buttonHeight,
            child: TextField(
              controller: controller.emailController,
              focusNode: controller.emailFocusNode,
              cursorHeight: TSizes.lg,
              cursorColor: TColors.primary,
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                hintText: TTexts.email.tr,
                prefixIcon: Obx(() => Icon(
                      IconlyBold.message,
                      color: controller.emailIconColor.value,
                    )),
                hintStyle: Theme.of(context).textTheme.titleSmall,
                fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
              ),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          /// Full Name Text Field
          SizedBox(
            height: TSizes.buttonHeight,
            child: TextField(
              controller: controller.fullNameController,
              focusNode: controller.fullNameFocusNode,
              cursorHeight: TSizes.lg,
              cursorColor: TColors.primary,
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                hintText: TTexts.fullName.tr,
                prefixIcon: Obx(() => Icon(
                      IconlyBold.profile,
                      color: controller.fullNameIconColor.value,
                    )),
                hintStyle: Theme.of(context).textTheme.titleSmall,
                fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
              ),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems / 2,
          ),

          /// Remember Me Checkbox
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Checkbox(value: controller.rememberMe.value, onChanged: (value) => controller.rememberMe.value = value!)),
              Text(TTexts.rememberMe, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems / 2,
          ),

          /// Sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () => Get.toNamed(TRoutes.profileForm), child: Text(TTexts.signUp.tr)),
          ),
        ],
      ),
    );
  }
}
