import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/order_section/screens/rate_the%20restaurent/widget/order_feedback_widget.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';

class RateTheRestaurentScreen extends StatelessWidget {
  const RateTheRestaurentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: HSizes.defaultSpace, vertical: HSizes.defaultSpace),
          child: OrderFeedbackWidget(
            imageUrl: HImages.mixid_salad,
            title: 'How was the delivery of your order from Big Garden Salad?',
            subtitle:
                'Enjoyed your food? Rate the restaurant, your feedback is matters.',
            onRatingChanged: (rating) {},
          )),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
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
                onPressed: () {},
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
