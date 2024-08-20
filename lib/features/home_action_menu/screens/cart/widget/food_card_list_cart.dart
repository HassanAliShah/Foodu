import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/features/home_action_menu/controller/cart_controller.dart';
import 'package:foodu/features/home_action_menu/screens/cart/widget/food_card_horizental_cart.dart';
import 'package:gap/gap.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FoodCardList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final  controller = CartController.instance;

    return Obx(
          () => ListView.separated(
        itemCount: controller.foodCards.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Slidable(
            direction: Axis.horizontal,
            endActionPane: ActionPane(motion:BehindMotion(), children: [
              SlidableAction(
                onPressed: (context){},
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20) ),
                backgroundColor: Color(0xffF75555),
                icon: Icons.delete,
                autoClose: true,
              )
            ]),
            child: FoodCardHorizontalCart(
              imageUrl: controller.foodCards[index].imageUrls,
              title: controller.foodCards[index].title,
              description: controller.foodCards[index].description,
              price: controller.foodCards[index].price,
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) {
          return Gap(5);
          },
      ),
    );
  }
}