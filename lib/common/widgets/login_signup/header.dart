
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/sizes.dart';

class THeader extends StatelessWidget {
  const THeader({
    super.key, required this.text, required this.image,
  });
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image(image: AssetImage(image))),
        const SizedBox(height: TSizes.md,),
        Text(text,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center ,),
      ],
    );
  }
}