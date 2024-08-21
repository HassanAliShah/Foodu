import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/features/home_action_menu/controller/filter_controller.dart';
import 'package:foodu/features/home_action_menu/screens/filter/widget/filter_selection.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FilterController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Obx(() => FilterSection(
              title: 'Sort by',
              radioButton: true,
              options: controller.sortByOptions.value,
              selectedOptions: controller.selectedSortByIndex.value,
              onOptionSelected: (index) {
                controller.toggleOption(0, index);
              },
            )),
            Obx(() => FilterSection(
              title: 'Restaurant',
              radioButton: true,
              options: controller.restaurantOptions.value,
              selectedOptions: controller.restaurantSelectedByIndex.value,
              onOptionSelected: (index) {
                controller.toggleOption(1, index);
              },
            )),
            Obx(() => FilterSection(
              title: 'Delivery Fee',
              radioButton: true,
              options: controller.deliveryFeeOptions.value,
              selectedOptions: controller.selectedDeliveryFeeIndex.value,
              onOptionSelected: (index) {
                controller.toggleOption(2, index);
              },
            )),
            Obx(() => FilterSection(
              title: 'Mode',
              radioButton: true,
              options: controller.modeOptions.value,
              selectedOptions: controller.selectedModeIndex.value,
              onOptionSelected: (index) {
                controller.toggleOption(3, index);
              },
            )),
            Obx(() => FilterSection(
              title: 'Cuisines',
              radioButton: false,
              options: controller.cuisinesOptions.value,
              selectedOptions: controller.cuisinesSelected.value,
              onOptionSelected: (index) {
                controller.toggleOption(4, index);
              },
            )),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(onPressed: (){}, child: Text('Reset',style: TextStyle(color: HColors.primary),),style: OutlinedButton.styleFrom(
                elevation: 0,
                backgroundColor: Color(0xFFE8F7ED),
                side:  const BorderSide(color:Color(0xFFE8F7ED)),
                padding: const EdgeInsets.symmetric(vertical:  14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  textStyle:   TextStyle(fontSize: 14, color: HColors.primary,fontWeight: FontWeight.w700)
              ),),
            ),
            SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                },
                child: Text('Apply'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}