import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/account_setup/screens/profile_form/widget/profile_form.dart';
import 'package:foodu/routes/routes.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class ProfileFormScreen extends StatelessWidget {
  const ProfileFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackButton: true,
        title: Text(TTexts.fillYourProfile.tr),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace,vertical: TSizes.defaultSpace),
          child: Column(
            spacing: TSizes.spaceBtwSection,
            children: [
              /// -- Profile Form
              const ProfileForm(),

              /// -- continue button
              SizedBox(width:double.infinity,child: ElevatedButton(onPressed: () => Get.toNamed(TRoutes.setLocation), child: Text(TTexts.continueB.tr)))
            ],
          ),
        ),
      ),
    );
  }
}





