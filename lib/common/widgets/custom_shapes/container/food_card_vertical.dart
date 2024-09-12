import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class TFoodCardVertical extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String distance;
  final String rating;
  final String reviewsCount;
  final String price;
  final String deliveryFee;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;
  final VoidCallback onTap;

  const TFoodCardVertical({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.distance,
    required this.rating,
    required this.reviewsCount,
    required this.price,
    required this.deliveryFee,
    required this.isFavorite,
    required this.onFavoriteToggle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: THelperFunctions.screenWidth() / 2,
        padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.sm),
        decoration: BoxDecoration(
          color: isDark ? TColors.darkCard  :Colors.white,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(TSizes.cardRadiusMd),
                  child: Image.asset(imageUrl, fit: BoxFit.cover, width: double.infinity, height: 120),
                ),
                Positioned(
                  top: 6,
                  left: 4,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: TColors.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'PROMO',
                      style:Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.backgroundLight,fontSize: 5),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.sm),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: TSizes.xs),
            Row(
              children: [
                Text(
                  distance,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 8),
                ),
                const SizedBox(width: TSizes.xs),
                const SizedBox(
                  height: 14,
                  child: VerticalDivider(
                    thickness: 1,
                    color: TColors.textGrey,
                  ),
                ),
                const Icon(Icons.star, size: 12, color: TColors.rating),
                const SizedBox(width:  TSizes.xs),
                Text(
                  rating,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 8),
                ),
                Text(
                  ' ($reviewsCount)',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 8),
                ),
              ],
            ),
            const SizedBox(height: TSizes.sm),
            Row(
              children: [
                Text(
                  "\$$price",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary),
                ),
                const SizedBox(width:  TSizes.sm),
                const SizedBox(
                  height: 14,
                  child: VerticalDivider(
                    thickness: 1,
                    color: TColors.textGrey,
                  ),
                ),
                const Icon(Icons.delivery_dining, size: 20, color: TColors.primary),
                const SizedBox(width:  TSizes.xs),
                Text(
                 "\$$deliveryFee",
                  style:  Theme.of(context).textTheme.labelSmall,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: onFavoriteToggle,
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}