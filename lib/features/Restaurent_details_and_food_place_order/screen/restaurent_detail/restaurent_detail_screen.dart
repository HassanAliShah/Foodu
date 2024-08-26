

import 'package:flutter/material.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/controller/restaurent_controller.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/add_item_to_basket/add_item_to_basket.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/checkout_order/checkout_order_screen.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_about/restaurent_about_screen.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_detail/widget/horizental_list_view.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_detail/widget/info_row.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_detail/widget/vertical_food_list.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_offer/offer_screen.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/restaurent_rating_and_reviews/rating_and_reviews.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RestaurentDetailScreen extends StatelessWidget {
  const RestaurentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller  = Get.put(RestaurantController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:
              [
                Container(
                width: double.infinity,
                height: HHelperFunctions.screenHeight() /3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(HImages.restaurent),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
                Positioned(top:20,right: 0,left: 0, child:
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: HSizes.defaultSpace),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){
                            Get.back();
                          }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,color: Colors.white,)),
                                IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.white,)),
                              ],
                            ),
                          )


                        ],
                      ),)
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(HSizes.defaultSpace),
            child: Column(
              children: [
                InfoRow(title: 'Big Gardan Salad',onTap: ()=> Get.to(RestaurentAboutScreen()),),
                Divider(),
                InfoRow(leadingIcon:Icon(Icons.star,color: HColors.rating,),text: '4.8',secondaryText: '(4.8k reviews)',onTap: () => Get.to(RatingAndReviews()),),
                Divider(),
                InfoRow(text: '2.4 Km',leadingIcon:Icon(Icons.location_on_rounded,color: HColors.primary,),onTap: () => Get.to(AddItemToBasket()) ,priceText: '\$2.0',showBottomRow: true,),
                Divider(),
                InfoRow(text: 'Offers are available',leadingIcon: Icon(Icons.local_offer_rounded,color: HColors.primary,),onTap: () => Get.to(OfferScreen())),
                Divider(),
              ],
            ),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:HSizes.defaultSpace),
              child: Text("For You",style:  Theme.of(context).textTheme.bodyLarge,),
            ),

            HorizontalFoodList(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:HSizes.defaultSpace),
              child: Text("Menu",style:  Theme.of(context).textTheme.bodyLarge,),
            ),
            VerticalFoodList()
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: HSizes.defaultSpace,vertical: HSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(CheckoutOrderScreen()), child: Text('Basket - 1 item -\$2 ')),
      ),
    );
  }
}
