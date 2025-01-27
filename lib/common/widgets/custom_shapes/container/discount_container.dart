
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscountImage extends StatelessWidget {
  final String imagePath;

  const DiscountImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
    );
  }
}
