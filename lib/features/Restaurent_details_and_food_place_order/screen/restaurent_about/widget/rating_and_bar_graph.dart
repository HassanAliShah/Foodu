

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:gap/gap.dart';

class RatingAndBarGraph extends StatelessWidget {
  const RatingAndBarGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width: HHelperFunctions.screenWidth() / 3,
          height: HHelperFunctions.screenHeight() / 6.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("4.8",style: Theme.of(context).textTheme.titleLarge,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star_rate_rounded,color: HColors.rating ,),
                  Icon(Icons.star_rate_rounded,color: HColors.rating ,),
                  Icon(Icons.star_rate_rounded,color: HColors.rating ,),
                  Icon(Icons.star_half_rounded,color: HColors.rating ,),
                  Icon(Icons.star_border_outlined,color: HColors.rating ,),
                ],
              ),

              Text("(4.8k reviews)",style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 12),)
            ],
          ),
        ),
        Gap(10),
        Container(
          width: HHelperFunctions.screenWidth() / 2.0,
          height: HHelperFunctions.screenHeight() / 6.2,
          child: Column(
            children: [
              chartRow(context,'5',85),
              chartRow(context,'4',65),
              chartRow(context,'3',30),
              chartRow(context,'2',45),
              chartRow(context,'1',20),
            ],
          ),
        )
      ],
    );
  }
  Widget chartRow(BuildContext context, String label, int pct) {
    return Row(
      children: [
        SizedBox(
          width: 5,
            child: Text(label, style: Theme.of(context).textTheme.titleSmall)),
        SizedBox(width: 8),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
          child:
          Stack(
              children: [
                Container(
                  height: 4,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                      color: HColors.textGrey,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(''),
                ),
                Container(
                  height: 4,
                  width: MediaQuery.of(context).size.width * (pct/100) * 0.45,
                  decoration: BoxDecoration(
                      color:HColors.primary,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(''),
                ),
              ]

          ),
        ),
      ],
    );
  }
}
