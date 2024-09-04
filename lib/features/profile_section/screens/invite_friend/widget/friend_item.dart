import 'package:flutter/material.dart';
import 'package:foodu/features/profile_section/controller/friend_controller.dart';
import 'package:foodu/features/profile_section/model/invite_friend.dart';
import 'package:get/get.dart';

class FriendItem extends StatelessWidget {
  final Friend friend;

  const FriendItem({super.key, required this.friend});

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(friend.imageUrl),
      ),
      title: Text(friend.name, style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
      subtitle: Text(friend.phoneNumber, style:Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey)),
      trailing: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: friend.isInvited.value ? Colors.green : Colors.white,
          backgroundColor: friend.isInvited.value ? Colors.white : Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.green),
          ),
        ),
        child: Text(friend.isInvited.value ? 'Invited' : 'Invite'),
        onPressed: () {
          Get.find<FriendsController>().toggleInvite(friend);
        },
      ),
    ));
  }
}
