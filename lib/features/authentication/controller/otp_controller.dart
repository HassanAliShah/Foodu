import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// -- On OTP Controller for Managing the OTP Operations
class OtpController extends GetxController {

  /// -- Singleton Instance
  static OtpController get instance => Get.isRegistered() ? Get.find() : Get.put(OtpController());

  /// -- Focus Node
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
