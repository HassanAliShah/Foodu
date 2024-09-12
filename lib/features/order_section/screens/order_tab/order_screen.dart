

import 'package:flutter/material.dart';
import 'package:foodu/features/order_section/controller/order_controller.dart';
import 'package:foodu/features/order_section/screens/order_tab/widget/active_order_tab.dart';
import 'package:foodu/features/order_section/screens/order_tab/widget/cancelled_order_tab.dart';
import 'package:foodu/features/order_section/screens/order_tab/widget/completed_order_tab.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:get/get.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OrderController());
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Order'),
          leading: Padding(
            padding: const EdgeInsets.only(left: TSizes.x),
            child: Image.asset(TImages.appLogo,),
          ),
          bottom:  PreferredSize(preferredSize: const Size.fromHeight(50), child: TabBar(
            tabAlignment: TabAlignment.center,
            isScrollable: true,
            tabs:  controller.tabs.map((tabName) {
              return Tab(text: tabName);
            }).toList(),
          ),
          ),
        ),
        body: const TabBarView(
          children:
          [
            ActiveOrderTab(),
            CompletedOrderTab(),
            CancelledOrder(),
          ]

        ),
      ),
    );
  }
}

