import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/common/widgets/button/profile_toggle_item.dart';
import 'package:foodu/features/profile_section/controller/profile_controller.dart';
import 'package:foodu/features/profile_section/screens/address/address_screen.dart';
import 'package:foodu/features/profile_section/screens/favourite/favourite_screen.dart';
import 'package:foodu/features/profile_section/screens/help_center/help_center_screen.dart';
import 'package:foodu/features/profile_section/screens/invite_friend/invite_friend_screen.dart';
import 'package:foodu/features/profile_section/screens/language/language_setting.dart';
import 'package:foodu/features/profile_section/screens/notification/notification_setting.dart';
import 'package:foodu/features/profile_section/screens/payment/payment_method_screen.dart';
import 'package:foodu/features/profile_section/screens/profile_screen/widget/log_out_button.dart';
import 'package:foodu/features/profile_section/screens/profile_screen/widget/logout_bottom_sheet.dart';
import 'package:foodu/features/profile_section/screens/profile_screen/widget/profile_header.dart';
import 'package:foodu/features/profile_section/screens/profile_screen/widget/profile_list_item.dart';
import 'package:foodu/features/profile_section/screens/security/security_setting.dart';
import 'package:foodu/features/profile_section/screens/update_profile/update_profile_screen.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:foodu/utils/constants/sizes.dart';
import 'package:get/get.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final  controller = Get.put(ProfileController());
    return Scaffold(
      appBar: const HAppBar(
        leadingImage: HImages.appLogo,
        title: Text("Profile"),
        actions: [
          ImageIcon(AssetImage(HImages.more))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
          child: Column(
            children: [
              ProfileHeader(
                name: 'Andrew Ainsley',
                phoneNumber: '+1 111 467 378 399',
                imageUrl: HImages.pic,
                onEdit: () {
                  // Edit profile action
                },
              ),
              const Divider(),
              ProfileListItem(
                icon: Icons.favorite,
                title: 'My Favorite Restaurants',
                onTap: () {
                 Get.to(const FavouriteScreen());
                },
              ),
              ProfileListItem(
                icon: Icons.local_offer,
                title: 'Special Offers & Promo',
                onTap: () {
                  // Navigate to Offers & Promo
                },
              ),
              ProfileListItem(
                icon: Icons.payment,
                title: 'Payment Methods',
                onTap: () {
                 Get.to(const PaymentMethodScreen());
                },
              ),
              const Divider(),
              ProfileListItem(
                icon: Icons.person,
                title: 'Profile',
                onTap: () {
                  Get.to(const UpdateProfileScreen());
                },
              ),
              ProfileListItem(
                icon: Icons.location_on,
                title: 'Address',
                onTap: () {
                 Get.to(const AddressScreen());
                },
              ),
              ProfileListItem(
                icon: Icons.notifications,
                title: 'Notification',
                onTap: () {
                 Get.to(const NotificationSetting());
                },
              ),
              ProfileListItem(
                icon: Icons.security,
                title: 'Security',
                onTap: () {
                 Get.to(const SecuritySetting());
                },
              ),
              ProfileListItem(
                icon: Icons.language,
                title: 'Language',
                trailingText: 'English (US)',
                onTap: () {
                 Get.to(const LanguageSetting());
                },
              ),
              Obx(() => ProfileToggleItem(
                icon: Icons.dark_mode,
                title: 'Dark Mode',
                value: controller.isDarkMode.value,
                onChanged: (newValue) {
                  controller.toggleDarkMode(newValue);
                },
              )),
              ProfileListItem(
                icon: Icons.help_center,
                title: 'Help Center',
                onTap: () {
                  Get.to(const HelpCenterScreen());
                },
              ),
              ProfileListItem(
                icon: Icons.people,
                title: 'Invite Friends',
                onTap: () {
                  Get.to(const InviteFriendsScreen());
                },
              ),
              const Divider(),
              LogoutButton(
                onTap: () {
                  showLogoutConfirmation(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showLogoutConfirmation(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return LogoutBottomSheet(
          title: 'Logout',
          message: 'Are you sure you want to log out?',
          cancelText: 'Cancel',
          confirmText: 'Yes, Logout',
          onCancel: () {
            Navigator.pop(context); // Close the bottom sheet
          },
          onConfirm: () {
            Navigator.pop(context); // Perform logout and close the bottom sheet
            // Add your logout functionality here
          },
        );
      },
    );
  }
}
