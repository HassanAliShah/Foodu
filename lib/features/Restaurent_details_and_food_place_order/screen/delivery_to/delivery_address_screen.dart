import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/controller/address_controller.dart';
import 'package:foodu/features/Restaurent_details_and_food_place_order/screen/delivery_to/widget/address_card.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DeliveryAddressScreen extends StatelessWidget {


  DeliveryAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  controller = Get.put(AddressController());
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
        title: Text("Deliver to",style: Theme.of(context).textTheme.bodySmall,),
      ),
      body: Padding(
        padding: HSpacingStyles.paddingWithHeightWidth,
        child: Obx(() => Column(
          children: [
            SizedBox(
              height: HHelperFunctions.screenHeight() / 1.4,
              child: ListView.builder(
                itemCount: controller.addresses.length,
                itemBuilder: (context, index) {
                  var address = controller.addresses[index];
                  return AddressCard(
                    title: address['title'],
                    address: address['address'],
                    isDefault: address['isDefault'],
                    isSelected: controller.selectedAddressIndex.value == index,
                    onTap: () => controller.selectAddress(index),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(

                onPressed: () {
                  controller.addAddress('New Address', '123 New Street, NY', isDefault: false);
                },
                child: Text(
                  'Add new Address',
                ),
              ),
            ),
          ],
        )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            'Apply',
          ),
        ),
      ),
    );
  }
}