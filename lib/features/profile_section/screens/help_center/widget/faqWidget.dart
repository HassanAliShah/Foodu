
import 'package:flutter/cupertino.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_chip.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_divider.dart';
import 'package:foodu/features/profile_section/controller/help_center_controller.dart';
import 'package:foodu/features/profile_section/screens/help_center/widget/faq_item.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class FaqWidget extends StatelessWidget {
  const FaqWidget({
    super.key,
    required this.controller,
  });

  final HelpCenterController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: HSpacingStyles.paddingWithHeightWidth,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomChip(label: "General"),
                CustomChip(label: "Account"),
                CustomChip(label: "Service"),
                CustomChip(label: "Payment"),
              ],
            ),
          ),
          custom_divider(),
          Expanded(
            child: Obx(() => ListView.builder(
              itemCount: controller.faqs.length,
              itemBuilder: (context, index) {
                return FAQItem(faq: controller.faqs[index]);
              },
            )),
          ),
        ],
      ),
    );
  }
}