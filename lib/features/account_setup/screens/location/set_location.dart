import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/account_setup/screens/location/widget/location_field_button_container.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return SafeArea(child: Scaffold(
      appBar: TAppBar(
        showBackButton: true,
        title: Text(TTexts.setYourLocation.tr),
      ),
      body: Stack(
        children: [
          /// -- Location Image
          Container(
            height: THelperFunctions.screenHeight(),
            width: THelperFunctions.screenWidth(),
            color: Colors.white,
            child: Image.asset( isDark ? TImages.darkUserLocation : TImages.lightUserLocation,fit: BoxFit.cover )),

          /// -- Location Bottom Widget
          const LocationFieldAndButtonContainer(),
        ],
      ),
    ));
  }
}

