import 'package:consultarer/core/enums/tab_bar_enums.dart';
import 'package:consultarer/core/models/consult_card_model.dart';
import 'package:consultarer/core/models/inquiry_card_model.dart';
import 'package:consultarer/screen/workplace/pages/consult_user_page.dart';
import 'package:consultarer/screen/workplace/pages/inquiry_page.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import '../util/assets.dart';
class HomeViewModel extends IndexTrackingViewModel{
  int navIndex = 0;
  int tabIndex = 0;
  List<Widget> bottomNavPages = [
    ConsultUserPage(),
    InquiryPage()
  ];

List<ConsultCardModel> consultCardData =[
  ConsultCardModel(name: 'Mark Anthony', userName: 'Username'),
  ConsultCardModel(name: 'Mark Anthony', userName: 'Username'),
  ConsultCardModel(name: 'Mark Anthony', userName: 'Username'),
  ConsultCardModel(name: 'Mark Anthony', userName: 'Username'),
  ConsultCardModel(name: 'Mark Anthony', userName: 'Username'),
  ConsultCardModel(name: 'Mark Anthony', userName: 'Username'),
  ConsultCardModel(name: 'Mark Anthony', userName: 'Username'),
  ConsultCardModel(name: 'Mark Anthony', userName: 'Username'),
  ConsultCardModel(name: 'Mark Anthony', userName: 'Username'),
];
List<InquiryCardModel> inquiryCardData = [
  InquiryCardModel(userName: '@username', imageUrl: Assets.actionImage),
  InquiryCardModel(userName: '@username', imageUrl: Assets.actionImage),
  InquiryCardModel(userName: '@username', imageUrl: Assets.actionImage),
  InquiryCardModel(userName: '@username', imageUrl: Assets.actionImage),
  InquiryCardModel(userName: '@username', imageUrl: Assets.actionImage),
  InquiryCardModel(userName: '@username', imageUrl: Assets.actionImage),
  InquiryCardModel(userName: '@username', imageUrl: Assets.actionImage),
  InquiryCardModel(userName: '@username', imageUrl: Assets.actionImage),
  InquiryCardModel(userName: '@username', imageUrl: Assets.actionImage),
];

void OnItemSelected(index){
navIndex = index;
notifyListeners();
}
void tabSelected(index){
tabIndex = index;
notifyListeners();
}


}