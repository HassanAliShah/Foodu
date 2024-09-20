

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
import 'package:foodu/utils/helpers/helper_function.dart';
class TPhoneNumberField extends StatelessWidget {
  const TPhoneNumberField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return SizedBox(
      height: TSizes.buttonHeight,
      child: TextField(cursorColor: TColors.primary,cursorHeight: TSizes.lg,style: Theme.of(context).textTheme.bodySmall,
        decoration: InputDecoration(
          fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
          prefixIcon:  CountryCodePicker(
            padding: EdgeInsets.zero,
            onChanged: print,
            initialSelection: 'GB',
            favorite: const ['+92','PK'],showDropDownButton: true,
            showCountryOnly: false,
            showOnlyCountryWhenClosed: false,
            hideMainText: true,
            alignLeft: false,
            searchDecoration: InputDecoration(
              fillColor: isDark ? TColors.darkCard : TColors.textFieldFillColor,
            ),
            dialogBackgroundColor: isDark ? TColors.backgroundDark : TColors.backgroundLight,
          ),
          hintText: TTexts.phoneNo,
          hintStyle: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}