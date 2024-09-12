import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/account_setup/controller/profile_form_controller.dart';
import 'package:foodu/features/account_setup/screens/location/set_your_location.dart';
import 'package:foodu/features/account_setup/screens/profile_form/widget/profile_form.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class ProfileFormScreen extends StatelessWidget {
  const ProfileFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileFormController());
    return Scaffold(
      appBar: const TAppBar(
        showBackButton: true,
        title: Text(TTexts.fillYourProfile),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace,vertical: TSizes.defaultSpace),
          child: Column(
            children: [
              const ProfileForm(),
              const SizedBox(
                height: TSizes.defaultSpace,
              ),
              SizedBox(width:double.infinity,child: ElevatedButton(onPressed: () => Get.to(const SetYourLocation()), child: const Text(TTexts.continueB)))


            ],
          ),
        ),
      ),
    );
  }
}





