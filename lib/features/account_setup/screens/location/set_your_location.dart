

import 'package:flutter/material.dart';
import 'package:foodu/features/account_setup/screens/location/widget/location_field_button_container.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

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
            icon: const Icon(Icons.arrow_back)),
        title: const Text(HText.setYourLocation),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.orange,
            height: THelperFunctions.screenHeight() /1.2,
            width: THelperFunctions.screenWidth(),
            child: Center(child: Text("Google Map",style: Theme.of(context).textTheme.headlineMedium,)),
          ),
          const locationFieldAndButtonContainer(),
        ],
      ),
    ));
  }
}

