import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_divider.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:gap/gap.dart';

class ActiveOrderCard extends StatelessWidget {
  final String restaurantName;
  final String itemsInfo;
  final double price;
  final bool isCompleted;
  final String imageUrl;
  final VoidCallback onCancelOrder;
  final VoidCallback onTrackOrder;

  const ActiveOrderCard({
    super.key,
    required this.restaurantName,
    required this.itemsInfo,
    required this.price,
    required this.isCompleted,
    required this.imageUrl,
    required this.onCancelOrder,
    required this.onTrackOrder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        restaurantName,
                        style: Theme.of(context).textTheme.bodyLarge
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                        itemsInfo,
                        style: Theme.of(context).textTheme.labelSmall
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        Text(
                            '\$$price',
                            style: Theme.of(context).textTheme.titleMedium
                        ),
                        const SizedBox(width: 8.0),
                        if (isCompleted)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 4.0,
                            ),
                            decoration: BoxDecoration(
                              color: TColors.primary,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child:  Text(
                                'Paid',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.backgroundLight)
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const custom_divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: onCancelOrder,
                child: const Text('Cancel Order'),
              ),
              ElevatedButton(
                onPressed: onTrackOrder,
                child: const Text('Track Order'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
