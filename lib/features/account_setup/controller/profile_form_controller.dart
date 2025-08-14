import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/formatters/formatter.dart';

/// -- On Profile Form Controller for Managing the Profile Form Operations
class ProfileFormController extends GetxController {
  /// -- Singleton Instance
  static ProfileFormController get instance => Get.isRegistered() ? Get.find() : Get.put(ProfileFormController());

  /// -- Observables
  var imagePath = ''.obs;
  var selectedGender = ''.obs;
  XFile? imageFile;
  DateTime? selectedDate;

  /// -- Text Editing Controllers
  final emailController = TextEditingController();
  final fullNameController = TextEditingController();
  final nickNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final genderController = TextEditingController();

  /// -- Focus Nodes
  final emailFocusNode = FocusNode();
  final dateOfBirthFocusNode = FocusNode();
  final genderFocusNode = FocusNode();

  /// Icon Colors
  var emailIconColor = TColors.textGrey.obs;
  var dateOfBirthIconColor = TColors.textGrey.obs;
  var genderIconColor = TColors.textGrey.obs;

  @override
  void onInit() {
    super.onInit();

    /// -- Email , Date of Birth and Gender field listeners
    _setupFieldListeners(emailController, emailFocusNode, emailIconColor);
    _setupFieldListeners(dateOfBirthController, dateOfBirthFocusNode, dateOfBirthIconColor);
    _setupFieldListeners(genderController, genderFocusNode, genderIconColor);
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

  /// -- Method to set gender
  void setGender(String gender) => genderController.text = gender;

  String genderConverter(String gender) {
    if (gender == Gender.male.name.tr) {
      return Gender.male.name;
    } else {
      return Gender.female.name;
    }
  }

  /// -- Method to show the gender picker based on platform
  void showGenderPicker(BuildContext context) {
    if (GetPlatform.isIOS) {
      _showCupertinoGenderPicker(context);
    } else {
      _showMaterialGenderPicker(context);
    }
  }

  /// -- iOS-specific Cupertino Picker
  void _showCupertinoGenderPicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250,
          color: CupertinoColors.systemBackground,
          child: Column(
            children: [
              Container(
                color: CupertinoColors.systemGrey6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      child: Text(TTexts.cancel.tr),
                      onPressed: () => Get.back(),
                    ),
                    CupertinoButton(
                      child: Text(TTexts.confirm.tr),
                      onPressed: () => Get.back(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CupertinoPicker(
                  itemExtent: 32.0,
                  onSelectedItemChanged: (int index) {
                    setGender([
                      TTexts.male.tr,
                      TTexts.female.tr,
                    ][index]);
                  },
                  children: <Widget>[
                    Text(TTexts.male.tr),
                    Text(TTexts.female.tr),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  /// -- Android-specific Material Picker
  void _showMaterialGenderPicker(BuildContext context) {
    Get.dialog(
      SimpleDialog(
        title: Text(TTexts.selectGender.tr),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              setGender(Gender.male.name.tr);
              Get.back();
            },
            child: Text(Gender.male.name.tr),
          ),
          SimpleDialogOption(
            onPressed: () {
              setGender(Gender.female.name.tr);
              Get.back();
            },
            child: Text(Gender.female.name.tr),
          ),
        ],
      ),
    );
  }

  /// -- Method to show the date picker
  void datePicker(BuildContext context) {
    if (GetPlatform.isIOS) {
      _showCupertinoDatePicker(context);
    } else {
      _showMaterialDatePicker(context);
    }
  }

  /// -- iOS-specific Cupertino DatePicker
  void _showCupertinoDatePicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250,
          color: CupertinoColors.systemBackground,
          child: Column(
            children: [
              Container(
                color: CupertinoColors.systemGrey6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      child: const Text('Cancel'),
                      onPressed: () => Get.back(),
                    ),
                    CupertinoButton(
                      child: const Text('Confirm'),
                      onPressed: () => Get.back(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CupertinoDatePicker(
                  initialDateTime: DateTime(2000),
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (DateTime newDate) {
                    selectedDate = newDate;
                    dateOfBirthController.text = TFormatter.formatDate(newDate);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  /// -- Android-specific Material DatePicker
  _showMaterialDatePicker(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      selectedDate = pickedDate;
      dateOfBirthController.text = TFormatter.formatDate(pickedDate);
    }
  }

  Future selectImage() async {
    final ImagePicker imagePicker = ImagePicker();
    imageFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (imageFile != null) {
      imagePath.value = imageFile!.path;
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    fullNameController.dispose();
    nickNameController.dispose();
    phoneNumberController.dispose();
    dateOfBirthController.dispose();
    genderController.dispose();
    emailFocusNode.dispose();
    dateOfBirthFocusNode.dispose();
    genderFocusNode.dispose();
    super.onClose();
  }
}
