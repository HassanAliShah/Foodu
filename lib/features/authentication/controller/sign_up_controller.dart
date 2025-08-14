import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../utils/constants/colors.dart';

/// -- Sign Up Controller for Managing the Sign Up Operations
class SignUpController extends GetxController {

  /// -- Singleton Instance
  static SignUpController get instance => Get.isRegistered() ? Get.find() : Get.put(SignUpController());

  /// -- Observables
  final rememberMe = false.obs;
  final formKey = GlobalKey<FormState>();

  /// -- Text Editing Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullNameController = TextEditingController();
  final phoneNumberController = TextEditingController();

  /// -- Focus Nodes
  final emailFocusNode = FocusNode();
  final fullNameFocusNode = FocusNode();

  /// Icon Colors
  var emailIconColor = TColors.iconGreyColor.obs;
  var fullNameIconColor = TColors.iconGreyColor.obs;

  @override
  void onInit() {
    super.onInit();

    /// -- Email and Full Name field listeners
    _setupFieldListeners(emailController, emailFocusNode, emailIconColor);
    _setupFieldListeners(fullNameController, fullNameFocusNode, fullNameIconColor);
  }


  /// -- Helper Function for field listener
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
    emailController.dispose();
    fullNameController.dispose();
    emailFocusNode.dispose();
    fullNameFocusNode.dispose();
    super.onClose();
  }

}
