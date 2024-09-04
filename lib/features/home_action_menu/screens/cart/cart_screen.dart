

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/home_action_menu/controller/cart_controller.dart';
import 'package:foodu/features/home_action_menu/screens/cart/widget/food_card_list_cart.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    return Scaffold(
      appBar: HAppBar(
        title: Text('My Cart',style: Theme.of(context).textTheme.bodySmall,),
        showBackButton: true,
      ),
      body: Padding(padding: HSpacingStyles.paddingWithHeightWidth,
      child: const SingleChildScrollView(child: FoodCardList()),),
    );
  }
}
