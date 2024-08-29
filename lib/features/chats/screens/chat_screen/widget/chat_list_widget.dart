import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/features/chats/model/chat_item_model.dart';
import 'package:foodu/features/chats/screens/chat_detail_screen/chat_detail_screen.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChatListWidget extends StatelessWidget {
  final List<ChatItem> chatItems;

  const ChatListWidget({Key? key, required this.chatItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatItems.length,
      itemBuilder: (context, index) {
        final chatItem = chatItems[index];
        return InkWell(
          onTap: () => Get.to(ChatDetailScreen()),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(chatItem.avatarUrl),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chatItem.name,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        chatItem.lastMessage,
                        style: Theme.of(context).textTheme.labelSmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (chatItem.unreadCount > 0)
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        padding: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          color: HColors.primary,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          chatItem.unreadCount.toString(),
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 12)
                        ),
                      ),
                    Text(
                      chatItem.time,
                      style: Theme.of(context).textTheme.labelSmall
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}