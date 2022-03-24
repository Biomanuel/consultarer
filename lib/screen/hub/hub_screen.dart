import 'package:consultarer/screen/home_view_model.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/hub/hub_app_bar.dart';
import 'package:consultarer/widgets/hub/hub_card.dart';
import 'package:consultarer/widgets/hub/suggested_users_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
class HubScreen extends ViewModelWidget<HomeViewModel> {
  const HubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    ScrollController parentController = ScrollController();
    ScrollController childController = ScrollController();
    childController.addListener(() {
      if(childController.offset>=childController.position.maxScrollExtent*0.8){
        parentController.animateTo(childController.offset, duration: Duration(milliseconds:100),
            curve: Curves.easeInOut);
      }
      if (childController.offset == 0) {
        parentController.animateTo(childController.offset,
            duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
      }
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HubAppBar(),
      ),
      body: SingleChildScrollView(
        controller: parentController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              child: ListView.builder(
                controller: childController,
              itemCount:  model.hubData.length,
                shrinkWrap: true,
                itemBuilder: (context, index){
                var data = model.hubData[index];
                return HubCard(
                    name: data.name,
                    userName: data.userName,
                    time: data.time,
                    imgUrl: data.imgUrl,
                    hubImageUrl: data.hubImageUrl,
                );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:16.0,left: 10, bottom: 12),
              child: Text('Suggested Users', style: textFieldLabel.copyWith(fontSize: 16, color: Colors.black),),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height*0.38,
                child: ListView.builder(
                itemCount: model.suggestdUsers.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  var suggestedData = model.suggestdUsers[index];
                  return SuggestedUsersCard(
                      name: suggestedData.name,
                      username: suggestedData.username,
                  );
                }))
          ],
        ),
      ),
    );
  }
}
