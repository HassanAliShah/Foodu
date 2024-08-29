import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/features/wallet/controller/wallet_controller.dart';
import 'package:foodu/utils/constants/colors.dart';

class AmountButton extends StatelessWidget {
  const AmountButton({super.key, required this.amount});
  final int amount;

  @override
  Widget build(BuildContext context) {
    final controller = WalletController.instance;
     return OutlinedButton(
      onPressed: () => controller.updateAmount(amount),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(
          color: HColors.primary,
          width: 2
        ),
      ),
      child: Text(
        '\$$amount',
      ),
    );
  }
}
