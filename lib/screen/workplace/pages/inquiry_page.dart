import 'package:consultarer/screen/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/workplace/inquiry_card.dart';
class InquiryPage extends ViewModelWidget<HomeViewModel> {
  const InquiryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: model.inquiryCardData.length,
        itemBuilder:(context, index){
          var data = model.inquiryCardData[index];
          return InquiryCard(
            userName: data.userName,
            imageUrl: data.imageUrl,
          );});
  }
}
