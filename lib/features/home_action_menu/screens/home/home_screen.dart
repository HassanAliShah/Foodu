

import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_chip.dart';
import 'package:foodu/common/widgets/custom_shapes/container/discount_container.dart';
import 'package:foodu/common/widgets/custom_shapes/container/food_card_vertical.dart';
import 'package:foodu/common/widgets/custom_shapes/container/image_text_category_container.dart';
import 'package:foodu/common/widgets/custom_shapes/container/search_container.dart';
import 'package:foodu/features/home_action_menu/controller/home_controller.dart';
import 'package:foodu/features/home_action_menu/screens/cart/cart_screen.dart';
import 'package:foodu/features/home_action_menu/screens/home/home_screen.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/action_icon.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/category_grid_view.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/chip_list_row.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/horizental_food_list.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/verical_food_list.dart';
import 'package:foodu/features/home_action_menu/screens/notification/notification_screen.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        appBar: HAppBar(
          leadingImage: HImages.pic,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Deliver To',style: Theme.of(context).textTheme.labelSmall,),
              GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Time Square',style: Theme.of(context).textTheme.bodySmall,),
                     Icon(Icons.arrow_drop_down,color: HColors.primary,)
                  ],
                ),
              )
            ],
          ),
          actions: [
            ActionIcon(onTap: () =>Get.to(NotificationScreen())
             ,iconData: Icons.notifications_none_rounded,),
            SizedBox(width: 1,),
            ActionIcon(onTap:  () =>Get.to(CartScreen()),iconData: Icons.shopping_cart_outlined,),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: HSizes.defaultSpace),
          child: Column(
            children: [
              const SizedBox(height: HSizes.defaultSpace,),
              const HSearchContainer(text: 'What are you craving?',),
              const SizedBox(height: HSizes.defaultSpace,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Special Offers',style:  Theme.of(context).textTheme.labelLarge?.copyWith(color: HColors.textblack)),
                  Text('See All',style: Theme.of(context).textTheme.labelLarge,)
                ],
              ),
              const SizedBox(height: HSizes.defaultSpace,),
              const DiscountConatiner(title: HText.discountPercent,subtitle: HText.discountSubtitle,imagePath: HImages.discount0,),
              const SizedBox(height: HSizes.defaultSpace,),
              CategoryGridView(),
              const SizedBox(height: HSizes.defaultSpace,),
              // Make this Row resuable
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Discount Guaranteed! 👌',style:  Theme.of(context).textTheme.labelLarge?.copyWith(color: HColors.textblack),),
                  Text('See All',style: Theme.of(context).textTheme.labelLarge,)
                ],
              ),
              HorizontalFoodList(),
              const SizedBox(height: HSizes.defaultSpace,),
              // Make this Row resuable
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended For You 😍',style:  Theme.of(context).textTheme.labelLarge?.copyWith(color: HColors.textblack),),
                  Text('See All',style: Theme.of(context).textTheme.labelLarge,)
                ],
              ),
              ChipListRow(),
              VerticalFoodList(),
            ],
          ),
          ),
        ),
      ),
    );
  }
}







