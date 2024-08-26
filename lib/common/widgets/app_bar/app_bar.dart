

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HAppBar extends StatelessWidget implements PreferredSizeWidget {
   HAppBar({super.key,
     this.title,
      this.showBackButton = false,
      this.leadingImage,
      this.actions,
     this.bottomBar,
     this.height = 40,
     this.leadingOnPressed});

  final Widget? title;
  final double height;
  final bool showBackButton;
  final String? leadingImage;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final PreferredSizeWidget? bottomBar;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: HSizes.x),
    child: AppBar(
      automaticallyImplyLeading: false,
      title: title,
      centerTitle: false,
      actions: actions,
      bottom: bottomBar,
      leading: showBackButton ? IconButton(onPressed: ()=> Get.back(), icon: Icon(Icons.arrow_back)) :
      leadingImage != null ?  Image.asset(leadingImage!,fit: BoxFit.fill,height: HSizes.lg,width: HSizes.lg,)   : null,
    ),);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
