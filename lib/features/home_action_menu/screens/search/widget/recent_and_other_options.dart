
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
        Gap(4),
        buildSectionTitle('Recent Searches'),
        Gap(4),
        buildChipList(controller.recentSearches),
        Gap(4),
        buildSectionTitle('Popular Cuisines'),
        Gap(4),
        buildChipList(controller.popularCuisines),
        Gap(4),
        buildSectionTitle('All Cuisines'),
        Gap(4),
        buildChipList(controller.allCuisines),
      ],
    );
  }
}