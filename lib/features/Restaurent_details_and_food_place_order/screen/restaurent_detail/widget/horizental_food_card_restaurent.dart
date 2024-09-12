import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class HorizontalFoodCardRestaurent extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String? badgeText;

  const HorizontalFoodCardRestaurent({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    this.badgeText,
  });

  @override
  _HorizontalFoodCardRestaurentState createState() =>
      _HorizontalFoodCardRestaurentState();
}

class _HorizontalFoodCardRestaurentState
    extends State<HorizontalFoodCardRestaurent> {
  bool isTapped = false;

  void _toggleBorderColor() {
    setState(() {
      isTapped = !isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: _toggleBorderColor,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: TSizes.sm, horizontal: TSizes.xs),
        padding: const EdgeInsets.all(TSizes.sm),
        decoration: BoxDecoration(
          color: isDark ? TColors.darkCard : Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 0,
              offset: const Offset(0, 1),
            ),
          ],
          border: Border.all(
            color: isTapped ? Colors.green : Colors.transparent,
            width: 2.0,
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                widget.imageUrl,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: TSizes.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.badgeText != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical:TSizes.xs),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(TSizes.xm),
                      ),
                      child: Text(
                        widget.badgeText!,
                        style:Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.backgroundLight,fontSize: 5),
                      ),
                    ),
                  const SizedBox(height:TSizes.sm),
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: TSizes.xs),
    Text(
    "\$ ${widget.price}",
    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary)
    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
