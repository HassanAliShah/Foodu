import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/custom_shapes/container/food_card_vertical.dart';
import 'package:foodu/features/home_action_menu/controller/home_controller.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class HorizontalFoodList extends StatelessWidget {
  const HorizontalFoodList({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;

    /// -- Horizontal Food item list view
    return SizedBox(
      height: 254,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: controller.foodItems.length,
        separatorBuilder: (context, index) => const SizedBox(width: 0,),
        itemBuilder: (context, index) {
          final item = controller.foodItems[index];

          /// -- Food Item
          return Container(
            margin: const EdgeInsets.all(TSizes.md),
            child: TFoodCardVertical(
              imageUrl: item['imageUrl'],
              title: item['title'],
              distance: item['distance'],
              rating: item['rating'],
              reviewsCount: item['reviewsCount'],
              price: item['price'],
              deliveryFee: item['deliveryFee'],
              isFavorite: item['isFavorite'],
              onFavoriteToggle: () {},
              onTap: (){},
            ),
          );
        },
      ),
    );
  }
}