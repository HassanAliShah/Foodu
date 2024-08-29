

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/wallet/controller/wallet_controller.dart';
import 'package:foodu/features/wallet/screens/e_wallet/widget/balance_card.dart';
import 'package:foodu/features/wallet/screens/e_wallet/widget/transection_history_widget.dart';
import 'package:foodu/features/wallet/screens/transaction_history/transaction_history_screen.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class EWalletScreen extends StatelessWidget {
  const EWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WalletController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('E-Wallet'),
          leading: Image.asset(HImages.appLogo,),
          actions: [
            Icon(Icons.search)
          ],
          ),
        body:Padding(
          padding: HSpacingStyles.paddingWithHeightWidth,
          child: Column(
            children: [
              BalanceCard(),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Transaction History',style:  Theme.of(context).textTheme.bodyLarge),
                    GestureDetector(onTap: (){
                      Get.to(const TransactionHistoryScreen());
                    }, child: Text('See All',style: Theme.of(context).textTheme.bodySmall?.copyWith(color: HColors.primary),))
                  ],
                ),
              ),
              TransectionHistoryWidget()
            ],
          ),
        ),
      ),
    );
  }
}
