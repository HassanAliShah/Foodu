import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/custom_shapes/container/discount_container.dart';
import 'package:foodu/common/widgets/custom_shapes/container/search_container.dart';
import 'package:foodu/features/home_action_menu/controller/home_controller.dart';
import 'package:foodu/features/home_action_menu/screens/cart/cart_screen.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/action_icon.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/category_grid_view.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/chip_list_row.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/horizental_food_list.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/verical_food_list.dart';
import 'package:foodu/features/home_action_menu/screens/notification/notification_screen.dart';
import 'package:foodu/features/home_action_menu/screens/recommanded_for_you/recommanded_for_you_screen.dart';
import 'package:foodu/features/home_action_menu/screens/search/search_screen.dart';
import 'package:foodu/features/home_action_menu/screens/special_offer/special_offer_screen.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        /// Appbar
        appBar: HAppBar(
          leadingImage: HImages.pic,
          height: 50,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Deliver To',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Time Square',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.textblack),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: TColors.primary,
                    )
                  ],
                ),
              )
            ],
          ),
          actions: [
            ActionIcon(onTap: () => Get.to(const NotificationScreen()), iconData: Iconsax.notification),
            const Gap(5),
            ActionIcon(onTap: () => Get.to(const CartScreen()), iconData: Iconsax.shopping_bag),
          ],
        ),

        /// Body
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
            child: Column(
              children: [
                const SizedBox(height: TSizes.defaultSpace),
                GestureDetector(onTap: () => Get.to(const SearchScreen()), child: const HSearchContainer(text: 'What are you craving?')),
                const SizedBox(height: TSizes.defaultSpace),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Special Offers', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.textblack)),
                    GestureDetector(
                      onTap: () => Get.to(const SpecialOfferScreen()),
                      child: Text('See All', style: Theme.of(context).textTheme.labelLarge),
                    )
                  ],
                ),
                const SizedBox(height: TSizes.defaultSpace),
                const DiscountConatiner(
                  description: HText.discountSubtitle,
                  imagePath: HImages.discount0,
                  discount: HText.discountPercent,
                  gradient: TColors.greenGradient,
                ),
                const SizedBox(height: TSizes.defaultSpace),
                const CategoryGridView(),
                const SizedBox(height: TSizes.defaultSpace),
                // Make this Row resuable
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discount Guaranteed! 👌',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.textblack),
                    ),
                    Text(
                      'See All',
                      style: Theme.of(context).textTheme.labelLarge,
                    )
                  ],
                ),
                const HorizontalFoodList(),

                const SizedBox(height: TSizes.defaultSpace),
                // Make this Row resuable
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended For You 😍',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.textblack),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(const RecommandedForYouScreen()),
                      child: Text('See All', style: Theme.of(context).textTheme.labelLarge),
                    )
                  ],
                ),
                const ChipListRow(),
                const VerticalFoodList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
