

import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  static HomeController get instance => Get.find();

  List<String>  categoryName = [
    'Hamburger',
    'Pizza',
    'Noodles',
    'Meat',
    'Vegetable',
    'Dessert',
    'Drink',
    'More',
  ];

  List<String>  categoryImage = [
    TImages.burger,
    TImages.pizza,
    TImages.noodles,
    TImages.meat,
    TImages.vegtable,
    TImages.dessert,
    TImages.drink,
    TImages.others,
  ];

  final List<Map<String, dynamic>> foodItems = [
    {
      'imageUrl': TImages.mixid_salad,
      'title': 'Mixid Salad bomb',
      'distance': '1.5 km',
      'rating': '4.8',
      'reviewsCount': '1.2k',
      'price': '6.0',
      'deliveryFee': '2.0',
      'isFavorite': false,
    },
    {
      'imageUrl': TImages.fruit_salad,
      'title': 'Fruit Salad',
      'distance': '1.5 km',
      'rating': '4.8',
      'reviewsCount': '1.2k',
      'price': '6.0',
      'deliveryFee': '2.0',
      'isFavorite': false,
    },
    {
      'imageUrl': TImages.mozarella_cheese,
      'title': 'Mozarella Cheese',
      'distance': '1.5 km',
      'rating': '4.8',
      'reviewsCount': '1.2k',
      'price': '6.0',
      'deliveryFee': '2.0',
      'isFavorite': true,
    },
    {
      'imageUrl': TImages.pizza_hut,
      'title': 'Pizza Hut',
      'distance': '1.5 km',
      'rating': '4.8',
      'reviewsCount': '1.2k',
      'price': '6.0',
      'deliveryFee': '2.0',
      'isFavorite': true,
    },
    {
      'imageUrl': TImages.vegeterian_noodels,
      'title': 'Pizza Hut',
      'distance': '1.5 km',
      'rating': '4.8',
      'reviewsCount': '1.2k',
      'price': '6.0',
      'deliveryFee': '2.0',
      'isFavorite': false,
    },
  ];

  var selectedChipIndex = 0.obs;

  void selectChip(int index) {
    selectedChipIndex.value = index;
  }

  List<String>  chipListName = [
    'All',
    'Hamburger',
    'Pizza',
    'Noodles',
    'Meat',
    'Vegetable',
    'Dessert',
    'Drink',
    'More',
  ];
  List<String>  chipListImage = [
    TImages.all,
    TImages.burger,
    TImages.pizza,
    TImages.noodles,
    TImages.meat,
    TImages.vegtable,
    TImages.dessert,
    TImages.drink,
    TImages.others,
  ];




}