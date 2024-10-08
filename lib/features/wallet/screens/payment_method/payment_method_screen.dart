import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/wallet/controller/wallet_controller.dart';
import 'package:foodu/features/wallet/screens/confirm_pin/confirm_pin.dart';
import 'package:foodu/features/wallet/screens/payment_method/widget/payment_method_item.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class PaymentMethodScreen extends StatelessWidget {
  final  controller = WalletController.instance;

   PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const TAppBar(
        showBackButton: true,
        title: Text("Top Up E-Wallet"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const PaymentMethodItem(
              index: 0,
              label: 'PayPal',
              image: TImages.paypal,
            ),
            const PaymentMethodItem(
              index: 1,
              label: 'Google Pay',
              image: TImages.google,
            ),
             PaymentMethodItem(
              index: 2,
              label: 'Apple Pay',
              image: isDark ? TImages.lightAppleLogo : TImages.apple,
            ),
            const PaymentMethodItem(
              index: 3,
              label: 'Mastercard',
              image: TImages.masterCard,
              cardNumber: '**** **** **** 4679',
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
              },
              child: const Text(
                'Add New Card',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(padding: const EdgeInsets.all(20),
        child: ElevatedButton(onPressed: ()=> Get.to(const ConfirmPin()), child: const Text("continue")),),
    );
  }

}