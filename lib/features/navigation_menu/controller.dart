

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/features/home_action_menu/screens/home/home_screen.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{

  final RxInt selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.pinkAccent,),
    Container(color: Colors.green,),
    Container(color: Colors.tealAccent,),
  ];
}