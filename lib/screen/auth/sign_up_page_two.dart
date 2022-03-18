import 'package:consultarer/screen/auth/sign_up_view_model.dart';
import 'package:consultarer/screen/auth/signup_screen.dart';
import 'package:consultarer/util/color.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:consultarer/widgets/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpPageTwo extends ViewModelWidget<SignUpViewModel> {
  const SignUpPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return ListView(
      shrinkWrap: true,
      children: [
        ConsultDropDown(
          dropDownList: model.categories,
          groupValue: model.categories[0],
          dropDownHint: model.categories[0],
        ),
        Text('Subcategory'),
        ConsultDropDown(
          dropDownList: model.categories,
          groupValue: model.categories[0],
          dropDownHint: model.categories[0],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 50,
            width: 80,
            child: ConsultButton(
            title: 'Add',
            titleStyle: buttonStyle,
            buttonColor: ConsultColor.redButtonColor,
              onPressed: (){},
            ),
          ),
        ),
        ConsultDropDown(
          dropDownList: model.country,
          groupValue: model.country[0],
          dropDownHint: model.country[0],
        ),
        ConsultDropDown(
          dropDownList: model.state,
          groupValue: model.state[0],
          dropDownHint: model.state[0],
        ),
        Text('Preferred Language'),
        ConsultDropDown(
          dropDownList: model.categories,
          groupValue: model.categories[0],
          dropDownHint: model.categories[0],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 50,
            width: 80,
            child: ConsultButton(
              title: 'Add',
              titleStyle: buttonStyle,
              buttonColor: ConsultColor.redButtonColor,
              onPressed: (){},
            ),
          ),
        ),
      ],
    );
  }
}
