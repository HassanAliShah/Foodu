

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_divider.dart';
import 'package:foodu/common/widgets/texts/expandable_text.dart';
import 'package:foodu/common/widgets/texts/title_text.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_about/widget/day_and_time.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_about/widget/rating_and_bar_graph.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:gap/gap.dart';
class RestaurentAboutScreen extends StatelessWidget {
  const RestaurentAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const TAppBar(
        showBackButton: true,
      ),
      body: Padding(padding: TSpacingStyles.paddingWithHeightWidth,child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Big Gardan Salad",style: Theme.of(context).textTheme.titleLarge,),
          const TCustomDivider(),
          const RatingAndBarGraph(),
          const TCustomDivider(),
          const TTitleText(title: 'Overview',),
          const Gap(TSizes.sm),
          const Flexible(child: SingleChildScrollView(
            child: TExpandableText(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad dskfjkshfkjskfsdlkjflskjfsldkjfldsjflksjflksjlfksjlkjdslkfjlskjflksjflkjldskjflsjslfkjfdsl'),
          )),
          const Gap(TSizes.md),
          const DayAnddTime(dayStart: 'Monday',dayend: 'Friday',
            hourStart: '10:00',
           hourEnd: '22:00',),
          const Gap(10),
          const DayAnddTime(dayStart: 'Saturday',dayend: 'Sunday',
            hourStart: '12:00',
            hourEnd: '20:00',),
          const TCustomDivider(),
          const TTitleText(title: "Address"),
          Row(
            children: [
              const Icon(Icons.location_on_rounded,color: TColors.primary,),
              const Gap(10),
              SizedBox(
                width: THelperFunctions.screenWidth() / 1.3,
                child: Text('Grand City St. 100, New York, United States',
                  style: Theme.of(context).textTheme.labelSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,),
              )
            ],
          ),
          const SizedBox(height :TSizes.sm),
          SizedBox(
            width: double.infinity,
          height: THelperFunctions.screenHeight() / 5,
          child: Image.asset( isDark ?TImages.foodMap  :TImages.lightfoodMap),)
        ],
      ),
      ),
    );
  }



}




