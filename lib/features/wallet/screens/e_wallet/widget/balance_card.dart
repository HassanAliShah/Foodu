

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/features/wallet/controller/wallet_controller.dart';
import 'package:foodu/features/wallet/screens/top_up/top_up_screen.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = WalletController.instance;
    return  Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: HColors.primary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            controller.userName.value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                controller.cardNumber.value,
                style:  Theme.of(context).textTheme.bodySmall?.copyWith(color: HColors.backgroundLight)
              ),
              Spacer(),
              Row(
                children: [
                  Image.asset(
                    HImages.visa,
                    width: 50,
                  ),
                  Image.asset(
                    HImages.masterCard,
                    width: 50,
                  ),
                ],
              )

            ],
          ),
          const SizedBox(height: 14),
          Text(
            "Your balance",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: HColors.backgroundLight)
          ),
          const SizedBox(height: 8),
          Obx(() => Row(
            children: [
              Text(
                "\$${controller.balance.value.toStringAsFixed(2)}",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: HColors.backgroundLight)
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.white
                ),
                onPressed: () => Get.to(TopUpScreen()),
                child: Text("Top Up",style: Theme.of(context).textTheme.bodySmall,),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
