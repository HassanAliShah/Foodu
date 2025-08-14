import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../screens/let_you_in/let_you_in.dart';

/// -- On Boarding Controller for Managing the OnBoarding Screen
class OnBoardingController extends GetxController {

  /// -- Singleton Instance
  static OnBoardingController get instance => Get.isRegistered() ? Get.find() : Get.put(OnBoardingController());

  /// -- Observables
  Rx<int> currentPageIndex = 0.obs;
  final pageController = PageController();

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      currentPageIndex.value = 0;
      // Remove all the previous Screens and Launch Login
      Get.offAllNamed(TRoutes.letYouIn);
    } else {
      currentPageIndex.value++;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }
}
