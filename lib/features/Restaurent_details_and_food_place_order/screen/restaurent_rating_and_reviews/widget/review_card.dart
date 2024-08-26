import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';

class ReviewCard extends StatelessWidget {
  final Map<String, dynamic> reviewData;

  const ReviewCard({
    Key? key,
    required this.reviewData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
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
              SizedBox(width: 8.0),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      reviewData['userName'],
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: HColors.textblack)
                    ),
                    SizedBox(width: 4.0),
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
              ImageIcon(AssetImage(HImages.more),color: Colors.black,)
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            reviewData['reviewText'],
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12)
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.pink),
                  SizedBox(width: 4.0),
                  Text(
                    reviewData['likes'].toString(),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: HColors.textblack),
                  ),
                ],
              ),
              SizedBox(width: 16.0),
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
