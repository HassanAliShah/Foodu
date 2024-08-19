import 'package:foodu/features/home_action_menu/model/food_card_cart_model.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class CartController extends GetxController {

  static CartController get instance => Get.find();
  final foodCards = <FoodCardCartModel>[
    FoodCardCartModel(
      imageUrls: [
        HImages.fruit_salad,
        HImages.pizza_hut,
        HImages.vegeterian_noodels
      ],
      title: 'Mixed Salad Bowl',
      description: '3 items | 1.5 km',
      price: 18.00,
    ),
    FoodCardCartModel(
      imageUrls: [
        HImages.fruit_salad,
        HImages.pizza_hut,
        HImages.vegeterian_noodels
      ],
      title: 'Caesar Salad',
      description: '2 items | 2.0 km',
      price: 12.50,
    ),
    FoodCardCartModel(
      imageUrls: [
        HImages.fruit_salad,
        HImages.pizza_hut,
        HImages.vegeterian_noodels
      ],
      title: 'Greek Salad',
      description: '4 items | 0.8 km',
      price: 15.75,
    ),
  ].obs;

}
