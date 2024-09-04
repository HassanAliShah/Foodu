
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
      padding: const EdgeInsets.only(top: TSizes.spaceBtwSection),
      child: Column(
        children: [
          const PhoneNumberField(),
          const SizedBox(height: TSizes.sm,),
          SizedBox(
            height: TSizes.buttonHeight,
            child: TextField(cursorColor: TColors.primary,cursorHeight: TSizes.lg,style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                prefixIcon:const Icon(Icons.email),
                hintText: HText.email,
                hintStyle: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          const SizedBox(height: TSizes.sm,),
          SizedBox(
            height: TSizes.buttonHeight,
            child: TextField(style: Theme.of(context).textTheme.bodySmall,cursorColor: TColors.primary,cursorHeight: TSizes.lg,
              decoration: InputDecoration(
                prefixIcon:const Icon(Icons.person),
                hintText: HText.fullName,
                hintStyle: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          const SizedBox(height: TSizes.sm,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(value: true, onChanged: (value){},),
              Text(HText.rememberMe,style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const SizedBox(height: TSizes.sm,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){}, child: const Text(HText.signUp)),
          ),
        ],
      ),
    ));
  }
}