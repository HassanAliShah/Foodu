
import 'package:flutter/cupertino.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/features/order_section/controller/order_controller.dart';
import 'package:foodu/features/order_section/screens/order_tab/widget/cancelled_order_card.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CancelledOrder extends StatelessWidget {
  const CancelledOrder({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final  controller  =  OrderController.instance ;
    return Padding(
      padding: HSpacingStyles.paddingWithHeightWidth,
      child: Obx(
            () => ListView.builder(
          itemCount: controller.orders.length,
          itemBuilder: (context, index) {
            var order = controller.orders[index];
            return CancalledOrderCard(
              restaurantName: order['restaurantName'],
              itemsInfo: order['itemsInfo'],
              price: order['price'],
              isCancelled: order['isCancelled'],
              imageUrl: order['imageUrl'],
            );
          },
        ),
      ),
    );
  }
}