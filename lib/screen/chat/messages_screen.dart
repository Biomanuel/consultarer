import 'package:consultarer/screen/chat/conversations_page.dart';
import 'package:consultarer/screen/chat/message_request_page.dart';
import 'package:consultarer/widgets/chat/chat_app_bar.dart';
import 'package:flutter/material.dart';
class MessagesScreen extends StatelessWidget {
  final TabController tabController;
  const MessagesScreen({required this.tabController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(180),
          child: ChatAppBar(tabController: tabController)),
      body: TabBarView(
        controller: tabController,
        children: [
          ConversationsPage(),
          MessageRequestPage(),
        ],
      ),
    );
  }
}
