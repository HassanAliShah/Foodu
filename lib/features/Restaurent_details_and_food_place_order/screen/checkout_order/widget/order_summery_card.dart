import 'package:flutter/material.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/controller/order_controller.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/model/order_item_model.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class OrderSummaryCard extends StatelessWidget {
  final String title;
  final OrderController orderController = Get.put(OrderController());

  OrderSummaryCard({super.key, required this.title});

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
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and Add Items Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:Theme.of(context).textTheme.bodyLarge,),
              TextButton(
                onPressed: () {
                  orderController.addItem(
                    OrderItem(
                      name: 'Mixid Salad',
                      imageUrl: HImages.mixid_salad,
                      price: 10.0,
                      quantity: 1,
                    ),
                  );
                },
                child: Text(
                  'Add Items',
                  style: Theme.of(context).textTheme.labelLarge
              ),),
            ],
          ),
          const SizedBox(height: 16.0),
          // Order Items List
          Obx(() {
            return Column(
              children: orderController.orderItems
                  .asMap()
                  .entries
                  .map((entry) => _buildOrderItem(entry.key, entry.value))
                  .toList(),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildOrderItem(int index, OrderItem item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          // Item Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              item.imageUrl,
              height: 70.0,
              width: 70.0,
              fit: BoxFit.cover,
            ),
          ),
         const Gap(16),
          // Item Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const Gap(14),
                Text(
                  '\$${item.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Gap(16),
          // Quantity and Edit Icon
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                decoration: BoxDecoration(
                  border: Border.all(color: TColors.primary),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  '${item.quantity}x',
                  style: Theme.of(Get.context!).textTheme.headlineLarge?.copyWith(fontSize: 14)
                ),
              ),
              const Gap(4),
              IconButton(
                icon: const Icon(
                  Icons.edit,
                  color: TColors.primary,
                  size: 16.0,
                ),
                onPressed: () {
                  orderController.editItem(
                    index,
                    OrderItem(
                      name: item.name,
                      imageUrl: item.imageUrl,
                      price: item.price,
                      quantity: item.quantity + 1,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
