
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';

class HHeader extends StatelessWidget {
  const HHeader({
    super.key, required this.text, required this.image,
  });
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image(image: AssetImage(image))),
        SizedBox(height: HSizes.md,),
        Text(text,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center ,),
      ],
    );
  }
}