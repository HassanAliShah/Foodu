
import 'package:flutter/cupertino.dart';
import 'package:foodu/features/home_action_menu/controller/search_controller.dart';
import 'package:foodu/features/home_action_menu/screens/search/widget/chip_list.dart';
import 'package:foodu/features/home_action_menu/screens/search/widget/section_title.dart';
import 'package:gap/gap.dart';

class ShowRecentSearchAndOtherOptions extends StatelessWidget {
  const ShowRecentSearchAndOtherOptions({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final controller = SearchPageController.instance;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Gap(4),
        buildSectionTitle('Recent Searches'),
        const Gap(4),
        buildChipList(controller.recentSearches),
        const Gap(4),
        buildSectionTitle('Popular Cuisines'),
        const Gap(4),
        buildChipList(controller.popularCuisines),
        const Gap(4),
        buildSectionTitle('All Cuisines'),
        const Gap(4),
        buildChipList(controller.allCuisines),
      ],
    );
  }
}