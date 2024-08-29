import 'package:flutter/material.dart';
import 'package:foodu/features/order_section/controller/order_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:get/get.dart';

class TipSelectionWidget extends StatelessWidget {
  final String driverImage;
  final String title;
  final String subtitle;
  final VoidCallback onCustomTipSelected;


  TipSelectionWidget({
    Key? key,
    required this.driverImage,
    required this.title,
    required this.subtitle,
    required this.onCustomTipSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  controller = OrderController.instance;
    return Column(
      children: [
        // Driver's Image
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage(driverImage),
        ),
        const SizedBox(height: 20.0),
        // Title with Emoji
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: HColors.textblack),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10.0),
        // Subtitle
        Text(
          subtitle,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: HColors.textGrey),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20.0),
        // Tip Options
        Wrap(
          spacing: 30.0,
          runSpacing: 15.0,
          children: controller.tips.map((tip) {
            return Obx(() => GestureDetector(
              onTap: () => controller.updateSelectedTip(tip),
              child: Container(
                width: 60.0,
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: HColors.primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  color: controller.selectedTip.value == tip
                      ? HColors.primary
                      : Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    "\$$tip",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: controller.selectedTip.value == tip
                          ? HColors.backgroundLight
                          : HColors.primary,
                    ),
                  ),
                ),
              ),
            ));
          }).toList(),
        ),
        const SizedBox(height: 20.0),
        // Custom Tip Entry Text
        GestureDetector(
          onTap: onCustomTipSelected,
          child:  Text(
            "Enter custom amount",
            style: Theme.of(context).textTheme.titleMedium
          ),
        ),
      ],
    );
  }
}
