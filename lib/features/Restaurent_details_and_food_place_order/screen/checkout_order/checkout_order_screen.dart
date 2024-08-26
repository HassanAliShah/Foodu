

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/checkout_order/widget/delivery_address_card.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/checkout_order/widget/order_summery_card.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/checkout_order/widget/payment_and_discount.dart';

class CheckoutOrderScreen extends StatelessWidget {
  const CheckoutOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
        title: Text("Checkout Order"),
      ),
      body: Padding(padding: HSpacingStyles.paddingWithHeightWidth,
      child: Column(
        children: [
          DeliveryAddressCard(
            title: 'Home',
            address: 'Times Square NYC, Manhattan',
            isDefault: true,
          ),
          OrderSummaryCard(title: "Order Summery"),
          PaymentsAndDiscounts()
        ],
      )
        ,),
    );
  }
}
