import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:iconly/iconly.dart';

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
       // height: 220,
        padding: const EdgeInsets.all(TSizes.xm),
        decoration: BoxDecoration(
          color: isDark ? TColors.darkCard  :Colors.white,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: TSizes.sm,
          children: [
            /// -- Food Image
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(TSizes.cardRadiusSm * 2),
                  child: Image.asset(imageUrl, fit: BoxFit.cover, width: double.infinity, height: 120),
                ),
                Positioned(
                  top: 6,
                  left: 6,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: TColors.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'PROMO',
                      style:Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.backgroundLight,fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),

            /// -- Food Name
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            /// -- Rating
            Row(
              children: [

                // Rating Icon
                const Icon(IconlyBold.star, size: 12, color: TColors.rating),
                const SizedBox(width:  TSizes.xs),

                // Rating Text
                Text(
                  rating,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 10),
                ),

                // Rating Count
                Text(
                  ' ($reviewsCount)',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 10),
                ),
              ],
            ),

            /// -- Food price , Delivery fee , Favourite
            Row(
              children: [

                // Price
                Text(
                  "\$$price",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary,fontWeight: FontWeight.bold),
                ),
                const SizedBox(width:  TSizes.sm),

                // Divider
                // const SizedBox(
                //   height: 14,
                //   child: VerticalDivider(
                //     thickness: 1,
                //     color: TColors.textGrey,
                //   ),
                // ),

                // // Delivery Icon
                // const Icon(Icons.delivery_dining, size: 20, color: TColors.primary),
                // const SizedBox(width:  TSizes.xs),
                //
                // // Delivery Fee
                // Text(
                //  "\$$deliveryFee",
                //   style:  Theme.of(context).textTheme.labelSmall,
                // ),
                const Spacer(),

                // Favourite
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
          ],
        ),
      ),
    );
  }
}