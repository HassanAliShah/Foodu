import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/order_section/controller/order_controller.dart';
import 'package:foodu/features/order_section/screens/rate_driver/rate_driver_screen.dart';
import 'package:foodu/features/order_section/screens/whats_your_mind/widget/emoji_list.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WhatsYourMind extends StatelessWidget {
  const WhatsYourMind({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OrderController.instance;
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
      ),
      body: Padding(
        padding: HSpacingStyles.paddingWithHeightWidth,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text("What's Your Mood!",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: HColors.textblack)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Text('about this order?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: HColors.textGrey)),
            ),
            EmojiListWidget(
              emojiList: controller.myEmojis,
              emojiSize: 80.0,
              borderRadius: 12.0,
              borderWidth: 2.0,
            ),
          ],
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
                onPressed: () => Get.to(RateDriverScreen()),
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
