import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_divider.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/checkout_order/widget/order_summery_card.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:gap/gap.dart';

class DeliveryAddressCard extends StatelessWidget {
  final String title;
  final String address;
  final bool isDefault;

  const DeliveryAddressCard({
    Key? key,
    required this.title,
    required this.address,
    this.isDefault = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 12.0,),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver to",style: Theme.of(context).textTheme.bodyLarge,),
          custom_divider(),
          Row(
            children: [
              // Icon or Image
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: CircleAvatar(
                  backgroundColor: HColors.primary,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ),
              ),
             Gap(16),
              // Title and Address
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.bodyLarge
                        ),
                        SizedBox(width: 8.0),
                        if (isDefault)
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6.0, vertical: 2.0),
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text(
                              'Default',
                              style: Theme.of(context).textTheme.labelLarge
                            ),
                          ),
                      ],
                    ),
                    Gap(4),
                    Text(
                      address,
                      style: Theme.of(context).textTheme.labelSmall
                    ),
                  ],
                ),
              ),
              Gap(16),
              // Arrow Icon
              Icon(
                Icons.arrow_forward_ios,
                color: HColors.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
