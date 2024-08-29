

import 'package:flutter/material.dart';
import 'package:foodu/features/order_section/screens/cancel_order/cancel_order_screen.dart';
import 'package:foodu/features/order_section/screens/track_order/driver_information/driver_information.dart';
import 'package:foodu/features/order_section/screens/track_order/widget/driver_card_info.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA4DEB7),
      body: Column(
        children: [
          Stack(
            children:[
              Container(
              color: Colors.greenAccent.shade100,
              height: HHelperFunctions.screenHeight() /1.338,
              child: Center(child: Text("Google Map"),),
            ),
              Positioned(
                top: 40,
                left: 30,
                child: Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: ShapeDecoration(
                    color: Color(0xFFA4DEB7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Center(child: BackButtonIcon(),),
                ),
              )

            ]
          ),
          InkWell(
            onTap: () => Get.to(DriverInformationScreen()),
            child: DriverInfoCard(
              driverName: 'Rayfore Chanil',
              vehicleName: 'Yamaha mx king',
              vehiclePlate: 'HSW 476 XK',
              rating: 4.5,
              driverImageUrl: HImages.pic,
              onCancel: () => Get.to(CancelOrderScreen()),
              onMessage: () {  },
              onCall: () {  },),
          ),
        ],
      ),
    );
  }
}
