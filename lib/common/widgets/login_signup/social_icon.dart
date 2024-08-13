


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';

class SocialIcon extends StatelessWidget {
  SocialIcon({
    super.key, required this.image, required this.onTap,
  });

  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: HColors.borderGrey),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: IconButton(onPressed: onTap, icon: Image(image: AssetImage(image),height: HSizes.lg,width: HSizes.lg,)),
    );
  }
}