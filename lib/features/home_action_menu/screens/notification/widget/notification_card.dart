import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final String description;
  final String status;

  const NotificationCard({
    Key? key,
    required this.title,
    required this.date,
    required this.time,
    required this.description,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(HSizes.md),
      ),
      child: Padding(
        padding: const EdgeInsets.all(HSizes.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Leading Icon with Background
                if(title=='Orders Successful!')CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: HSizes.lg,
                  child: Icon(
                    Icons.lock,
                    color: Colors.white,
                    size: HSizes.lg,
                  ),
                ),
                if(title=='Orders Cancelled!')const CircleAvatar(
                    backgroundColor:Color(0x14F75555),
                    radius: HSizes.lg,
                    child: Icon(
                      Icons.close,
                      color: Color(0xffFF8A9B),
                      size: HSizes.lg,
                    ),
                  ),
                if(title=='New Services Available!')const CircleAvatar(
                    backgroundColor:Color(0x14FF9800),
                    radius: HSizes.lg,
                    child: Icon(
                      Icons.home_repair_service,
                      color: Color(0xffFFAB38),
                      size: HSizes.lg,
                    ),
                  ),
                if(title=='Credit Card Connected!')const CircleAvatar(
                  backgroundColor:Color(0x14246BFD),
                  radius: HSizes.lg,
                  child: Icon(
                    Icons.credit_card,
                    color: Color(0xff5089FF),
                    size: HSizes.lg,
                  ),
                ),
                if(title=='Account Setup Successful!')const CircleAvatar(
                  backgroundColor:Color(0x141BAC4B),
                  radius: HSizes.lg,
                  child: Icon(
                    Icons.person,
                    color: Color(0xff46D375),
                    size: HSizes.lg,
                  ),
                ),
                const SizedBox(width: HSizes.xm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style:Theme.of(context).textTheme.bodySmall
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: HSizes.sm,
                              vertical: HSizes.xs,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(HSizes.cardRadiusMd),
                            ),
                            child: Text(
                              status,
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 8)
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: HSizes.xs),
                      Text(
                        '$date | $time',
                        style: Theme.of(context).textTheme.labelSmall
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: HSizes.xm),
            Text(
              description,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: HColors.textblack
              )
            ),
          ],
        ),
      ),
    );
  }
}
