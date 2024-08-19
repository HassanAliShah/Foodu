

import 'package:flutter/material.dart';
import 'package:foodu/features/navigation_menu/controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
            elevation: 20,
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            selectedItemColor: HColors.primary,
            unselectedItemColor: HColors.textGrey,
            showUnselectedLabels: true,
            backgroundColor: HColors.backgroundLight,
            type: BottomNavigationBarType.fixed,
          //landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
             items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(HImages.home))  ,label: 'Home',),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(HImages.order))  ,label: 'Order',),
          BottomNavigationBarItem(icon:  ImageIcon(AssetImage(HImages.chat))  ,label: 'Messages',),
          BottomNavigationBarItem(icon: ImageIcon( AssetImage(HImages.wallet))  ,label: 'E-wallet',),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(HImages.profile))   ,label: 'Profile',),
        ],),
      ),
      body: controller.screens[controller.selectedIndex.value],
    );
  }
}
