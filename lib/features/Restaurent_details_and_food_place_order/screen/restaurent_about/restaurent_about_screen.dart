

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_divider.dart';
import 'package:foodu/common/widgets/texts/expandable_text.dart';
import 'package:foodu/common/widgets/texts/title_text.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_about/widget/day_and_time.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_about/widget/rating_and_bar_graph.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:gap/gap.dart';
class RestaurentAboutScreen extends StatelessWidget {
  const RestaurentAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
      ),
      body: Padding(padding: HSpacingStyles.paddingWithHeightWidth,child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Big Gardan Salad",style: Theme.of(context).textTheme.titleLarge,),
          custom_divider(),
          RatingAndBarGraph(),
          custom_divider(),
          TitleText(title: 'Overview',),
          Expanded(child: SingleChildScrollView(
            child: ExpandableText(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad dskfjkshfkjskfsdlkjflskjfsldkjfldsjflksjflksjlfksjlkjdslkfjlskjflksjflkjldskjflsjslfkjfdsl'),
          )),
          DayAnddTime(dayStart: 'Monday',dayend: 'Friday',
            hourStart: '10:00',
           hourEnd: '22:00',),
          Gap(10),
          DayAnddTime(dayStart: 'Saturday',dayend: 'Sunday',
            hourStart: '12:00',
            hourEnd: '20:00',),
          custom_divider(),
          TitleText(title: "Address"),
          Row(
            children: [
              Icon(Icons.location_on_rounded,color: HColors.primary,),
              Gap(10),
              SizedBox(
                width: HHelperFunctions.screenWidth() / 1.3,
                child: Text('Grand City St. 100, New York, United States',
                  style: Theme.of(context).textTheme.labelSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,),
              )
            ],
          ),
          Container(color: Colors.green.shade50,
            width: double.infinity,
          height: HHelperFunctions.screenHeight() / 5,)
        ],
      ),
      ),
    );
  }



}




