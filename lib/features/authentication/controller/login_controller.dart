import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../screens/let_you_in/let_you_in.dart';

/// -- On Login Controller for Managing the Login Operations
class LoginController extends GetxController {

  /// -- Singleton Instance
  static LoginController get instance => Get.isRegistered() ? Get.find() : Get.put(LoginController());

  /// -- Observables
  final rememberMe = false.obs;
  final formKey = GlobalKey<FormState>();

}
