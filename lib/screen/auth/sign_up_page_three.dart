import 'package:consultarer/screen/auth/sign_up_view_model.dart';
import 'package:consultarer/screen/auth/signup_screen.dart';
import 'package:consultarer/util/color.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:consultarer/widgets/drop_down.dart';
import 'package:consultarer/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpPageThree extends ViewModelWidget<SignUpViewModel> {
  const SignUpPageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    final TextEditingController universityController = TextEditingController();
    final TextEditingController areaOfStudyController = TextEditingController();
    final TextEditingController startController = TextEditingController();
    final TextEditingController endController = TextEditingController();
    final TextEditingController previousController = TextEditingController();
    return ListView(
      shrinkWrap: true,
      children: [
        ConsultDropDown(
            dropDownList: model.educationLevel,
            dropDownHint: model.education,
            groupValue:  model.education,
            onChanged: (value)=> model.selectEducation(value)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('University/School', style: textFieldLabel.copyWith(color: Colors.black),),
            SizedBox(
              height: 50,
              width: 80,
              child: ConsultButton(
                title: 'Add',
                titleStyle: buttonStyle,
                buttonColor: ConsultColor.redButtonColor,
                onPressed: (){},
              ),
            ),
            ]),
            ConsultTextField(label: 'University/School', controller: universityController),
            ConsultTextField(label: 'Area Of Study', controller: areaOfStudyController),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text('Start Year', style: textFieldLabel.copyWith(color: Colors.black)),
                    SizedBox(
                      height: 50,
                      width: 80,
                      child: ConsultDropDown(
                        dropDownList: model.startYear,
                        dropDownHint: model.startYearValue,
                        groupValue: model.startYearValue,
                        onChanged: (value)=>model.selectYear(value)),
                    )
                  ],
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Text('End Year', style: textFieldLabel.copyWith(color: Colors.black)),
                      SizedBox(
                        height: 50,
                        width: 80,
                        child: ConsultDropDown(
                          dropDownList: model.startYear,
                          dropDownHint: model.startYear[0],
                          groupValue: model.startYearValue,
                          onChanged: (value)=>model.selectYear(value),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Career', style: textFieldLabel.copyWith(color: Colors.black, fontSize: 14)),
                Row(
                  children: [
                    Text('I am a student', style: textFieldLabel,),
                    Switch(
                        activeTrackColor: Colors.red,
                        value: model.isSwitch, onChanged: (value)=>model.toggleSwitch(value))
                  ],
                ),
              ]),
        ),
        ConsultTextField(label: 'Current Employment',controller: previousController,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Previous Employment', style: textFieldLabel.copyWith(color: Colors.black)),
              SizedBox(
                height: 50,
                width: 80,
                child: ConsultButton(
                  title: 'Add',
                  titleStyle: buttonStyle,
                  buttonColor: ConsultColor.redButtonColor,
                  onPressed: (){},
                ),
              ),
            ]),
        ConsultTextField(label: 'Previous Employment',controller: previousController,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Age Group', style: textFieldLabel.copyWith(color: Colors.black)),
            SizedBox(
              height: 50,
              width: 80,
              child: ConsultDropDown(
                dropDownList: model.startYear,
                dropDownHint: model.startYear[0],
                groupValue: model.startYear[0],
              ),
            )
          ],
        ),

        //   ],
        // ),
      ],
    );
  }}
