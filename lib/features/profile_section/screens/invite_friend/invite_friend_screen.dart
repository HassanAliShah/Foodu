import 'package:flutter/material.dart';
import 'package:foodu/common/widgets/app_bar/app_bar.dart';
import 'package:foodu/features/profile_section/controller/friend_controller.dart';
import 'package:foodu/features/profile_section/screens/invite_friend/widget/friend_item.dart';
import 'package:get/get.dart';

class InviteFriendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FriendsController controller = Get.put(FriendsController());

    return Scaffold(
      appBar: HAppBar(
        showBackButton: true,
        title: Text("Invite Friend"),
      ),
      body: Obx(() => ListView.builder(
        itemCount: controller.friendsList.length,
        itemBuilder: (context, index) {
          return FriendItem(friend: controller.friendsList[index]);
        },
      )),
    );
  }
}
