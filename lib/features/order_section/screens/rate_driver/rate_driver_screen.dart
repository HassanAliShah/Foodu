

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/order_section/screens/rate_driver/widget/driver_rating_widget.dart';
import 'package:foodu/features/order_section/screens/tip_for_driver/tip_for_driver_screen.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RateDriverScreen extends StatelessWidget {
  const RateDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: HSizes.defaultSpace,vertical: HSizes.defaultSpace),
        child: DriverRatingWidget(
          driverImage: HImages.pic,
          title: "Let’s rate your driver’s delivery service",
          subtitle: "How was the delivery of your order from Big Garden Salad?",
          onRatingChanged: (rating) {
          },
          onCallDriverPressed: () {

          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding:EdgeInsets.symmetric(vertical: 10,horizontal: 14),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: TextStyle(color: HColors.primary),
                ),
                style: OutlinedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color(0xFFE8F7ED),
                    side: const BorderSide(color: Color(0xFFE8F7ED)),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    textStyle: TextStyle(
                        fontSize: 14,
                        color: HColors.primary,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: () => Get.to(TipForDriverScreen()),
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
