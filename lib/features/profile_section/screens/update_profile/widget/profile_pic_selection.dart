import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodu/features/profile_section/controller/profile_controller.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
class ProfilePicSelection extends StatelessWidget {
  const ProfilePicSelection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = ProfileController.instance;
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          GestureDetector(
            onTap: () {
              controller.selectImage();
            },
            child: Obx(() {
              return Container(
                width: HSizes.imageThumbSize,
                height: HSizes.imageThumbSize,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(
                    side: BorderSide.none,
                  ),
                ),
                child: controller.imagePath.value.isEmpty
                    ? const CircleAvatar(
                  backgroundImage: AssetImage(HImages.profile),
                )
                    : CircleAvatar(
                  backgroundImage: FileImage(File(controller.imagePath.value)),
                ),
              );
            }),
          ),
          Positioned(
            bottom: -5,
            right: 0,
            child: Container(
              width: HSizes.iconMd,
              height: HSizes.iconMd,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: Container(
                  width: 20,
                  height: 20,
                  child: const Image(image: AssetImage(HImages.picImage),fit:BoxFit.fill,),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}