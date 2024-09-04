import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscountController extends GetxController {
  RxInt selectedDiscountIndex = 0.obs;

  final RxList<Map<String,dynamic>> discounts = [
    {'title': 'New User Promo', 'description': 'Only valid for new users', 'icon': Icons.person},
    {'title': 'Discount 20% OFF', 'description': '20% discount on all menus', 'icon': Icons.local_offer},
    {'title': 'Free Delivery Fee', 'description': 'Free delivery max \$4.00', 'icon': Icons.local_shipping},
    {'title': 'Weekend Special', 'description': 'Valid on Saturday & Sunday', 'icon': Icons.calendar_today},
    {'title': 'Year End Promo', 'description': 'Christmas & New year promo', 'icon': Icons.card_giftcard},
  ].obs;


  void selectDiscount(int index) {
    selectedDiscountIndex.value = index;
  }
}