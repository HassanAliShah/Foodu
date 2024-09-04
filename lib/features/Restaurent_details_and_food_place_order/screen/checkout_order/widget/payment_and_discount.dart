import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_divider.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/checkout_order/widget/option_tile.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/discount/discount_screen.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/payment_method/payment_method_screen.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class PaymentsAndDiscounts extends StatelessWidget {
  const PaymentsAndDiscounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: THelperFunctions.screenHeight() / 6.5,
      margin: const EdgeInsets.symmetric(vertical: 12.0,),
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shadows: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),

      ),
      child: Column(
        children: [
          OptionTile(
            icon: Icons.account_balance_wallet_outlined,
            title: 'Payment Methods',
            onTap: () {
              Get.to(const PaymentMethodScreen());
            },
          ),
          const custom_divider(),
          OptionTile(
            icon: Icons.local_offer_outlined,
            title: 'Get Discounts',
            onTap: () {
              Get.to(DiscountScreen());
            },
          ),
        ],
      ),
    );
  }
}
