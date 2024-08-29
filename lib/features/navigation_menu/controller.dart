

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/features/chats/screens/chat_screen/chat_screen.dart';
import 'package:foodu/features/home_action_menu/screens/home/home_screen.dart';
import 'package:foodu/features/order_section/screens/order_tab/order_screen.dart';
import 'package:foodu/features/wallet/screens/e_wallet/e_wallet_screen.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{

  final RxInt selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    OrderScreen(),
    ChatScreen(),
    EWalletScreen(),
    Container(color: Colors.tealAccent,),
  ];
}