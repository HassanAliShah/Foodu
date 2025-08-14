import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/button/title_with_text_button.dart';
import 'package:foodu/common/widgets/custom_shapes/container/discount_container.dart';
import 'package:foodu/common/widgets/custom_shapes/container/search_container.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/discount/discount_screen.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/action_icon.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/category_grid_view.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/chip_list_row.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/horizental_food_list.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/verical_food_list.dart';
import 'package:foodu/features/home_action_menu/screens/recommanded_for_you/recommanded_for_you_screen.dart';
import 'package:foodu/features/home_action_menu/screens/search/search_screen.dart';
import 'package:foodu/features/home_action_menu/screens/special_offer/special_offer_screen.dart';
import 'package:foodu/routes/routes.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        appBar: TAppBar(
          leadingImage: TImages.user,
          height: 50,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// -- Deliver to Text
              Text(
                TTexts.deliverTo.tr,
                style: Theme.of(context).textTheme.labelSmall,
              ),

              /// -- Location Selection Button
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Time Square',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: isDark ? TColors.textWhite : TColors.textblack, fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Icon(
                      IconlyBold.arrow_down_2,
                      color: TColors.primary,
                      size: 18,
                    )
                  ],
                ),
              )
            ],
          ),
          actions: [
            /// -- Notification Icon Button
            ActionIcon(
              onTap: () => Get.toNamed(TRoutes.notification),
              iconData: IconlyLight.notification,
            ),
            const Gap(5),

            /// -- Cart Icon Button
            ActionIcon(
              onTap: () => Get.to(TRoutes.cart),
              iconData: IconlyLight.bag,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// -- Search Field
              Padding(
                padding: const EdgeInsets.only(left: TSizes.defaultSpace, right: TSizes.defaultSpace , top: TSizes.defaultSpace),
                child: GestureDetector(
                    onTap: () => Get.to(const SearchScreen()),
                    child: const TSearchContainer(
                      text: 'What are you craving?',
                      showBorder: false,
                    )),
              ),
              const SizedBox(height: TSizes.defaultSpace,),

              /// -- Special Offer Heading with See All button and Banner
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace,),
                child: Column(
                  spacing: TSizes.spaceBtwItems,
                  children: [
                    TRowWithTextButton(
                      title: TTexts.specialOffer.tr,
                      onTap: () => Get.to(const SpecialOfferScreen()),
                    ),

                    /// -- Banner
                    const DiscountImage(
                      imagePath: TImages.discount0,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.defaultSpace,),

              /// -- Category
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace,),
                child: CategoryGridView(),
              ),
              const SizedBox(height: TSizes.defaultSpace,),

              /// -- Discounted Food Section
              Column(
                  children: [
                    /// -- Discounted Heading with See All button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace,),
                      child: TRowWithTextButton(
                        title: TTexts.discountGuaranteed.tr,
                        onTap: () => Get.to(DiscountScreen()),
                      ),),

                      /// -- Food item list
                      const HorizontalFoodList(),
                  ],
                ),

              /// -- Recommended Food Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
                child: Column(
                  spacing: TSizes.spaceBtwItems,
                  children: [
                    /// -- Recommended Food Heading with See All button
                    TRowWithTextButton(title: TTexts.recommendedForYou.tr, onTap: () => Get.to(const RecommandedForYouScreen())),

                    /// -- Category Chips
                    const ChipListRow(),

                    /// -- Food item list
                    const VerticalFoodList(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
