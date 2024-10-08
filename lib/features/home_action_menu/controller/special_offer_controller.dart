
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class SpecialOfferController extends GetxController {

  static SpecialOfferController get instance => Get.find();

  var specialOffers = <Map<String, String>>[
    {
      "discount": "30%",
      "description": "Discount only valid for today!",
      "imageUrl": TImages.discount0,
    },
    {
      "discount": "15%",
      "description": "Discount only valid for today!",
      "imageUrl": TImages.discount1,
    },
    {
      "discount": "20%",
      "description": "Discount only valid for today!",
      "imageUrl": TImages.discount2,
    },
    {
      "discount": "25%",
      "description": "Discount only valid for today!",
      "imageUrl": TImages.discount3,
    },
  ].obs;

  final List<Gradient> colors = [
    TColors.greenGradient,
    TColors.orangeGradient,
    TColors.redGradient,
    TColors.blueGradient,
  ];
}
