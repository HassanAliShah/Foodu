import 'package:flutter/cupertino.dart';
import 'package:foodu/utils/constants/colors.dart';

Widget buildSectionTitle(String title) {
  return Text(
    title,
    style: TextStyle(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.bold, color: HColors.textblack),
  );
}