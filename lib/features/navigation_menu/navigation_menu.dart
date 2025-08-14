

import 'package:flutter/material.dart';
import 'package:foodu/features/navigation_menu/controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
            elevation: 20,
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            selectedItemColor: TColors.primary,
            unselectedItemColor: TColors.iconGreyColor,
            selectedLabelStyle: const TextStyle(fontSize: 12,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold, color: TColors.textblack),
            unselectedLabelStyle: const TextStyle(fontSize: 12,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold, color: TColors.textblack),
            showUnselectedLabels: true,
            backgroundColor: isDark ? const Color(0xD8181A20)  : TColors.backgroundLight,
            type: BottomNavigationBarType.fixed,
             items:  [
          BottomNavigationBarItem(icon: controller.selectedIndex.value  == 0 ? const Icon(IconlyBold.home,color: TColors.primary,)  : const Icon(IconlyLight.home,color: TColors.iconGreyColor,) ,label: 'Home',),
          BottomNavigationBarItem(icon: controller.selectedIndex.value  == 1 ? const Icon(IconlyBold.document,color: TColors.primary,)  : const Icon(IconlyLight.document,color: TColors.iconGreyColor,),label: 'Order',),
          BottomNavigationBarItem(icon: controller.selectedIndex.value  == 2 ? const Icon(IconlyBold.chat,color: TColors.primary,)  : const Icon(IconlyLight.chat,color: TColors.iconGreyColor,)  ,label: 'Messages',),
          BottomNavigationBarItem(icon: controller.selectedIndex.value  == 3 ? const Icon(IconlyBold.wallet,color: TColors.primary,)  : const Icon(IconlyLight.wallet,color: TColors.iconGreyColor,) ,label: 'E-wallet',),
          BottomNavigationBarItem(icon: controller.selectedIndex.value  == 4 ? const Icon(IconlyBold.profile,color: TColors.primary,)  : const Icon(IconlyLight.profile,color: TColors.iconGreyColor,)   ,label: 'Profile',),
        ],),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
