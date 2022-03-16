import 'package:animations/animations.dart';
import 'package:consultarer/screen/auth/sign_up_page_three.dart';
import 'package:consultarer/screen/auth/sign_up_page_two.dart';
import 'package:consultarer/screen/auth/sign_up_view_model.dart';
import 'package:consultarer/screen/auth/signup_screen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:consultarer/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpTwoScreen extends StatelessWidget {
  const SignUpTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ViewModelBuilder<SignUpViewModel>.reactive(
            viewModelBuilder: () => SignUpViewModel(),
            disposeViewModel: false,
            builder: (context, model, _) {
              return WillPopScope(
                onWillPop: () async {
                  return model.previousPage();
                },
                child: PageTransitionSwitcher(
                  reverse: model.reverse,
                  transitionBuilder: (Widget child,
                      Animation<double> primaryAnimation,
                      Animation<double> secondaryAnimation) {
                    return SharedAxisTransition(
                        animation: primaryAnimation,
                        secondaryAnimation: secondaryAnimation,
                        transitionType: SharedAxisTransitionType.horizontal,
                        child: child);
                  },
                  child: getCurrentPage(model.currentIndex),
                ),
              );
              // return SignUpPageOne();
            }),
      ),
    );
  }

  Widget getCurrentPage(int index) {
    switch (index) {
      case 0:
        return SignUpPageOne();
      case 1:
        return SignUpPageTwo();
      case 2:
        return SignUpPageThree();
      default:
        return SignUpPageOne();
    }
  }
}

class SignUpPageOne extends ViewModelWidget<SignUpViewModel> {
  const SignUpPageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    final TextEditingController fNameController = TextEditingController();
    final TextEditingController lNameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController userNameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AuthAppBar(
              action: Icon(Icons.close),
              onTapAction: () {},
            ),
            Column(
              children: [
                ConsultTextField(
                    controller: fNameController, label: 'First Name'),
                ConsultTextField(
                    controller: lNameController, label: 'Last Name'),
                ConsultTextField(
                  controller: phoneController,
                  label: 'Phone Number',
                ),
                ConsultTextField(
                    controller: userNameController, label: 'Username'),
                ConsultTextField(
                  controller: passwordController,
                  label: 'Password',
                  obscureText: model.isVisible,
                  suffixIcon:
                      model.isVisible ? Icons.visibility_off : Icons.visibility,
                  onPressed: () {},
                ),
              ],
            ),
            ConsultButton(
              title: 'Create',
              buttonColor: Colors.red,
              onPressed: () {
                model.switchToPage2();
              },
              titleStyle: textFieldLabel.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
