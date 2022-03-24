import 'package:consultarer/screen/home_view_model.dart';
import 'package:consultarer/widgets/chat/message_tile.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
class MessageRequestPage extends ViewModelWidget<HomeViewModel> {
  const MessageRequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: model.chatModel.length,
          itemBuilder: (context, index){
            var chatData = model.chatModel[index];
            return MessageTile(
              name: chatData.name,
              brief: chatData.brief,
            );
          }
      ),
    );
  }
}
