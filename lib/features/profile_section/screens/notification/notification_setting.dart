
import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/button/profile_toggle_item.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
        title: Text("Notification"),
      ),
      body: ListView(
        children: [
          ProfileToggleItem(title: "General Notification", value: true, onChanged: (value){}),
          ProfileToggleItem(title: "Sound", value: false, onChanged: (value){}),
          ProfileToggleItem(title: "Vibrate", value: true, onChanged: (value){}),
          ProfileToggleItem(title: "Special offer", value: true, onChanged: (value){}),
          ProfileToggleItem(title: "Promo and Discount", value: false, onChanged: (value){}),
          ProfileToggleItem(title: "Payments", value: true, onChanged: (value){}),
          ProfileToggleItem(title: "Cash Back", value: false, onChanged: (value){}),
          ProfileToggleItem(title: "App Updates", value: true, onChanged: (value){}),
        ],
      ),
    );
  }
}
