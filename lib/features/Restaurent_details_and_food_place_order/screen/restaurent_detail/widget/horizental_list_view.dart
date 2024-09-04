import 'package:flutter/cupertino.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/controller/restaurent_controller.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_detail/widget/vertical_food_card_restaurent.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class HorizontalFoodList extends StatelessWidget {
  const HorizontalFoodList({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = RestaurantController.instance;
    return Padding(
      padding:  const EdgeInsets.only(left:TSizes.defaultSpace),
      child: SizedBox(
        height: THelperFunctions.screenHeight() / 3.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.foodItems.length,
          itemBuilder: (context, index) {
            final item = controller.foodItems[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: VerticalFoodCardRestaurent(
                imageUrl: item['imageUrl'],
                title: item['title'],
                price: item['price'],
                badgeText: item['badgeText'],
              ),
            );
          },
        ),
      ),
    );
  }
}