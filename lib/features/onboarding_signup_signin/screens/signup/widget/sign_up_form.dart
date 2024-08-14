
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/phone_number_field.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';

class HSignUpForm extends StatelessWidget {
  const HSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: EdgeInsets.only(top: HSizes.spaceBtwSection),
      child: Column(
        children: [
          PhoneNumberField(),
          SizedBox(height: HSizes.sm,),
          SizedBox(
            height: HSizes.buttonHeight,
            child: TextField(cursorColor: HColors.primary,cursorHeight: HSizes.lg,style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.email),
                hintText: HText.email,
                hintStyle: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: HSizes.sm,),
          SizedBox(
            height: HSizes.buttonHeight,
            child: TextField(style: Theme.of(context).textTheme.bodySmall,cursorColor: HColors.primary,cursorHeight: HSizes.lg,
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.person),
                hintText: HText.fullName,
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
            child: ElevatedButton(onPressed: (){}, child: Text(HText.signUp)),
          ),
        ],
      ),
    ));
  }
}