

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/checkout_order/widget/delivery_address_card.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/checkout_order/widget/order_summery_card.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/checkout_order/widget/order_summery_detail.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/checkout_order/widget/payment_and_discount.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/finding_nearby_driver/finding_driver.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CheckoutOrderScreen extends StatelessWidget {
  const CheckoutOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
        title: Text("Checkout Order",style: Theme.of(context).textTheme.bodySmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: HSpacingStyles.paddingWithHeightWidth,
        child: Column(
          children: [
            DeliveryAddressCard(
              title: 'Home',
              address: 'Times Square NYC, Manhattan',
              isDefault: true,
            ),
            OrderSummaryCard(title: "Order Summery"),
            PaymentsAndDiscounts(),
            const OrderSummaryDetail(subtotal: 24, deliveryFee: 2,)
          ],
        )
          ,),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(FindingDriver()), child: Text("Place Order - 26\$"))),
      ),
    );
  }
}
