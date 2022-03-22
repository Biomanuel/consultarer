import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:consultarer/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/auth/auth_appbar.dart';
import 'individual/individual_sign_up_view_model.dart';

class SignUpDetailsScreen extends StatelessWidget {
  const SignUpDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController fNameController = TextEditingController();
    final TextEditingController lNameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController userNameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ViewModelBuilder<IndividualSignUpViewModel>.reactive(
              viewModelBuilder: () => IndividualSignUpViewModel(),
              builder: (context, model, _) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      AuthAppBar(
                        action: Row(
                          children: [
                            Text(
                              'Skip',
                              style:
                                  textFieldLabel.copyWith(color: Colors.black),
                            ),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                        onTapAction: () {},
                      ),
                      Form(
                        key: model.form,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            ConsultTextField(
                              validator: (value)=>model.validateDetailsField(value),
                                controller: fNameController, label: 'First Name'),
                            ConsultTextField(
                                validator: (value)=>model.validateDetailsField(value),
                                controller: lNameController, label: 'Last Name'),
                            ConsultTextField(
                              validator: (value)=>model.validateDetailsField(value),
                              controller: phoneController,
                              label: 'Phone Number',
                              keyboardType: TextInputType.phone,
                              suffixWidget: Text('(Optional)', style: lightTextFieldLabel,),
                            ),
                            ConsultTextField(
                                validator: (value)=>model.validateDetailsField(value),
                                controller: userNameController,
                                label: 'Username'),
                            ConsultTextField(
                              validator: (value)=>model.validateDetailsField(value),
                              controller: passwordController,
                              label: 'Password',
                              obscureText: model.isVisible,
                              suffixIcon: model.isVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              onPressed: () => model.toggleVisibility(),
                            ),
                          ],
                        ),
                      ),
                      ConsultButton(
                        title: 'Create',
                        buttonColor: Colors.red,
                        onPressed: ()=>model.createAccount(),
                        titleStyle:
                            textFieldLabel.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
