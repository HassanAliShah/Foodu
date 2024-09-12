
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/wallet/controller/wallet_controller.dart';
import 'package:foodu/features/wallet/screens/payment_method/payment_method_screen.dart';
import 'package:foodu/features/wallet/screens/top_up/AmoutButton.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:get/get.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = WalletController.instance;
    return Scaffold(
      appBar: const TAppBar(
        showBackButton: true,
        title: Text("Top Up E-Wallet"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter the amount of top up',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,),
             const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Obx(() => Text(
                '\$${controller.selectedAmount}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: TColors.primary)
              )),
            ),
            const SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: const [
                AmountButton( amount: 10,),
                AmountButton( amount: 20,),
                AmountButton( amount: 50,),
                AmountButton( amount: 100,),
                AmountButton( amount: 200,),
                AmountButton(amount: 250,),
                AmountButton(amount: 500,),
                AmountButton(amount: 750,),
                AmountButton( amount: 1000,),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () => Get.to( PaymentMethodScreen()), child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
