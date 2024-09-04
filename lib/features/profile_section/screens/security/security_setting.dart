
import 'package:flutter/material.dart';
import 'package:foodu/common/styles/spacing_styles.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/button/profile_toggle_item.dart';
import 'package:foodu/features/profile_section/screens/profile_screen/widget/profile_list_item.dart';

class SecuritySetting extends StatelessWidget {
  const SecuritySetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HAppBar(
        showBackButton: true,
        title: Text("Security"),
      ),
      body: Column(
        children: [

              ProfileToggleItem(title: "Remember me", value: true, onChanged: (value){}),
              ProfileToggleItem(title: "Face Id", value: true, onChanged: (value){}),
              ProfileToggleItem(title: "Biometric", value: true, onChanged: (value){}),
              ProfileListItem(title: 'Google Authenticator', onTap: (){}),
              Padding(
            padding: HSpacingStyles.paddingWithHeightWidth,
            child: SizedBox(width: double.infinity,child: OutlinedButton(onPressed: (){}, child: const Text("Change Pin"))),
          ),
              const SizedBox(height: 10,),
             Padding(
            padding: HSpacingStyles.paddingWithHeightWidth,
            child: SizedBox(width: double.infinity,child: OutlinedButton(onPressed: (){}, child: const Text("Change Password"))),
          ),
        ],
      ),
    );
  }
}
