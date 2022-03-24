import 'package:flutter/material.dart';
class ConsultCardModel{
  final String name;
  final String userName;
  bool isFavTapped;
  ConsultCardModel({
    required this.userName,
    required this.name,
     this.isFavTapped = false,
});
  void onTapFav(){
    isFavTapped = !isFavTapped;
  }
}