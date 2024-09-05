
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:get/get.dart';

class DayAnddTime extends StatelessWidget {
  const DayAnddTime({
    super.key, required this.dayStart, required this.dayend, required this.hourStart, required this.hourEnd,
  });

  final String dayStart;
  final String dayend;
  final String hourStart;
  final String hourEnd;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width:Get.width /2 ,
            child: Text("$dayStart - $dayend",
              maxLines: 1
              ,style: Theme.of(context).textTheme.bodySmall,)),
        Text(':',style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary)),
        Text('$hourStart - $hourEnd',style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary),),
      ],
    );
  }
}