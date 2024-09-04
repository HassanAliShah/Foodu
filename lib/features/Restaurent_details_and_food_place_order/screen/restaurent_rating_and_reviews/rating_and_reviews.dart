

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_divider.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/controller/review_and_rating_controller.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_about/widget/rating_and_bar_graph.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_rating_and_reviews/widget/rating_and_review_chip_list_row.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_rating_and_reviews/widget/review_list.dart';
import 'package:get/get.dart';

class RatingAndReviews extends StatefulWidget {
  const RatingAndReviews({super.key});

  @override
  State<RatingAndReviews> createState() => _RatingAndReviewsState();
}

class _RatingAndReviewsState extends State<RatingAndReviews> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ReviewAndRatingController());
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
        title: Text("Rating & Reviews",style: Theme.of(context).textTheme.bodySmall,),
      ),
      body: Padding(padding: HSpacingStyles.paddingWithHeightWidth,
      child: const Column(
        children: [
          custom_divider(),
          RatingAndBarGraph(),
          custom_divider(),
          RatingAndReviewChipListRow(),
          custom_divider(),
          ReviewList(),
        ],
      ),),
    );
  }
}

