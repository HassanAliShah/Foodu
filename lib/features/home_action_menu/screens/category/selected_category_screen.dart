

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/option_bar.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/verical_food_list.dart';

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
        child: const Column(children: [
          OptionBar(),
          VerticalFoodList(),
        ],),
      ),
    );
  }
}

