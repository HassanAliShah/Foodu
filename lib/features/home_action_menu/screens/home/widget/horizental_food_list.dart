import 'package:flutter/cupertino.dart';
import 'package:foodu/common/widgets/custom_shapes/container/food_card_horizental.dart';
import 'package:foodu/common/widgets/custom_shapes/container/food_card_vertical.dart';
import 'package:foodu/features/home_action_menu/controller/home_controller.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class HorizontalFoodList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return SizedBox(
      height: HHelperFunctions.screenHeight() / 3.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.foodItems.length,
        itemBuilder: (context, index) {
          final item = controller.foodItems[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: FoodCardVertical(
              imageUrl: item['imageUrl'],
              title: item['title'],
              distance: item['distance'],
              rating: item['rating'],
              reviewsCount: item['reviewsCount'],
              price: item['price'],
              deliveryFee: item['deliveryFee'],
              isFavorite: item['isFavorite'],
              onFavoriteToggle: () {

              },
              onTap: (){},
            ),
          );
        },
      ),
    );
  }
}