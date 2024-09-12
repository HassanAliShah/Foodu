import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/controller/discount_controller.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/discount/widget/discount_card.dart';
import 'package:get/get.dart';

class DiscountScreen extends StatelessWidget {
  DiscountScreen({super.key});

  final controller = Get.put(DiscountController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: TAppBar(
        showBackButton: true,
        title: Text("Get Discount",),
      ),
      body: Padding(
        padding: TSpacingStyles.paddingWithHeightWidth,
        child: Obx(() => ListView.builder(
          itemCount: controller.discounts.length,
          itemBuilder: (context, index) {
            print("Rebuilding UI, selected index: ${controller.selectedDiscountIndex.value}");
            var discount = controller.discounts[index];
            return DiscountCard(
              title: discount['title'] as String,
              description: discount['description'] as String,
              icon: discount['icon'] as IconData,
              isSelected: controller.selectedDiscountIndex.value == index,
              onTap: () => controller.selectDiscount(index),
            );
          },
        )),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(14),
        child: SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.back(), child: const Text("Apply"))),
      ),
    );
  }
}