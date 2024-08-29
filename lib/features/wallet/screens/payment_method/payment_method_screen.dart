import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/wallet/controller/wallet_controller.dart';
import 'package:foodu/features/wallet/screens/confirm_pin/confirm_pin.dart';
import 'package:foodu/features/wallet/screens/payment_method/widget/payment_method_item.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class PaymentMethodScreen extends StatelessWidget {
  final  controller = WalletController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
        title: Text("Top Up E-Wallet"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PaymentMethodItem(
              index: 0,
              label: 'PayPal',
              image: HImages.paypal,
            ),
            PaymentMethodItem(
              index: 1,
              label: 'Google Pay',
              image: HImages.google,
            ),
            PaymentMethodItem(
              index: 2,
              label: 'Apple Pay',
              image: HImages.apple,
            ),
            PaymentMethodItem(
              index: 3,
              label: 'Mastercard',
              image: HImages.masterCard,
              cardNumber: '**** **** **** 4679',
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
              },
              child: Text(
                'Add New Card',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(padding: EdgeInsets.all(20),
        child: ElevatedButton(onPressed: ()=> Get.to(ConfirmPin()), child: Text("continue")),),
    );
  }

}