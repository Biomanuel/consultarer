import 'package:consultarer/screen/home_view_model.dart';
import 'package:consultarer/widgets/sessions/sessions_appbar.dart';
import 'package:consultarer/widgets/sessions/sessions_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
class SessionsScreen extends ViewModelWidget<HomeViewModel> {
  const SessionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SessionsAppBar(),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: model.sessionsData.length,
          itemBuilder: (context, index){
            var data = model.sessionsData[index];
            return OpenSessionsCard(
                firstUser: data.firstUser,
                fUserImgUrl: data.fUserImgUrl,
                secondUser: data.secondUser,
                sUserImgUrl: data.sUserImgUrl
            );
          }),
    );
  }
}
