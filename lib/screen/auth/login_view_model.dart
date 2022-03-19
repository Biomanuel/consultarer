import 'package:consultarer/app/app_setup.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app_setup.router.dart';
class LoginViewModel extends BaseViewModel{
  final navigation = locator<NavigationService>();
  final form = GlobalKey<FormState>();
  bool obscureText = false;
  toggleVisibility(){
    obscureText = !obscureText;
    notifyListeners();
  }
  validateEmail(value){
    RegExp regExp =
    RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$");
    if(value.isEmpty){
      return 'Please enter your Email';
    }
    // else if(!regExp.hasMatch(value)){
    //   return 'Enter a valid Email';
    // }
    else{
      return null;
    }
  }
  validatePassword(value){
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if(value.isEmpty){
      return 'Please enter your password';
    }
    // else if(!regex.hasMatch(value)){
    //   return 'please enter a valid password';
    // }
    else{
      return null;
    }
  }
  Login(){
    if(form.currentState!.validate()){
    form.currentState!.save();
    navigation.replaceWith(Routes.signUpDetailsScreen);
    }
  }
}