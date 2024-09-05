
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/login_signup/phone_number_field.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Form(child: Padding(
      padding: const EdgeInsets.only(top: TSizes.spaceBtwSection),
      child: Column(
        children: [
          const TPhoneNumberField(),
          const SizedBox(height: TSizes.sm,),
          SizedBox(
            height: TSizes.buttonHeight,
            child: TextField(cursorColor: TColors.primary,cursorHeight: TSizes.lg,style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                fillColor: isDark ? TColors.darkCard : TColors.backgroundLight,
                prefixIcon:const Icon(Icons.email),
                hintText: TText.email,
                hintStyle: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          const SizedBox(height: TSizes.sm,),
          SizedBox(
            height: TSizes.buttonHeight,
            child: TextField(style: Theme.of(context).textTheme.bodySmall,cursorColor: TColors.primary,cursorHeight: TSizes.lg,
              decoration: InputDecoration(
                fillColor: isDark ? TColors.darkCard : TColors.backgroundLight,
                prefixIcon:const Icon(Icons.person),
                hintText: TText.fullName,
                hintStyle: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          const SizedBox(height: TSizes.sm,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(value: true, onChanged: (value){},),
              Text(TText.rememberMe,style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const SizedBox(height: TSizes.sm,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){}, child: const Text(TText.signUp)),
          ),
        ],
      ),
    ));
  }
}