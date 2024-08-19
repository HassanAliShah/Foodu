

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
    HImages.burger,
    HImages.pizza,
    HImages.noodles,
    HImages.meat,
    HImages.vegtable,
    HImages.dessert,
    HImages.drink,
    HImages.others,
  ];

  final List<Map<String, dynamic>> foodItems = [
    {
      'imageUrl': HImages.mixid_salad,
      'title': 'Mixid Salad bomb',
      'distance': '1.5 km',
      'rating': '4.8',
      'reviewsCount': '1.2k',
      'price': '6.0',
      'deliveryFee': '2.0',
      'isFavorite': false,
    },
    {
      'imageUrl': HImages.fruit_salad,
      'title': 'Fruit Salad',
      'distance': '1.5 km',
      'rating': '4.8',
      'reviewsCount': '1.2k',
      'price': '6.0',
      'deliveryFee': '2.0',
      'isFavorite': false,
    },
    {
      'imageUrl': HImages.mozarella_cheese,
      'title': 'Mozarella Cheese',
      'distance': '1.5 km',
      'rating': '4.8',
      'reviewsCount': '1.2k',
      'price': '6.0',
      'deliveryFee': '2.0',
      'isFavorite': true,
    },
    {
      'imageUrl': HImages.pizza_hut,
      'title': 'Pizza Hut',
      'distance': '1.5 km',
      'rating': '4.8',
      'reviewsCount': '1.2k',
      'price': '6.0',
      'deliveryFee': '2.0',
      'isFavorite': true,
    },
    {
      'imageUrl': HImages.vegeterian_noodels,
      'title': 'Pizza Hut',
      'distance': '1.5 km',
      'rating': '4.8',
      'reviewsCount': '1.2k',
      'price': '6.0',
      'deliveryFee': '2.0',
      'isFavorite': false,
    },
  ];

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
    HImages.all,
    HImages.burger,
    HImages.pizza,
    HImages.noodles,
    HImages.meat,
    HImages.vegtable,
    HImages.dessert,
    HImages.drink,
    HImages.others,
  ];




}