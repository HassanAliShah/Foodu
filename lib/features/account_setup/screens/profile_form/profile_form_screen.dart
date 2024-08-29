import 'package:flutter/material.dart';
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
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(HText.fillYourProfile),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: HSizes.defaultSpace,vertical: HSizes.defaultSpace),
          child: Column(
            children: [
              ProfileForm(),
              SizedBox(
                height: HSizes.defaultSpace,
              ),
              SizedBox(width:double.infinity,child: ElevatedButton(onPressed: () => Get.to(SetYourLocation()), child: Text(HText.continueB)))


            ],
          ),
        ),
      ),
    );
  }
}





