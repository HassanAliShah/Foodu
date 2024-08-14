

import 'package:flutter/material.dart';
import 'package:foodu/features/account_setup/screens/location/widget/location_field_button_container.dart';
import 'package:foodu/features/account_setup/screens/profile_form/widget/textIconContainer.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SetYourLocation extends StatelessWidget {
  const SetYourLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(HText.setYourLocation),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.orange,
            height: HHelperFunctions.screenHeight() /1.2,
            width: HHelperFunctions.screenWidth(),
            child: Center(child: Text("Google Map",style: Theme.of(context).textTheme.headlineMedium,)),
          ),
          locationFieldAndButtonContainer(),
        ],
      ),
    ));
  }
}

