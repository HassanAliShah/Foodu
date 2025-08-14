

import 'package:foodu/features/account_setup/screens/location/set_location.dart';
import 'package:foodu/features/authentication/screens/otp/otp_screen.dart';
import 'package:foodu/features/authentication/screens/welcome/welcome.dart';
import 'package:foodu/features/home_action_menu/screens/cart/cart_screen.dart';
import 'package:get/get.dart';
import '../features/account_setup/screens/pin/create_pin.dart';
import '../features/account_setup/screens/profile_form/profile_form_screen.dart';
import '../features/authentication/screens/let_you_in/let_you_in.dart';
import '../features/authentication/screens/login/login_screen.dart';
import '../features/authentication/screens/onboarding/onboarding.dart';
import '../features/authentication/screens/signup/sign_up_screen.dart';
import '../features/home_action_menu/screens/notification/notification_screen.dart';
import 'routes.dart';

class AppRoutes {
  static final pages = [
    // -- Authentication Routes
    GetPage(name: TRoutes.welcome, page: ()=> const WelcomeScreen()),
    GetPage(name: TRoutes.onboarding, page: ()=> const OnBoardingScreen()),
    GetPage(name: TRoutes.letYouIn, page: ()=> const LetYouInScreen()),
    GetPage(name: TRoutes.signup, page: ()=> const SignUpScreen()),
    GetPage(name: TRoutes.logIn, page: ()=> const LoginScreen()),
    GetPage(name: TRoutes.otp, page: ()=> const OtpScreen()),

    // -- Profile Routes
    GetPage(name: TRoutes.profileForm, page: ()=> const ProfileFormScreen()),
    GetPage(name: TRoutes.pin, page: ()=> const CreatePin()),
    GetPage(name: TRoutes.setLocation, page: ()=> const SetLocation()),

    // -- Notification
    GetPage(name: TRoutes.notification, page: ()=> const NotificationScreen()),

    // -- Cart
    GetPage(name: TRoutes.cart, page: ()=> const CartScreen()),
  ];
}
