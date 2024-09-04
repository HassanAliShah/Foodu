import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CancalledOrderCard extends StatelessWidget {
  final String restaurantName;
  final String itemsInfo;
  final double price;
  final bool isCancelled;
  final String imageUrl;

  const CancalledOrderCard({
    super.key,
    required this.restaurantName,
    required this.itemsInfo,
    required this.price,
    required this.isCancelled,
    required this.imageUrl,
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
      child: Row(
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
               const Gap(4),
                Text(
                  itemsInfo,
                  style: Theme.of(context).textTheme.labelSmall
                ),
                const Gap(8),
                Row(
                  children: [
                    Text(
                      '\$$price',
                      style: Theme.of(context).textTheme.titleMedium
                    ),
                    const SizedBox(width: 8.0),
                    if (isCancelled)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.red
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  Text(
                          'Cancelled',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.red
                          )
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
