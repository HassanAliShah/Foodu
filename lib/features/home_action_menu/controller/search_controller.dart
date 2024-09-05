

import 'package:flutter/cupertino.dart';
import 'package:foodu/features/home_action_menu/model/search_food_item_model.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController{
  static SearchPageController get instance => Get.find();

  var searchText = ''.obs;
  TextEditingController searchController = TextEditingController();

  var searchFoodItems = <SearchFoodItemModel>[
    SearchFoodItemModel(
      title: 'Fruit Salad',
      imageUrl: TImages.fruit_salad,
      distance: 1.4,
      rating: 4.8,
      reviews: 2800,
      price: 1.50,
      recommendedItems: [
        SearchFoodItemModel(
          title: 'Special Dessert with Strawberry',
          imageUrl: TImages.mixid_salad,
          distance: 0.0,
          rating: 0.0,
          reviews: 0,
          price: 8.50,
          recommendedItems: [],
        ),
        SearchFoodItemModel(
          title: 'Fruit Flavor Color Burger',
          imageUrl: TImages.mozarella_cheese,
          distance: 0.0,
          rating: 0.0,
          reviews: 0,
          price: 5.00,
          recommendedItems: [],
        ),
      ],
    ),
  ].obs;

  var recentSearches = ["Italian Pizza", "Burger King", "Salad", "Vegetarian", "Dessert", "Pancakes"].obs;
  var popularCuisines = ["Breakfast", "Snack", "Fast Food", "Beverages", "Chicken", "Noodles", "Rice", "Seafood", "International"].obs;
  var allCuisines = ["Bakery & Cake", "Dessert", "Pizza"].obs;

  void updateSearchText(String text) {
    print(text);
    searchText.value = text;
  }
}