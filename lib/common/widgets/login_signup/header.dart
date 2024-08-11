
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';

class HHeader extends StatelessWidget {
  const HHeader({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image(image: AssetImage(HImages.appLogo))),
        SizedBox(height: HSizes.md,),
        Text(text,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center ,),
      ],
    );
  }
}