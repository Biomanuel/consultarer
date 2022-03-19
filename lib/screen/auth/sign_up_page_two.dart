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
          groupValue: model.categoryValue,
          dropDownHint: model.categoryValue,
          onChanged: (value)=> model.selectCategory(value),
        ),
        Text('Subcategory', style: textFieldLabel.copyWith(color: Colors.black)),
        ConsultDropDown(
          dropDownList: model.subCategories,
          groupValue: model.subCategoryValue,
          dropDownHint: model.subCategoryValue,
          onChanged: (value)=>model.selectSubCategory(value),
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
          groupValue: model.countryValue,
          dropDownHint: model.countryValue,
          onChanged: (value)=> model.selectCountry(value),
        ),
        ConsultDropDown(
          dropDownList: model.state,
          groupValue: model.stateValue,
          dropDownHint: model.stateValue,
        ),
        Text('Preferred Language', style: textFieldLabel.copyWith(color: Colors.black),),
        ConsultDropDown(
          dropDownList: model.language,
          groupValue: model.languageValue,
          dropDownHint: model.languageValue,
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
