import 'package:consultarer/screen/auth/sign_up_page_one.dart';
import 'package:consultarer/screen/auth/signup_screen.dart';
import 'package:consultarer/util/assets.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:consultarer/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import 'login_view_model.dart';
class LoginScreen extends StatelessWidget {

  const LoginScreen({
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,),
          child: SingleChildScrollView(
            child: ViewModelBuilder<LoginViewModel>.reactive(
              viewModelBuilder: ()=> LoginViewModel(),
              builder: (context, model, _) {
                return Column(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:20.0),
                            child: SizedBox(
                                width: 150,
                                child: Image.asset(Assets.logo)),
                          ),
                        ),
                        Column(
                          children: [
                            Text('\"LET\'S TAKE IT ALL', style: letsTextStyle,),
                            Text('VIRTUAL\"', style: letsTextStyle.copyWith(fontSize: 23, fontWeight: FontWeight.w700),),
                          ],
                        ),
                      ],
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Column(
                        children: [
                          Form(
                            child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                                child: ConsultTextField(
                                  isLogin: true,
                                  controller: emailController,
                                    label: 'Email or username',
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                                child: ConsultTextField(
                                  isLogin: true,
                                  label: 'Password',
                                    keyboardType: TextInputType.visiblePassword,
                                    controller: passwordController,
                                  onPressed: ()=>model.toggleVisibility(),
                                  obscureText: model.obscureText,
                                  suffixIcon: model.obscureText?Icons.visibility_off:Icons.visibility,
                                ),
                              ),
                            ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ConsultButton(
                        title: 'Sign In',
                        onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpTwoScreen())),
                        buttonColor: Colors.red,
                        titleStyle: buttonStyle,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('forgot password?', style: textFieldLabel.copyWith(color: Color(0xff74B3FC)),),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text('forgot username', style: textFieldLabel.copyWith(color: Color(0xff74B3FC)),
                          ),
                        )],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text('or continue with', style: titleStyle,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ConsultButton(
                                    title: 'Google',
                                isRow: true,
                                  buttonIcon: FontAwesomeIcons.google,
                                  titleStyle: buttonStyle.copyWith(color: Colors.grey),
                                  onPressed: (){},
                                  buttonColor: Colors.white,
                                  iconColor: Colors.blue,
                                ),
                              ),
                              Expanded(
                                child: ConsultButton(
                                    title: 'Facebook',
                                isRow: true,
                                  buttonIcon: Icons.facebook,
                                  titleStyle: buttonStyle.copyWith(color: Colors.grey),
                                  onPressed: (){},
                                  buttonColor: Colors.white,
                                  iconColor: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 200,
                            child: ConsultButton(
                              iconColor: Colors.blue,
                              title: 'LinkedIn',
                              isRow: true,
                              buttonIcon: FontAwesomeIcons.linkedin,
                              titleStyle: buttonStyle.copyWith(color: Colors.grey),
                              onPressed: (){},
                              buttonColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}
