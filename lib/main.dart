import 'package:flutter/material.dart';
import 'package:foodu/features/home_action_menu/screens/home/home_screen.dart';
import 'package:foodu/features/onboarding_signup_signin/screens/welcome/welcome.dart';
import 'package:foodu/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: HAppTheme.lightTheme,
      darkTheme: HAppTheme.darkTheme,
      home:  HomeScreen(),
    );
  }
}
