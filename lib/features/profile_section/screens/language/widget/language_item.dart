import 'package:flutter/material.dart';
import 'package:foodu/features/profile_section/controller/profile_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:get/get.dart';
class LanguageItem extends StatelessWidget {
  final String language;

  const LanguageItem({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    final controller = ProfileController.instance;

    return Obx(() => ListTile(
      title: Text(language,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),),
      trailing: controller.selectedLanguage.value == language
          ? const Icon(Icons.check_circle, color: TColors.primary)
          : const Icon(Icons.circle, color: Colors.grey),
      onTap: () {
        controller.changeLanguage(language);
      },
    ));
  }
}
