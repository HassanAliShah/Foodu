import 'package:flutter/cupertino.dart';
import 'package:foodu/features/home_action_menu/controller/cart_controller.dart';
import 'package:foodu/features/home_action_menu/screens/cart/widget/food_card_horizental_cart.dart';
import 'package:gap/gap.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class FoodCardList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final  controller = CartController.instance;

    return Obx(
          () => ListView.separated(
        itemCount: controller.foodCards.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return FoodCardHorizontalCart(
            imageUrl: controller.foodCards[index].imageUrls,
            title: controller.foodCards[index].title,
            description: controller.foodCards[index].description,
            price: controller.foodCards[index].price,
          );
        }, separatorBuilder: (BuildContext context, int index) {
          return Gap(5);
          },
      ),
    );
  }
}