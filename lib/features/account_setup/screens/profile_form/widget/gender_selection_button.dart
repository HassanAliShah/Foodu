import 'package:flutter/material.dart';
import 'package:foodu/features/account_setup/controller/profile_form_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
class GenderSelectionButton extends StatelessWidget {
  const GenderSelectionButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = ProfileFormController.instance;
    return Container(
      width: double.infinity,
      height: TSizes.buttonHeight,
      padding: const EdgeInsets.symmetric(horizontal: TSizes.appBarHeight),
      decoration: ShapeDecoration(
        color: TColors.textFieldFillColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TSizes.md),
        ),
      ),
      child: Obx(
            () => DropdownButton(

          value: controller.dropDownValue.value,
          style: Theme.of(context).textTheme.bodySmall,
          elevation: 0,
          borderRadius: BorderRadius.circular(TSizes.md),
          isExpanded: true,
          underline: const SizedBox(),

          icon: const Icon(Icons.keyboard_arrow_down),

          items: controller.items.map((String item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (String? newValue) {
            controller.dropDownValue.value = newValue!; // Update the value of RxString
          },
        ),
      ),
    );
  }
}