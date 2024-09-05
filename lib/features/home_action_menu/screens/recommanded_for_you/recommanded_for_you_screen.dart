

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/chip_list_row.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/verical_food_list.dart';

class RecommandedForYouScreen extends StatelessWidget {
  const RecommandedForYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Recommended For You 😍',style: Theme.of(context).textTheme.bodySmall,),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithHeightWidth,
          child: const Column(
            children: [
              ChipListRow(),
              VerticalFoodList(),
            ],
          ),),
      ),
    );
  }
}
