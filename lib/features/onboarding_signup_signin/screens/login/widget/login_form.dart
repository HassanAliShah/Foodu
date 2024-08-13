
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/otp/otp_screen.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HLoginForm extends StatelessWidget {
  const HLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: EdgeInsets.symmetric(vertical: HSizes.spaceBtwSection),
      child: Column(
        children: [
          SizedBox(
            height: HSizes.buttonHeight,
            child: TextField(cursorColor: HColors.primary,cursorHeight: HSizes.lg,style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                prefixIcon: CountryCodePicker(
                  padding: EdgeInsets.zero,
                  onChanged: print,
                  initialSelection: 'PAK',
                  favorite: ['+39','FR'],showDropDownButton: true,
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  hideMainText: true,
                  alignLeft: false,

                ),
                hintText: HText.phoneNo,
                hintStyle: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: HSizes.sm,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(value: true, onChanged: (value){},),
              Text(HText.rememberMe,style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          SizedBox(height: HSizes.sm,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){
              Get.to(OtpScreen());
            }, child: Text(HText.signIN)),
          ),
        ],
      ),
    ));
  }
}