import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class ReviewCard extends StatelessWidget {
  final Map<String, dynamic> reviewData;

  const ReviewCard({
    super.key,
    required this.reviewData,
  });

  @override
  Widget build(BuildContext context)
  {
    final isDark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration:  BoxDecoration(
        color: isDark ? TColors.darkCard : Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage(reviewData['userImage']),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      reviewData['userName'],
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.textblack)
                    ),
                    const SizedBox(width: 4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: List.generate(5, (index) {
                        return Icon(
                          index < reviewData['rating']
                              ? Icons.star
                              : Icons.star_border,
                          color: Colors.amber,
                          size: 16.0,
                        );
                      }),
                    ),
                  ],
                ),
              ),
              const ImageIcon(AssetImage(TImages.more),color: Colors.black,)
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            reviewData['reviewText'],
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12)
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Row(
                children: [
                  const Icon(Icons.favorite, color: Colors.pink),
                  const SizedBox(width: 4.0),
                  Text(
                    reviewData['likes'].toString(),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: TColors.textblack),
                  ),
                ],
              ),
              const SizedBox(width: 16.0),
              Text(
                reviewData['daysAgo'],
                style:Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
