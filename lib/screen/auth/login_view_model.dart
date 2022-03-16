import 'package:stacked/stacked.dart';
class LoginViewModel extends BaseViewModel{
  bool obscureText = false;
  toggleVisibility(){
    obscureText = !obscureText;
    notifyListeners();
  }
}