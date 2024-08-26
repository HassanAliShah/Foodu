import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/custom_shapes/container/custom_divider.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/checkout_order/widget/option_tile.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class PaymentsAndDiscounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: HHelperFunctions.screenHeight() / 6.5,
      margin: const EdgeInsets.symmetric(vertical: 12.0,),
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shadows: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
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

            },
          ),
          custom_divider(),
          OptionTile(
            icon: Icons.local_offer_outlined,
            title: 'Get Discounts',
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}
