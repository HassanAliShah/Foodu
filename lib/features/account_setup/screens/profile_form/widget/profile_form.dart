import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/phone_number_field.dart';
import 'package:foodu/features/account_setup/controller/profile_form_controller.dart';
import 'package:foodu/features/account_setup/screens/profile_form/widget/profile_pic_selection.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iconly/iconly.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller = ProfileFormController.instance;
    return Form(
        child: Column(
      spacing: TSizes.spaceBtwItems,
      children: [
        /// -- Profile Image
        const ProfilePicSelection(),

        /// -- Full name text field
        SizedBox(
          height: TSizes.buttonHeight,
          child: TextField(
            cursorHeight: TSizes.lg,
            cursorColor: TColors.primary,
            style: Theme.of(context).textTheme.bodySmall,
            decoration: InputDecoration(
              hintText: TTexts.fullName.tr,
              fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
              hintStyle: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),

        /// -- Nick name text Field
        SizedBox(
          height: TSizes.buttonHeight,
          child: TextField(
            cursorHeight: TSizes.lg,
            cursorColor: TColors.primary,
            style: Theme.of(context).textTheme.bodySmall,
            decoration: InputDecoration(
              hintText: TTexts.nickName.tr,
              fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
              hintStyle: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),

        /// -- Email text Field
        SizedBox(
          height: TSizes.buttonHeight,
          child: TextField(
            cursorHeight: TSizes.lg,
            cursorColor: TColors.primary,
            focusNode: controller.emailFocusNode,
            controller: controller.emailController,
            style: Theme.of(context).textTheme.bodySmall,
            decoration: InputDecoration(
              suffixIcon: Obx(() => Icon(
                    IconlyLight.message,
                    color: controller.emailIconColor.value,
                  )),
              fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
              hintText: TTexts.email.tr,
              hintStyle: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),

        /// -- Date of birth
        SizedBox(
          height: TSizes.buttonHeight,
          child: TextField(
            cursorHeight: TSizes.lg,
            cursorColor: TColors.primary,
            readOnly: true,
            onTap: () => controller.datePicker(context),
            controller: controller.dateOfBirthController,
            style: Theme.of(context).textTheme.bodySmall,
            decoration: InputDecoration(
              suffixIcon: Obx(() => Icon(
                    IconlyLight.calendar,
                    color: controller.dateOfBirthIconColor.value,
                  )),
              fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
              hintText: TTexts.dateOfBirth,
              hintStyle: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),

        /// -- Phone Number Field
        const TPhoneNumberField(),

        /// -- Gender
        SizedBox(
          height: TSizes.buttonHeight,
          child: TextField(
            cursorHeight: TSizes.lg,
            cursorColor: TColors.primary,
            readOnly: true,
            onTap: () => controller.showGenderPicker(context),
            controller: controller.genderController,
            style: Theme.of(context).textTheme.bodySmall,
            decoration: InputDecoration(
              suffixIcon: Obx(() => Icon(
                IconlyBold.arrow_down_2,
                color: controller.genderIconColor.value,
              )),
              fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
              hintText: TTexts.gender.tr,
              hintStyle: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),

      ],
    ));
  }
}
