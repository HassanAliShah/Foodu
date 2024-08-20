

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_chip.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/verical_food_list.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:gap/gap.dart';

class SelectedCategoryScreen extends StatelessWidget {
  const SelectedCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        title: Text('Burger',style: Theme.of(context).textTheme.bodySmall,),
        showBackButton: true,
      ),
      body: Padding(
        padding: HSpacingStyles.paddingWithHeightWidth,
        child: Column(children: [
          SizedBox(
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomChip(label: 'Filter',imagePath: HImages.filter,),
                Gap(5),
                CustomChip(label: 'Sort',imagePath: HImages.filter,),
                Gap(5),
                CustomChip(label: 'Promo',),
                Gap(5),
                CustomChip(label: 'Self Pick',),
              ],
            ),
          ),
          VerticalFoodList(),
        ],),
      ),
    );
  }
}
