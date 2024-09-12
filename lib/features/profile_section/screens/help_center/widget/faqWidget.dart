
import 'package:flutter/cupertino.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_chip.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_divider.dart';
import 'package:foodu/features/profile_section/controller/help_center_controller.dart';
import 'package:foodu/features/profile_section/screens/help_center/widget/faq_item.dart';
import 'package:foodu/utils/constants/sizes.dart';
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
      padding: TSpacingStyles.paddingWithHeightWidth,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TCustomChip(label: "General"),
                TCustomChip(label: "Account"),
                TCustomChip(label: "Service"),
                TCustomChip(label: "Payment"),
              ],
            ),
          ),
          const TCustomDivider(),
          Expanded(
            child: Obx(() => ListView.separated(
              itemCount: controller.faqs.length,
              itemBuilder: (context, index) {
                return FAQItem(faq: controller.faqs[index]);
              }, separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: TSizes.md,);
            },
            )),
          ),
        ],
      ),
    );
  }
}