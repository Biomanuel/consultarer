import 'package:consultarer/screen/auth/sign_up_view_model.dart';
import 'package:consultarer/screen/auth/signup_screen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:consultarer/widgets/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpPageTwo extends ViewModelWidget<SignUpViewModel> {
  const SignUpPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return Column(
      children: [
        AuthAppBar(
          action: Row(
            children: [
              Text('Skip'),
              Icon(Icons.arrow_forward),
            ],
          ),
          onTapAction: () {},
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              ConsultDropDown(
                dropDownList: model.categories,
                groupValue: model.categories[0],
                dropDownHint: model.categories[0],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Subcategory'),
                            ConsultButton(
                              title: 'Add',
                              buttonColor: Colors.red,
                              onPressed: () {},
                              titleStyle:
                                  textFieldLabel.copyWith(color: Colors.white),
                            )
                          ],
                        ),
                        ConsultDropDown(
                          dropDownList: model.categories,
                          groupValue: model.categories[0],
                          dropDownHint: model.categories[0],
                        ),
                        ConsultDropDown(
                          dropDownList: model.categories,
                          groupValue: model.categories[0],
                          dropDownHint: model.categories[0],
                        ),
                        ConsultDropDown(
                          dropDownList: model.categories,
                          groupValue: model.categories[0],
                          dropDownHint: model.categories[0],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ConsultDropDown(
                dropDownList: model.categories,
                groupValue: model.categories[0],
                dropDownHint: model.categories[0],
              ),
              ConsultDropDown(
                dropDownList: model.categories,
                groupValue: model.categories[0],
                dropDownHint: model.categories[0],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Preferred Language'),
                            ConsultButton(
                              title: 'Add',
                              buttonColor: Colors.red,
                              onPressed: () {},
                              titleStyle:
                                  textFieldLabel.copyWith(color: Colors.white),
                            )
                          ],
                        ),
                        ConsultDropDown(
                          dropDownList: model.categories,
                          groupValue: model.categories[0],
                          dropDownHint: model.categories[0],
                        ),
                        ConsultDropDown(
                          dropDownList: model.categories,
                          groupValue: model.categories[0],
                          dropDownHint: model.categories[0],
                        ),
                        ConsultDropDown(
                          dropDownList: model.categories,
                          groupValue: model.categories[0],
                          dropDownHint: model.categories[0],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ConsultButton(
                title: 'Back',
                onPressed: () {
                  model.previousPage();
                },
                buttonColor: Colors.white,
              ),
              ConsultButton(
                title: 'Next',
                onPressed: () {
                  model.switchToPage3();
                },
                buttonColor: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }
}
