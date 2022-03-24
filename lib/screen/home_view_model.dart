import 'package:consultarer/core/enums/dialog_type.dart';
import 'package:consultarer/core/models/chat_tile_model.dart';
import 'package:consultarer/core/models/consult_card_model.dart';
import 'package:consultarer/core/models/hub_card_model.dart';
import 'package:consultarer/core/models/inquiry_card_model.dart';
import 'package:consultarer/core/models/sessions_card_model.dart';
import 'package:consultarer/core/models/suggested_user_card_model.dart';
import 'package:consultarer/screen/workplace/pages/consult_user_page.dart';
import 'package:consultarer/screen/workplace/pages/inquiry_page.dart';
import 'package:consultarer/ui_enums/bottomsheet_type.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../app/app_setup.locator.dart';
import '../core/enums/bottomsheet_type.dart';
import '../util/assets.dart';
class HomeViewModel extends IndexTrackingViewModel{
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  int navIndex = 0;
  int tabIndex = 0;
  List<Widget> bottomNavPages = [
    ConsultUserPage(),
    InquiryPage()
  ];
  TextEditingController postController = TextEditingController();

  List<String> profileSheetData = [
    'My profile',
    'Earnings',
    'My schedule',
    'Payout method',
    'Inquiry/Card request',
    'Contacts'
  ];
  makeNewPost(){
    _dialogService.showCustomDialog(
      variant: DialogType.PostDialogue,
      takesInput: true,
      barrierDismissible: true,
    );
  }
  onTapProfile(){
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetTypee.ProfileBottomSheet,
      barrierDismissible: true,
      enableDrag: true,
    );
}
  List<String> popUpList = [
    'Hide Post',
    'Block User',
    'Report Post',
    'Report User',
  ];
  List<SuggestedUserModel> suggestdUsers = [
    SuggestedUserModel(name: 'Tosin Aluko', username: 'username',),
    SuggestedUserModel(name: 'Tosin Aluko', username: 'username',),
    SuggestedUserModel(name: 'Tosin Daniel', username: 'username',),
    SuggestedUserModel(name: 'Tosin Stephen', username: 'username',),
    SuggestedUserModel(name: 'Tosin Lade', username: 'username',),
    SuggestedUserModel(name: 'Tosin Jomo', username: 'username',),
    SuggestedUserModel(name: 'Tosin Tade', username: 'username',),
  ];
List<ChatTileModel> chatModel =[
  ChatTileModel(name: 'Dolapo', brief: 'Lorem Ipsum dolor sit am...'),
  ChatTileModel(name: 'Dolapo', brief: 'Lorem Ipsum dolor sit am...'),
  ChatTileModel(name: 'Dolapo', brief: 'Lorem Ipsum dolor sit am...'),
  ChatTileModel(name: 'Dolapo', brief: 'Lorem Ipsum dolor sit am...'),
  ChatTileModel(name: 'Dolapo', brief: 'Lorem Ipsum dolor sit am...'),
  ChatTileModel(name: 'Dolapo', brief: 'Lorem Ipsum dolor sit am...'),
  ChatTileModel(name: 'Dolapo', brief: 'Lorem Ipsum dolor sit am...'),
];
List<ConsultCardModel> consultCardData =[
  ConsultCardModel(name: 'Mark Anthony', userName: 'Username', ),
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
  InquiryCardModel(userName: '@username', userImageUrl: Assets.actionImage, inquiryImageUrl: Assets.inquiryImage),
  InquiryCardModel(userName: '@username', userImageUrl: Assets.actionImage, inquiryImageUrl: Assets.inquiryImage2),
  InquiryCardModel(userName: '@username', userImageUrl: Assets.actionImage, inquiryImageUrl: Assets.inquiryImage3),
  InquiryCardModel(userName: '@username', userImageUrl: Assets.actionImage, inquiryImageUrl: Assets.inquiryImage4),
  InquiryCardModel(userName: '@username', userImageUrl: Assets.actionImage, inquiryImageUrl: Assets.inquiryImage),
  InquiryCardModel(userName: '@username', userImageUrl: Assets.actionImage, inquiryImageUrl: Assets.inquiryImage2),
  InquiryCardModel(userName: '@username', userImageUrl: Assets.actionImage, inquiryImageUrl: Assets.inquiryImage3),
  InquiryCardModel(userName: '@username', userImageUrl: Assets.actionImage, inquiryImageUrl: Assets.inquiryImage4),
  InquiryCardModel(userName: '@username', userImageUrl: Assets.actionImage, inquiryImageUrl: Assets.inquiryImage),
];
List<HubCardModel> hubData = [
  HubCardModel(name: 'Olise Michael', userName: '@michael', time: '10:01', imgUrl: Assets.actionImage, hubImageUrl: Assets.hubImage),
  HubCardModel(name: 'Olise Michael', userName: '@michael', time: '10:01', imgUrl: Assets.actionImage2, hubImageUrl: Assets.hubImage2),
  HubCardModel(name: 'Olise Michael', userName: '@michael', time: '10:01', imgUrl: Assets.actionImage, hubImageUrl: Assets.hubImage),
  HubCardModel(name: 'Olise Michael', userName: '@michael', time: '10:01', imgUrl: Assets.actionImage2, hubImageUrl: Assets.hubImage2),
  HubCardModel(name: 'Olise Michael', userName: '@michael', time: '10:01', imgUrl: Assets.actionImage, hubImageUrl: Assets.hubImage),
  HubCardModel(name: 'Olise Michael', userName: '@michael', time: '10:01', imgUrl: Assets.actionImage2, hubImageUrl: Assets.hubImage2),
  HubCardModel(name: 'Olise Michael', userName: '@michael', time: '10:01', imgUrl: Assets.actionImage, hubImageUrl: Assets.hubImage),
  HubCardModel(name: 'Olise Michael', userName: '@michael', time: '10:01', imgUrl: Assets.actionImage2, hubImageUrl: Assets.hubImage2),
  HubCardModel(name: 'Olise Michael', userName: '@michael', time: '10:01', imgUrl: Assets.actionImage, hubImageUrl: Assets.hubImage),
];
List<SessionsCardModel> sessionsData = [
  SessionsCardModel(firstUser: '@beam', fUserImgUrl: Assets.actionImage, secondUser: '@mike', sUserImgUrl: Assets.actionImage),
  SessionsCardModel(firstUser: '@beam', fUserImgUrl: Assets.actionImage, secondUser: '@mike', sUserImgUrl: Assets.actionImage),
  SessionsCardModel(firstUser: '@beam', fUserImgUrl: Assets.actionImage, secondUser: '@mike', sUserImgUrl: Assets.actionImage),
  SessionsCardModel(firstUser: '@beam', fUserImgUrl: Assets.actionImage, secondUser: '@mike', sUserImgUrl: Assets.actionImage),
  SessionsCardModel(firstUser: '@beam', fUserImgUrl: Assets.actionImage, secondUser: '@mike', sUserImgUrl: Assets.actionImage),
  SessionsCardModel(firstUser: '@beam', fUserImgUrl: Assets.actionImage, secondUser: '@mike', sUserImgUrl: Assets.actionImage),
  SessionsCardModel(firstUser: '@beam', fUserImgUrl: Assets.actionImage, secondUser: '@mike', sUserImgUrl: Assets.actionImage),
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