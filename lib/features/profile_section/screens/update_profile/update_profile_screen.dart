import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/profile_section/controller/profile_controller.dart';
import 'package:foodu/features/profile_section/screens/update_profile/widget/profile_form.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
        title: Text("Update Profile"),
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
              SizedBox(width:double.infinity,child: ElevatedButton(onPressed: () {}, child: Text('Update')))
            ],
          ),
        ),
      ),
    );
  }
}