import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/sizes.dart';

class THeader extends StatelessWidget {
  const THeader({
    super.key,
    required this.text,
    required this.image,
    this.style,
    this.width = 120,
    this.height = 120,
  });

  final double width, height;
  final String text;
  final String image;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: TSizes.spaceBtwItems,
      children: [
        Center(child: Image(image: AssetImage(image), width: width, height: height)),
        Text(text, style: style ?? Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
      ],
    );
  }
}
