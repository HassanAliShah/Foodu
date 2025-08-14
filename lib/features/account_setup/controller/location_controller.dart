

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/constants/colors.dart';

/// -- On Pin Controller for Managing the Pin Operations
class LocationController extends GetxController {
  /// -- Singleton Instance
  static LocationController get instance => Get.isRegistered() ? Get.find() : Get.put(LocationController());

  /// -- Text Editing Controllers
  final locationController = TextEditingController();

  /// -- Focus Nodes
  final locationFocusNode = FocusNode();


  /// -- Icon Colors
  var locationIconColor = TColors.textGrey.obs;


  @override
  void onInit() {
    super.onInit();
    _setupFieldListeners(locationController, locationFocusNode, locationIconColor);

  }


  /// Helper Function for field listener
  void _setupFieldListeners(
      TextEditingController controller,
      FocusNode focusNode,
      Rx<Color> iconColor,
      ) {
    void updateIconColor() {
      final hasText = controller.text.isNotEmpty;

      if (focusNode.hasFocus && hasText) {
        iconColor.value = TColors.primary; // Green when typing
      } else if (!focusNode.hasFocus && hasText) {
        iconColor.value = TColors.iconBlackColor; // Black when filled
      } else {
        iconColor.value = TColors.iconGreyColor; // Default when empty
      }
    }

    controller.addListener(updateIconColor);
    focusNode.addListener(updateIconColor);
  }

  @override
  void onClose() {
    locationController.dispose();
    super.onClose();
  }

}