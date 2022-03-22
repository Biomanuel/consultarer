import 'package:consultarer/util/dimen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:consultarer/widgets/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'individual_sign_up_view_model.dart';

class IndividualSignUpPageOne extends ViewModelWidget<IndividualSignUpViewModel> {
  const IndividualSignUpPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.roundedBorder),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      titleStyle: buttonStyle.copyWith(color: Colors.black),
                      buttonColor: Colors.transparent,
                      borderSide: BorderSide(color: Colors.grey),
                      onPressed: (){},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.roundedBorder),
              border: Border.all(color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
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
                ],
              ),
            ),
          ),
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
              titleStyle: buttonStyle.copyWith(color: Colors.black),
              buttonColor: Colors.transparent,
              borderSide: BorderSide(color: Colors.grey),
              onPressed: (){},
            ),
          ),
        ),
      ],
    );
  }
}
