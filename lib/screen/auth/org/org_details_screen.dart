
import 'package:consultarer/screen/auth/org/org_view_model.dart';
import 'package:consultarer/screen/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../util/text_style.dart';
import '../../../widgets/auth/auth_appbar.dart';
import '../../../widgets/button.dart';
import '../../../widgets/text_field.dart';

class OrgDetailsScreen extends StatelessWidget {
  const OrgDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController orgNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController userNameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: ViewModelBuilder<OrgSignUpViewModel>.reactive(
          viewModelBuilder: () => OrgSignUpViewModel(),
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
                          style: textFieldLabel.copyWith(color: Colors.black),
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
                            validator: (value) =>
                                model.validateDetailsField(value),
                            controller: orgNameController,
                            label: 'Organization name'),
                        ConsultTextField(
                            validator: (value) =>
                                model.validateDetailsField(value),
                            controller: emailController,
                            label: 'Email'),
                        ConsultTextField(
                            validator: (value) =>
                                model.validateDetailsField(value),
                            controller: userNameController,
                            label: 'Username'),
                        ConsultTextField(
                          validator: (value) =>
                              model.validateDetailsField(value),
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
                    onPressed: () => model.createAccount(),
                    titleStyle: textFieldLabel.copyWith(color: Colors.white),
                  ),
                ],
              ),
            );
          }),
    )));
  }
}
