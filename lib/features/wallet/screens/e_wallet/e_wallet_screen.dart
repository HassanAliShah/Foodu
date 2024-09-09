

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/wallet/controller/wallet_controller.dart';
import 'package:foodu/features/wallet/screens/e_wallet/widget/balance_card.dart';
import 'package:foodu/features/wallet/screens/e_wallet/widget/transection_history_widget.dart';
import 'package:foodu/features/wallet/screens/transaction_history/transaction_history_screen.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class EWalletScreen extends StatelessWidget {
  const EWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(WalletController());
    return SafeArea(
      child: Scaffold(
        appBar:  TAppBar(
          title: const Text('E-Wallet'),
          leadingImage: TImages.appLogo,
          actions: [
            const Icon(Icons.search),
            const SizedBox(width : TSizes.x),
            ImageIcon(const AssetImage(TImages.more),color: isDark ? TColors.backgroundLight : TColors.backgroundDark ,)
          ],
          ),
        body:Padding(
          padding: TSpacingStyles.paddingWithHeightWidth,
          child: Column(
            children: [
              const BalanceCard(),
              Padding(
                padding:  const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Transaction History',style:  Theme.of(context).textTheme.bodyLarge),
                    GestureDetector(onTap: (){
                      Get.to(const TransactionHistoryScreen());
                    }, child: Text('See All',style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.primary),))
                  ],
                ),
              ),
              const TransectionHistoryWidget()
            ],
          ),
        ),
      ),
    );
  }
}
