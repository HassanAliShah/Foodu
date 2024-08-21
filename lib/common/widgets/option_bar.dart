
import 'package:flutter/cupertino.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_chip.dart';
import 'package:foodu/features/home_action_menu/screens/filter/filter_screen.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OptionBar extends StatelessWidget {
  const OptionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(onTap: (){
            Get.to(FilterScreen());
          },child: CustomChip(label: 'Filter',imagePath: HImages.filter,)),
          Gap(5),
          CustomChip(label: 'Sort',imagePath: HImages.filter,),
          Gap(5),
          CustomChip(label: 'Promo',),
          Gap(5),
          CustomChip(label: 'Self Pick',),
        ],
      ),
    );
  }
}