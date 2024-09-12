import 'package:flutter/material.dart';
import 'package:foodu/features/wallet/controller/wallet_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class AmountButton extends StatelessWidget {
  const AmountButton({super.key, required this.amount});
  final int amount;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller = WalletController.instance;
     return OutlinedButton(
      onPressed: () => controller.updateAmount(amount),
      style: OutlinedButton.styleFrom(
        backgroundColor: isDark ? TColors.backgroundDark : TColors.backgroundLight,
        side: const BorderSide(
          color: TColors.primary,
          width: 2
        ),
      ),
      child: Text(
        '\$$amount',
      ),
    );
  }
}
