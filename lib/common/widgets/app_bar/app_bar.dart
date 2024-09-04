import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/images/t_circular_image.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:get/get.dart';

class HAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HAppBar({
    super.key,
    this.title,
    this.showBackButton = false,
    this.leadingImage,
    this.actions,
    this.bottomBar,
    this.height = 40,
    this.leadingOnPressed,
  });

  final Widget? title;
  final double height;
  final bool showBackButton;
  final String? leadingImage;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final PreferredSizeWidget? bottomBar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: title,
        centerTitle: false,
        actions: actions,
        bottom: bottomBar,
        leading: showBackButton
            ? IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back))
            : TCircularImage(image: leadingImage, padding: 0, fit: BoxFit.contain),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
