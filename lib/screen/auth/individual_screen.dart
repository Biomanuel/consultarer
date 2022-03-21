import 'package:animations/animations.dart';
import 'package:consultarer/screen/auth/individual_page_three.dart';
import 'package:consultarer/screen/auth/individual_page_two.dart';
import 'package:consultarer/screen/auth/individual_page_one.dart';
import 'package:consultarer/screen/auth/individual_sign_up_view_model.dart';
import 'package:consultarer/screen/auth/signup_screen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:consultarer/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class IndividualSignUpScreen extends StatelessWidget {
  const IndividualSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ViewModelBuilder<IndividualSignUpViewModel>.reactive(
            viewModelBuilder: () => IndividualSignUpViewModel(),
            disposeViewModel: false,
            builder: (context, model, _) {
              return WillPopScope(
                onWillPop: () async {
                  return model.previousPage(context);
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: AuthAppBar(
                          action: Row(
                            children: [
                              Text(
                                'Skip',
                                style: textFieldLabel.copyWith(
                                    color: Colors.black,
                                    ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 18,
                              )
                            ],
                          ),
                          onTapAction: () {},
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: getCurrentPage(model.currentIndex),
                        ),
                      ),
                      Container(
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ConsultButton(
                                title: 'Back',
                                onPressed: () {
                                  model.previousPage(context);
                                },
                                buttonColor: Colors.white,
                              ),
                              ConsultButton(
                                title: model.currentIndex==2?'Finish':'Next',
                                onPressed: () {
                                  model.nextPage();
                                },
                                buttonColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
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
        return IndividualSignUpPageOne();
      case 1:
        return IndividualSignUpPageTwo();
      case 2:
        return IndividualSignUpPageThree();
      default:
        return IndividualSignUpPageOne();
    }
  }
}
