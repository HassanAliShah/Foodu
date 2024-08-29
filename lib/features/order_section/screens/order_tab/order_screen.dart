

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/features/order_section/controller/order_controller.dart';
import 'package:foodu/features/order_section/screens/order_tab/widget/active_order_tab.dart';
import 'package:foodu/features/order_section/screens/order_tab/widget/cancelled_order_tab.dart';import 'package:foodu/features/order_section/screens/order_tab/widget/cancelled_order_card.dart';
import 'package:foodu/features/order_section/screens/order_tab/widget/completed_order_tab.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OrderController());
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Order'),
          leading: Image.asset(HImages.appLogo,),
          bottom:  PreferredSize(preferredSize: Size.fromHeight(50), child: TabBar(
            tabAlignment: TabAlignment.center,
            isScrollable: true,
            tabs:  controller.tabs.map((tabName) {
              return Tab(text: tabName);
            }).toList(),
          ),
          ),
        ),
        body: TabBarView(
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

