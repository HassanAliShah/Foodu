

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_text_field.dart';
import 'package:foodu/common/widgets/custom_shapes/container/search_container.dart';
import 'package:foodu/common/widgets/option_bar.dart';
import 'package:foodu/features/home_action_menu/controller/search_controller.dart';
import 'package:foodu/features/home_action_menu/screens/home/widget/chip_list_row.dart';
import 'package:foodu/features/home_action_menu/screens/search/search_screen.dart';
import 'package:foodu/features/home_action_menu/screens/search/widget/chip_list.dart';
import 'package:foodu/features/home_action_menu/screens/search/widget/recent_and_other_options.dart';
import 'package:foodu/features/home_action_menu/screens/search/widget/search_food_list_view.dart';
import 'package:foodu/features/home_action_menu/screens/search/widget/search_not_found.dart';
import 'package:foodu/features/home_action_menu/screens/search/widget/section_title.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SearchPageController());
    controller.searchController.addListener(() {
      controller.updateSearchText(controller.searchController.text);
    });
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
        title: CustomTextField(
          textEditingController: controller.searchController,
          height: 40,
          hintText: 'Search here',
          prefixIcon: Icons.search,
          suffixIcon: Icons.close,
          showBottomSheet: false,
        ),
      ),
      body: Obx(
        () => Padding(
          padding: HSpacingStyles.paddingWithHeightWidth,
          child: controller.searchText.value.isEmpty
                ? ShowRecentSearchAndOtherOptions()
                : Column(
              children: [
                Gap(10),
                OptionBar(),
                Gap(10),
                Obx(
                      () => controller.searchFoodItems.isEmpty
                      ? SearchNotFound()
                      : SearchFoodListView(),
                ),
              ],
            ),
          ),
      ),
    );
  }
}


