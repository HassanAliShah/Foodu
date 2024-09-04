import 'package:flutter/material.dart';
import 'package:foodu/features/wallet/controller/wallet_controller.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class TransectionHistoryWidget extends StatelessWidget {
  const TransectionHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = WalletController.instance;
    return  Expanded(
      child: Obx(
            () => ListView.builder(
          itemCount: controller.transactions.length,
          itemBuilder: (context, index) {
            final transaction = controller.transactions[index];
            return ListTile(
              leading: Image.asset(
                transaction['image'] as String,
                width: 50,
                height: 50,
              ),
              title: Text(
                transaction['title'] as String,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold,color: TColors.textblack),
              ),
              subtitle: Text(
                transaction['date'] as String,
                style:  Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.textGrey),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$${transaction['amount'] as double}",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold,color: TColors.textblack)
                  ),
                  SizedBox(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          transaction['type'] as String,
                          style:  Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.textGrey),
                        ),
                        Image.asset( transaction['isCredit'] as bool  ? HImages.topdown :HImages.topup)
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
