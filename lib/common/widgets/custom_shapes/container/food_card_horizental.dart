
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/exports.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

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
          borderRadius: BorderRadius.circular(TSizes.cardRadiusSm * 2),
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
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(8),

                  /// -- Distance
                  Row(
                    children: [
                      const Icon(
                        IconlyBold.star,
                        color: TColors.rating,
                        size: 16.0,
                      ),
                      const Gap(8.0),
                      Text(
                        '$rating (${reviewCount}k)',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 10),
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
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary,fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width:  TSizes.sm),
                    ],
                  ),
                ],
              ),
            ),

            /// -- Favourite Button
            GestureDetector(
                onTap: onFavoriteToggle,
                child: ShaderMask(
                  shaderCallback: (bounds) =>  TColors.redGradient.createShader(bounds),
                  child: Icon(
                    isFavorite ? IconlyBold.heart : IconlyLight.heart,
                    color: Colors.white,
                    size: 20,
                  ),
                )

            ),
          ],
        ),
      ),
    );
  }
}
