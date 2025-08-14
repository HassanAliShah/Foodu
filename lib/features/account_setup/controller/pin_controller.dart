

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

/// -- On Pin Controller for Managing the Pin Operations
class PinController extends GetxController {
  /// -- Singleton Instance
  static PinController get instance => Get.isRegistered() ? Get.find() : Get.put(PinController());


  final focusNode1 = FocusNode();
  final focusNode2 = FocusNode();
  final focusNode3 = FocusNode();
  final focusNode4 = FocusNode();

  @override
  void onClose() {
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    super.onClose();
  }


  void moveToNextField(String value, FocusNode currentNode, FocusNode nextNode) {
    if (value.length == 1) {
      nextNode.requestFocus();
    }
  }
}