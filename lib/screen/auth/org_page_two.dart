import 'package:consultarer/screen/auth/individual_sign_up_view_model.dart';
import 'package:consultarer/screen/auth/org_view_model.dart';
import 'package:consultarer/util/dimen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/drop_down.dart';
import 'package:consultarer/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OrgSignUpPageTwo extends ViewModelWidget<OrgSignUpViewModel> {
  const OrgSignUpPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController rateController = TextEditingController();
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Consulterar Representative', style: textFieldLabel.copyWith(color: Colors.black),),
            Row(
              children: [
               Expanded(child: ConsultTextField(label: 'First name', controller: firstNameController)),
               SizedBox(width: 20,),
               Expanded(child: ConsultTextField(label: 'Last name', controller: lastNameController)),

              ],
            ),
          ],
        ),
        Text('Rate'),
        ConsultTextField(label: 'Rate', controller: rateController,
          suffixWidget: Text('/10 mins', style: lightTextFieldLabel,),),
        InkWell(
          onTap: (){},
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(Dimens.roundedBorder),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Upload Logo',
                  style: textFieldLabel.copyWith(
                      fontWeight: FontWeight.w700, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person_rounded,
                      color: Colors.black,
                      size: 100,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
