import 'package:consultarer/screen/auth/sign_up_view_model.dart';
import 'package:consultarer/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpPageThree extends ViewModelWidget<SignUpViewModel> {
  const SignUpPageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    final TextEditingController areaOfStudyController = TextEditingController();
    final TextEditingController studyYearController = TextEditingController();
    return ListView(
      shrinkWrap: true,
      children: [
        Card(
            elevation: 5,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            child: ExpansionTile(
              title: Text('Education Level'),
              children: List.generate(
                  model.educationLevel.length,
                      (index) =>
                      RadioListTile(
                          title:
                          Text(model.educationLevel[index]),
                          value: model.educationLevel[index],
                          groupValue: model.education,
                          onChanged: (value) =>
                              model.setEducationLevel(value))),
            )),
        Card(
            elevation: 5,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            child: ExpansionTile(
                title: Text('Education'),
                children: [
                  SizedBox(
                      width: 300,
                      child: ConsultTextField(
                          keyboardType: TextInputType.text,
                          label: 'Area of Study',
                          controller: areaOfStudyController)),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Text('Year'),
                      SizedBox(
                          height: 60,
                          width: 70,
                          child: ConsultTextField(
                              label: '-',
                              controller:
                              studyYearController))
                    ],
                  )
                ])),
      ],
    );
  }}
