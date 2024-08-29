

import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/order_section/screens/rate_the%20restaurent/rate_the_restaurent.dart';
import 'package:foodu/features/order_section/screens/tip_for_driver/widget/tip_selection_widget.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TipForDriverScreen extends StatelessWidget {
  const TipForDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: HSizes.defaultSpace,horizontal: HSizes.defaultSpace),
        child: TipSelectionWidget(
          driverImage: HImages.pic,
          title: "Wow 5 Star! 🤩",
          subtitle:
          "Do you want to add an additional tip to make your driver's day?",
          onCustomTipSelected: () {
            print("Custom tip selected");
          },
        ),
      ),
      //make this widget resuable
      bottomNavigationBar: Padding(
        padding:EdgeInsets.symmetric(vertical: 10,horizontal: 14),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'No Thanks',
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
                onPressed: () => Get.to(RateTheRestaurentScreen()),
                child: Text('Pay Tip'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
