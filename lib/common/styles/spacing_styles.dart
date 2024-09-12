

import 'package:flutter/cupertino.dart';
import 'package:foodu/utils/constants/sizes.dart';

class TSpacingStyles{
  static  EdgeInsetsGeometry paddingWithHeightWidth = const EdgeInsets.only(
    top: TSizes.defaultSpace,
    left: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
   // bottom: HSizes.defaultSpace
  );

  static  EdgeInsetsGeometry paddingOnlyWidth = const EdgeInsets.only(
    left: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
    // bottom: HSizes.defaultSpace
  );
}