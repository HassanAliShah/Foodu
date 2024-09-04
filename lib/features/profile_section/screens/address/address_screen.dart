

import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/profile_section/controller/profile_controller.dart';
import 'package:foodu/features/profile_section/screens/address/widget/address_card.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller  = ProfileController.instance;
    return Scaffold(
      appBar: const HAppBar(
        showBackButton: true,
        title: Text("Address"),
      ),
      body: Padding(
        padding: HSpacingStyles.paddingWithHeightWidth,
        child: Obx(() => Column(
          children: [
            SizedBox(
              height: THelperFunctions.screenHeight() / 1.4,
              child: ListView.builder(
                itemCount: controller.addresses.length,
                itemBuilder: (context, index) {
                  var address = controller.addresses[index];
                  return AddressCard(
                    title: address['title'],
                    address: address['address'],
                    isDefault: address['isDefault'],
                    onTap: () {}
                    ,
                  );
                },
              ),
            ),
          ],
        )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {

          },
          child: const Text(
            'Add new Address',
          ),
        ),
      ),
    );
  }
}
