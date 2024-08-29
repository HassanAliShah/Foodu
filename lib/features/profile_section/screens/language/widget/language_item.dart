import 'package:flutter/material.dart';
import 'package:foodu/features/profile_section/controller/profile_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:get/get.dart';
class LanguageItem extends StatelessWidget {
  final String language;

  LanguageItem({required this.language});

  @override
  Widget build(BuildContext context) {
    final controller = ProfileController.instance;

    return Obx(() => ListTile(
      title: Text(language,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),),
      trailing: controller.selectedLanguage.value == language
          ? Icon(Icons.check_circle, color: HColors.primary)
          : Icon(Icons.circle, color: Colors.grey),
      onTap: () {
        controller.changeLanguage(language);
      },
    ));
  }
}
