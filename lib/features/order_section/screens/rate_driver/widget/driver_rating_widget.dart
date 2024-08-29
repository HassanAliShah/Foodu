import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:gap/gap.dart';
import 'star_rating.dart';

class DriverRatingWidget extends StatelessWidget {
  final String driverImage;
  final String title;
  final String subtitle;
  final Function(int) onRatingChanged;
  final VoidCallback onCallDriverPressed;

  const DriverRatingWidget({
    Key? key,
    required this.driverImage,
    required this.title,
    required this.subtitle,
    required this.onRatingChanged,
    required this.onCallDriverPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        // Driver's Image
        CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage(driverImage),
        ),
        const SizedBox(height: 20.0),
        // Title
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
       Gap(20),
        // Subtitle
        Text(
          subtitle,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: HColors.textGrey),
          textAlign: TextAlign.center,
        ),
       Gap(20),
        // Star Rating
        StarRating(
          starSize: 30.0,
          onRatingChanged: onRatingChanged,
        ),
       Gap(20),
        //  Driver Text
         Text(
          "Haven't received your order?",
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
       Gap(10),
        //  Driver Button
        GestureDetector(
          onTap: onCallDriverPressed,
          child:  Text(
            "Call your driver",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 16)
          ),
        ),
      ],
    );
  }
}
