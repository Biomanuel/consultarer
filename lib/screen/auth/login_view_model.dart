import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
class LoginViewModel extends BaseViewModel{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscureText = false;
  toggleVisibility(){
    obscureText = !obscureText;
    notifyListeners();
  }
}