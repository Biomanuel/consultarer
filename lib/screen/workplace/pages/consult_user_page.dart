import 'package:consultarer/screen/home_view_model.dart';
import 'package:consultarer/widgets/workplace/consult_user_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
class ConsultUserPage extends ViewModelWidget<HomeViewModel> {
  const ConsultUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: model.consultCardData.length,
        itemBuilder:(context, index){
          var data = model.consultCardData[index];
          return ConsultUserCard(
            name: data.name,
            userName: data.userName,
           isFavTapped: data.isFavTapped,
            onPressed: (){}
    );});
  }
}
