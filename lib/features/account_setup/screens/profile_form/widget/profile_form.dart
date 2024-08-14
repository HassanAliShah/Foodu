

import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/phone_number_field.dart';
import 'package:foodu/features/account_setup/controller/profile_form_controller.dart';
import 'package:foodu/features/account_setup/screens/profile_form/widget/gender_selection_button.dart';
import 'package:foodu/features/account_setup/screens/profile_form/widget/profile_pic_selection.dart';
import 'package:foodu/features/account_setup/screens/profile_form/widget/textIconContainer.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';
class ProfileForm extends StatelessWidget {
  const ProfileForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = ProfileFormController.instance;
    return Form(child: SizedBox(
      height: HHelperFunctions.screenHeight() /1.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Profile Image
          ProfilePicSelection(),
          //Full name
          SizedBox(
            height: HSizes.buttonHeight,
            child: TextField(
              cursorColor: HColors.primary,
              cursorHeight: HSizes.lg,
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                hintText: HText.fullName,
                hintStyle: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          //nick name
          SizedBox(
            height: HSizes.buttonHeight,
            child: TextField(
              cursorColor: HColors.primary,
              cursorHeight: HSizes.lg,
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                hintText: HText.nickName,
                hintStyle: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          //email
          SizedBox(
            height: HSizes.buttonHeight,
            child: TextField(
              cursorColor: HColors.primary,
              cursorHeight: HSizes.lg,
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.email),
                hintText: HText.email,
                hintStyle: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          //custom textIcon Container
          Obx(()=> TextIconContainer(onTap: () async {
            final date =   await showDatePicker(context: context,
              firstDate: DateTime(1950),
              lastDate: DateTime(2024),);
            controller.dateOfBirth.value = DateFormat('dd/MM/yyyy').format(date!);
          },text: controller.dateOfBirth.value,iconData: Icons.calendar_month_rounded,),),

          PhoneNumberField(),
          GenderSelectionButton(),
        ],
      ),
    ));
  }
}