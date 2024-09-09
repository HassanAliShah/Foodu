

import 'package:flutter/material.dart';
import 'package:foodu/features/order_section/screens/cancel_order/cancel_order_screen.dart';
import 'package:foodu/features/order_section/screens/track_order/driver_information/driver_information.dart';
import 'package:foodu/features/order_section/screens/track_order/widget/driver_card_info.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: isDark ? TColors.backgroundDark : TColors.backgroundLight,
        body: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children:[
                SizedBox(
                height: THelperFunctions.screenHeight() /1.37,
                child: Image.asset( isDark ?TImages.darkTrackDriver : TImages.lightTrackDriver,fit: BoxFit.fill,),
              ),
                Positioned(
                  top: 21,
                  left: 22,
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(12),
                      decoration: ShapeDecoration(
                        color: isDark ? const Color(0xff616161) : Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: const Center(child: BackButtonIcon(),),
                    ),
                  ),
                )
              ]
            ),
            InkWell(
              onTap: () => Get.to(const DriverInformationScreen()),
              child: DriverInfoCard(
                driverName: 'Rayfore Chanil',
                vehicleName: 'Yamaha mx king',
                vehiclePlate: 'HSW 476 XK',
                rating: 4.5,
                driverImageUrl: TImages.pic,
                onCancel: () => Get.to(const CancelOrderScreen()),
                onMessage: () {  },
                onCall: () {  },),
            ),
          ],
        ),
      ),
    );
  }
}
