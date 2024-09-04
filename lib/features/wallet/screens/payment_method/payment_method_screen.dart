import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/wallet/controller/wallet_controller.dart';
import 'package:foodu/features/wallet/screens/confirm_pin/confirm_pin.dart';
import 'package:foodu/features/wallet/screens/payment_method/widget/payment_method_item.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class PaymentMethodScreen extends StatelessWidget {
  final controller = WalletController.instance;

  PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HAppBar(showBackButton: true, title: Text("Top Up E-Wallet")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const PaymentMethodItem(index: 0, label: 'PayPal', image: HImages.paypal),
            const PaymentMethodItem(index: 1, label: 'Google Pay', image: HImages.google),
            const PaymentMethodItem(index: 2, label: 'Apple Pay', image: HImages.apple),
            const PaymentMethodItem(index: 3, label: 'Mastercard', image: HImages.masterCard, cardNumber: '**** **** **** 4679'),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Add New Card')
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(onPressed: () => Get.to(const ConfirmPin()), child: const Text("continue")),
      ),
    );
  }
}
