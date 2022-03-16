import 'package:consultarer/screen/auth/login_screen.dart';
import 'package:consultarer/util/assets.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AuthAppBar(
                action: Text('Sign In', style: titleStyle,),
              onTapAction: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text('Join Consultarer with', style: titleStyle,),
                    ),
                    ConsultButton(title: 'Email', isRow: true, buttonIcon: Icons.mail,onPressed: (){},),
                    ConsultButton(title: 'Google', isRow: true, buttonIcon: FontAwesomeIcons.google,onPressed: (){}, iconColor: Colors.blue,),
                    ConsultButton(title: 'Facebook', isRow: true, buttonIcon: Icons.facebook,onPressed: (){},iconColor: Colors.blue,),
                    ConsultButton(title: 'LinkedIn', isRow: true, buttonIcon: FontAwesomeIcons.linkedin,onPressed: (){},iconColor: Colors.blue,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AuthAppBar extends StatelessWidget {
  final Widget action;
  final Function()? onTapAction;
  const AuthAppBar({
    this.onTapAction,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:15.0),
          child: SizedBox(
              width: 150,
              child: Image.asset(Assets.logo)),
        ),
        GestureDetector(
            onTap: onTapAction,
            child: action,
        )],
    );
  }
}
