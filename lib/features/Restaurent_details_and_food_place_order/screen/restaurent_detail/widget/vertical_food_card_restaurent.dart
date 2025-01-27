import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class VerticalFoodCardRestaurent extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String? badgeText;

  const VerticalFoodCardRestaurent({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    this.badgeText,
  });

  @override
  _VerticalFoodCardRestaurentState createState() =>
      _VerticalFoodCardRestaurentState();
}

class _VerticalFoodCardRestaurentState extends State<VerticalFoodCardRestaurent> {
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
        width: 180,
        padding: const EdgeInsets.all(TSizes.xm),
        decoration: BoxDecoration(
          color: isDark ? TColors.darkCard : Colors.white,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
          border: Border.all(
            color: isTapped ? TColors.primary : Colors.transparent,
            width: 2.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: TSizes.xm,
          children: [

            /// -- Food Image
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)
                  ),
                  child: Image.asset(
                    widget.imageUrl,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                if (widget.badgeText != null)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        widget.badgeText!,
                        style:Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.backgroundLight,fontSize: 5),
                      ),
                    ),
                  ),
              ],
            ),

            /// -- Food Title
            Text(
              widget.title,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            /// -- Food Price
            Text(
             "\$ ${widget.price}",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary)
            ),
          ],
        ),
      ),
    );
  }
}
