

import 'package:foodu/features/home_action_menu/model/food_category.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController{

  static CategoryController get instance => Get.find();

  var foodCategories = <FoodCategory>[
    FoodCategory(name: 'Hamburger', imageUrl: HImages.burger),
    FoodCategory(name: 'Pizza', imageUrl: HImages.pizza),
    FoodCategory(name: 'Noodles', imageUrl: HImages.noodles),
    FoodCategory(name: 'Meat', imageUrl: HImages.meat),
    FoodCategory(name: 'Vegetable', imageUrl: HImages.vegtable),
    FoodCategory(name: 'Dessert', imageUrl: HImages.dessert),
    FoodCategory(name: 'Drink', imageUrl: HImages.drink),
    FoodCategory(name: 'Bread', imageUrl: HImages.bread),
    FoodCategory(name: 'Croissant', imageUrl: HImages.croissant),
    FoodCategory(name: 'Cheese', imageUrl: HImages.cheese),
    FoodCategory(name: 'French Fries', imageUrl: HImages.french_fries),
    FoodCategory(name: 'Sandwich', imageUrl: HImages.sandwich),
    FoodCategory(name: 'Pot of Food', imageUrl: HImages.pot_of_food),
    FoodCategory(name: 'Salad', imageUrl: HImages.salad),
    FoodCategory(name: 'Bento', imageUrl: HImages.bento),
    FoodCategory(name: 'Cooked Rice', imageUrl: HImages.rice),
    FoodCategory(name: 'Spaghetti', imageUrl: HImages.spaghetty),
    FoodCategory(name: 'Sushi', imageUrl: HImages.sushi),
    FoodCategory(name: 'Ice Cream', imageUrl: HImages.ice_cream),
    FoodCategory(name: 'Cookies', imageUrl: HImages.cookies),
    FoodCategory(name: 'Beverages', imageUrl: HImages.beverages),
  ].obs;
}