import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final String? imagePath;
  final Color backgroundColor;
  final Color borderColor;
  final Color labelColor;
  final VoidCallback? onTap;

  const CustomChip({
    Key? key,
    required this.label,
    this.imagePath,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.green,
    this.labelColor = Colors.green,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null) ...[
              Image(image: AssetImage(imagePath!),height: 20,width: 20,),
              SizedBox(width: 4),
            ],
            Text(
              label,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(color: labelColor)
            ),
          ],
        ),
      ),
    );
  }
}