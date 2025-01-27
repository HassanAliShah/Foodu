
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/exports.dart';
import 'package:gap/gap.dart';

class TFoodCardHorizental extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String distance;
  final String rating;
  final String reviewCount;
  final String price;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;
  final String deliveryFee;
  final VoidCallback onTap;

  const TFoodCardHorizental({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.distance,
    required this.rating,
    required this.reviewCount,
    required this.price,
    required this.isFavorite,
    required this.deliveryFee,
    required this.onFavoriteToggle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(TSizes.xm),
        decoration: BoxDecoration(
          color: isDark ? TColors.darkCard  : Colors.white,
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
        child: Row(
          children: [
            /// -- Food Image
            ClipRRect(
              borderRadius: BorderRadius.circular(TSizes.cardRadiusSm * 2),
              child: Image.asset(
                imageUrl,
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(10),

            /// -- Name, Rating, Price
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// -- Food Name
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(8),

                  /// -- Distance , Rating
                  Row(
                    children: [
                      Text(
                        '$distance m',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 8),
                      ),
                     const Gap(8.0),
                      const Icon(
                        Icons.star,
                        color: TColors.rating,
                        size: 16.0,
                      ),
                      const Gap(8.0),
                      Text(
                        '$rating (${reviewCount}k)',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 8),
                      ),
                    ],
                  ),
                  const Gap(8.0),

                  /// -- Price , Delivery fee
                  Row(
                    children: [
                      // Price
                      Text(
                        "\$$price",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary),
                      ),
                      const SizedBox(width:  TSizes.sm),

                      // Divider
                      const SizedBox(
                        height: 14,
                        child: VerticalDivider(
                          thickness: 1,
                          color: TColors.textGrey,
                        ),
                      ),

                      // Delivery Icon
                      const Icon(
                        Icons.delivery_dining,
                        color: Colors.green,
                        size: 16.0,
                      ),
                      const Gap(8.0),

                      // Delivery Fee
                      Text(
                        '\$$deliveryFee',
                        style:  Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// -- Favourite Button
            IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: onFavoriteToggle,
            ),
          ],
        ),
      ),
    );
  }
}
