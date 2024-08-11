

import 'package:flutter/cupertino.dart';
import 'package:foodu/features/authentication/screens/login/login_screen.dart';
import 'package:foodu/features/authentication/screens/signup/sign_up_screen.dart';
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
      Get.offAll( () => const SignUpScreen());
    }else
      {
        pageController.jumpToPage(currentPageIndex.value++);
      }
  }


}