

import 'package:flutter/cupertino.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/let_you_in/let_you_in.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index){
    print(index);
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage(){
    if(currentPageIndex.value == 3){
      Get.offAll( () => const LetYouInScreen());
    }else
      {
        pageController.jumpToPage(currentPageIndex.value++);
      }
  }


}