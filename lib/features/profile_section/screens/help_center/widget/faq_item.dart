import 'package:flutter/material.dart';
import 'package:foodu/features/profile_section/model/faq.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class FAQItem extends StatelessWidget {
  final FAQ faq;

  const FAQItem({super.key, required this.faq});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Obx(() => Container(
      decoration: ShapeDecoration(
        color: isDark ? TColors.darkCard : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C04060F),
            blurRadius: 60,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: ExpansionTile(
        title: Text(faq.question, style:Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
        trailing: Icon(
          faq.isExpanded.value ? Icons.expand_less : Icons.expand_more,
          color: Colors.green,
        ),
        onExpansionChanged: (expanded) {
          faq.isExpanded.value = expanded;
        },
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(faq.answer, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: TColors.textGrey)),
          ),
        ],
      ),
    ));
  }
}
