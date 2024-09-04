

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:foodu/utils/constants/text_strings.dart';
class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: TSizes.buttonHeight,
      child: TextField(cursorColor: TColors.primary,cursorHeight: TSizes.lg,style: Theme.of(context).textTheme.bodySmall,
        decoration: InputDecoration(
          prefixIcon: const CountryCodePicker(
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
    );
  }
}