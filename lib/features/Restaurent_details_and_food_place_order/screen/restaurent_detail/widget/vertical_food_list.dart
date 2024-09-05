
import 'package:flutter/cupertino.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/controller/restaurent_controller.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_detail/widget/horizental_food_card_restaurent.dart';
import 'package:foodu/utils/constants/sizes.dart';


class VerticalFoodList extends StatelessWidget {
  const VerticalFoodList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = RestaurantController.instance;
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller.foodItems.length,
          itemBuilder: (context, index) {
            final item = controller.foodItems[index];
            return HorizontalFoodCardRestaurent(
              imageUrl: item['imageUrl'],
              title: item['title'],
              price: item['price'],
              badgeText: item['badgeText'],
            );
          }
      ),
    );
  }
}