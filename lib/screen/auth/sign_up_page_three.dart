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
            dropDownHint: model.educationLevel[0],
            groupValue:  model.educationLevel[0], ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('University/School'),
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
                Expanded(
                  child: Column(
                    children: [
                      Text('Start Year'),
                      SizedBox(
                        height: 60,
                        width: 80,
                        child: ConsultDropDown(
                          dropDownList: model.startYear,
                          dropDownHint: model.startYear[0],
                          groupValue: model.startYear[0],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Column(
                      children: [
                        Text('End Year'),
                        SizedBox(
                          height: 60,
                          width: 80,
                          child: ConsultDropDown(
                            dropDownList: model.startYear,
                            dropDownHint: model.startYear[0],
                            groupValue: model.startYear[0],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Previous Employment'),
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
          children: [
            Text('Age Group'),
            SizedBox(
              height: 60,
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
