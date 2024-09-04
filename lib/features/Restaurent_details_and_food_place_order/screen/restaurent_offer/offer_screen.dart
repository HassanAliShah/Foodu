

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/controller/offer_controller.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_offer/widget/promo_card.dart';
import 'package:get/get.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OfferController());
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
        title: Text("Offers Are Available",style: Theme.of(context).textTheme.bodySmall,),
      ),
      body:  Padding(
        padding:HSpacingStyles.paddingWithHeightWidth,
        child: Obx(
              () => ListView.builder(
            itemCount: controller.promoList.length,
            itemBuilder: (context, index) {
              var promo = controller.promoList[index];
              return PromoCard(
                icon: promo['icon'] as IconData,
                title: promo['title'] as String,
                description: promo['description'] as String,
                buttonText: promo['buttonText'] as String,
                onTap: () {
                  if(promo['buttonText'] == 'Claim')
                    {
                      print("claimed");
                      promo['buttonText'] = 'Claimed';
                    }else{
                    promo['buttonText'] = 'Claim';
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
