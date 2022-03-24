import 'package:consultarer/core/enums/chat_enums.dart';
import 'package:flutter/material.dart';

import '../../core/enums/workplace_enums.dart';
import '../../screen/home_view_model.dart';
import '../../util/assets.dart';
import '../../util/dimen.dart';
import '../../util/text_style.dart';
import 'package:stacked/stacked.dart';

class ChatAppBar extends ViewModelWidget<HomeViewModel> {
  const ChatAppBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context, model) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: [
                  Material(
                    elevation: 2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimens.roundedBorderSocial),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimens.roundedBorderSocial),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.white,
                        suffixIcon: Icon(Icons.search),
                        hintText: 'Find chat',
                        suffixIconColor: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.sort),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: TabBar(
                            controller: tabController,
                            isScrollable: true,
                            onTap: (index)=>model.tabSelected(index),
                            tabs: [
                              Tab(
                                child:Text(getChatTitle(ChatTitles.AllOConversations)),),
                              Tab(
                                // icon: Icon(Icons.sort),
                                child: Text(getChatTitle(ChatTitles.MessageORequest)),
                              ),
                            ],
                            indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelColor: Colors.black,
                          ),
                        ),
                      ),
                      Icon(Icons.sort),
                    ],
                  ),
                ]),
          ),
        ),
      ),
      elevation: 0,
      centerTitle: true,

      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(Assets.favicon),
        ),
      ),
      title: Text('MESSAGES', style: titleStyle),
    );
  }
}