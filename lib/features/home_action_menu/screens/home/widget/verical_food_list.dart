
import 'package:flutter/cupertino.dart';
import 'package:foodu/common/widgets/custom_shapes/container/food_card_horizental.dart';
import 'package:foodu/common/widgets/custom_shapes/container/food_card_vertical.dart';
import 'package:foodu/features/home_action_menu/controller/home_controller.dart';
import 'package:foodu/utils/constants/sizes.dart';

class VerticalFoodList extends StatelessWidget {
  const VerticalFoodList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return ListView.separated(
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: controller.foodItems.length,
      itemBuilder: (context, index) {
        final item = controller.foodItems[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: FoodCardHorizental(
            imageUrl: item['imageUrl'],
            title: item['title'],
            distance: item['distance'],
            rating: item['rating'],
            reviewCount: item['reviewsCount'],
            price: item['price'],
            deliveryFee: item['deliveryFee'],
            isFavorite: item['isFavorite'],
            onFavoriteToggle: () {

            },
            onTap: () {

            },
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) {
      return SizedBox(width: HSizes.xs,);
    },
    );
  }
}