
import 'package:flutter/cupertino.dart';
import 'package:foodu/common/widgets/custom_shapes/container/food_card_horizental.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_detail/restaurent_detail_screen.dart';
import 'package:foodu/features/home_action_menu/controller/home_controller.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:get/get.dart';

class VerticalFoodList extends StatelessWidget {
  const VerticalFoodList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return ListView.separated(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: controller.foodItems.length,
      separatorBuilder: (context , index){
        return const SizedBox(height: TSizes.md,);
      },
      itemBuilder: (context, index) {
        final item = controller.foodItems[index];
        return TFoodCardHorizental(
          title: item['title'],
          price: item['price'],
          rating: item['rating'],
          imageUrl: item['imageUrl'],
          distance: item['distance'],
          isFavorite: item['isFavorite'],
          deliveryFee: item['deliveryFee'],
          reviewCount: item['reviewsCount'],
          onFavoriteToggle: () {},
          onTap: () => Get.to(const RestaurentDetailScreen()),
        );
      }
    );
  }
}