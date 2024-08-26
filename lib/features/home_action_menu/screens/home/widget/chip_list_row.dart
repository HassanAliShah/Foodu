
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_chip.dart';
import 'package:foodu/features/home_action_menu/controller/home_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:get/get.dart';

class ChipListRow extends StatelessWidget {
  const ChipListRow({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: HSizes.defaultSpace),
      child: SizedBox(
        height: 30,
        width: double.infinity,
        child:  ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: controller.chipListName.length,
            itemBuilder: (context, index){
              return Obx(() {
                bool isSelected = index == controller.selectedChipIndex.value;
                return CustomChip(
                  label: controller.chipListName[index],
                  labelColor: isSelected ? Colors.white : HColors.primary,
                  imagePath: controller.chipListImage[index],
                  onTap: () {
                    controller.selectChip(index);
                  },
                  backgroundColor: isSelected ? HColors.primary : Colors
                      .white,);
              });
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: HSizes.sm,);
            },
          ),
        ),
    );
  }
}