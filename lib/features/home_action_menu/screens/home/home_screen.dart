

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/button/title_with_text_button.dart';
import 'package:foodu/common/widgets/custom_shapes/container/discount_container.dart';
import 'package:foodu/common/widgets/custom_shapes/container/search_container.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/discount/discount_screen.dart';
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
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        appBar: TAppBar(
          leadingImage: TImages.pic,
          height: 50,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              /// -- Deliver to Text
              Text(TTexts.deliverTo,style: Theme.of(context).textTheme.labelSmall,),

              /// -- Location Selection Button
              GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Time Square',style: Theme.of(context).textTheme.labelLarge?.copyWith(color: isDark ?  TColors.textWhite: TColors.textblack),),
                     const Icon(Icons.arrow_drop_down,color: TColors.primary,)
                  ],
                ),
              )
            ],
          ),
          actions: [
            /// -- Notification Icon Button
            ActionIcon(onTap: () =>Get.to(const NotificationScreen())
             ,iconData: Iconsax.notification,),
            const Gap(5),

            /// -- Cart Icon Button
            ActionIcon(onTap:  () =>Get.to(const CartScreen()),iconData: Iconsax.shopping_cart,),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(padding: TSpacingStyles.paddingWithHeightWidth,
          child: Column(
            spacing: TSizes.defaultSpace,
            children: [
              /// -- Search Field
              GestureDetector(onTap: () =>Get.to(const SearchScreen()),child: const TSearchContainer(text: 'What are you craving?',)),

              /// -- Special Offer Heading with See All button
              TRowWithTextButton(title: TTexts.specialOffer, onTap: ()=> Get.to(const SpecialOfferScreen()),),

               /// -- Banner
              const DiscountImage(imagePath: TImages.discount0,),

              /// -- Category
              const CategoryGridView(),

              /// -- Discounted Heading with See All button
              TRowWithTextButton(title: TTexts.discountGuaranteed, onTap: ()=> Get.to(DiscountScreen()),),

              /// -- Food item list
              const HorizontalFoodList(),

              /// -- Recommended Food Heading with See All button
              TRowWithTextButton(title: TTexts.recommendedForYou, onTap: () => Get.to(const RecommandedForYouScreen())),

              /// -- Category Chips
              const ChipListRow(),

              /// -- Food item list
              const VerticalFoodList(),
            ],
          ),
          ),
        ),
      ),
    );
  }
}








