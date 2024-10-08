import 'package:flutter/material.dart';
import 'package:foodu/features/chats/controller/chat_controller.dart';
import 'package:foodu/features/chats/model/chat_item_model.dart';
import 'package:foodu/features/chats/screens/chat_screen/widget/chat_list_widget.dart';
import 'package:foodu/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChatController());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Message'),
          leading: Image.asset(
            TImages.appLogo,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: TabBar(
              tabAlignment: TabAlignment.center,
              labelPadding: const EdgeInsets.symmetric(horizontal: 50),
              isScrollable: false,
              tabs: controller.tabs.map((tabName) {
                return Tab(text: tabName);
              }).toList(),
            ),
          ),
        ),
        body: ChatListWidget(
          chatItems: [
            ChatItem(
              avatarUrl: TImages.pic,
              name: 'Rayford Chenail',
              lastMessage: 'Great! I will arrive soon...',
              time: '16:01',
              unreadCount: 2,
            ),
            ChatItem(
              avatarUrl: TImages.pic,
              name: 'Natasya Wilodra',
              lastMessage: 'My order hasn\'t arrived yet 😟',
              time: '14:45',
              unreadCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}
