import 'package:foodu/features/profile_section/model/invite_friend.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class FriendsController extends GetxController {
  var friendsList = <Friend>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadFriends();
  }

  void loadFriends() {
    friendsList.addAll([
      Friend(name: 'Lauralee Quintero', phoneNumber: '+1-300-555-0135', imageUrl: HImages.pic),
      Friend(name: 'Annabel Rohan', phoneNumber: '+1-202-555-0136', imageUrl: HImages.pic),
      Friend(name: 'Alfonzo Schuessler', phoneNumber: '+1-300-555-0119', imageUrl: HImages.pic),
      // Add more friends as per your data
    ]);
  }

  void toggleInvite(Friend friend) {
    friend.isInvited.value = !friend.isInvited.value;
  }
}