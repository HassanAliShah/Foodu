

import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/dialouge/custom_dialogue.dart';
import 'package:foodu/features/order_section/screens/cancel_order/widget/cancellation_reason_widget.dart';
import 'package:get/get.dart';

class CancelOrderScreen extends StatelessWidget {
  const CancelOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackButton: true,
        title: Text("Cancel Order"),
      ),
      body: const Column(
        children: [
          CancellationReasonWidget(),
        ],
      ),
      bottomNavigationBar: Padding(padding: const EdgeInsets.all(20),child: 
        ElevatedButton(onPressed: () => Get.to(const TCustomDialog(title: "We’re so sad about\nyour cancellation", subtitle: "We will continue to improve our service & satisfy you on the next order.", emoji:  Icons.sentiment_dissatisfied,))  , child: const Text("Submit")),),
    );
  }
}
