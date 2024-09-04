
import 'package:flutter/cupertino.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/controller/review_and_rating_controller.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_rating_and_reviews/widget/review_card.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final controller = ReviewAndRatingController.instance;
    return Obx(() {
      return SizedBox(
        height: THelperFunctions.screenHeight() / 1.75,
        child: ListView.builder(
          itemCount: controller.reviews.length,
          itemBuilder: (context, index) {
            return ReviewCard(
              reviewData: controller.reviews[index],
            );
          },
        ),
      );
    });
  }
}