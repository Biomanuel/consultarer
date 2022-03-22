import 'package:consultarer/screen/home_view_model.dart';
import 'package:consultarer/widgets/hub/hub_app_bar.dart';
import 'package:consultarer/widgets/hub/hub_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
class HubScreen extends ViewModelWidget<HomeViewModel> {
  const HubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HubAppBar(),
      ),
      body: SizedBox(
        child: ListView.builder(
        itemCount:  model.hubData.length,
          shrinkWrap: true,
          itemBuilder: (context, index){
          var data = model.hubData[index];
          return HubCard(
              name: data.name,
              userName: data.userName,
              time: data.time,
              imgUrl: data.imgUrl);
          },
        ),
      ),
    );
  }
}
