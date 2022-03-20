import 'package:consultarer/screen/auth/login_screen.dart';
import 'package:consultarer/util/assets.dart';
import 'package:consultarer/util/color.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var videoController;
  @override
  // void initState() {
  //   super.initState();
  //   videoController = VideoPlayerController.asset(Assets.loginVideo)
  //     ..initialize().then((_) {
  //       videoController.play();
  //       videoController.setLooping(true);
  //       setState(() {});
  //     });
  // }
  //
  // void dispose() {
  //   super.dispose();
  //   videoController.pause();
  //   videoController.dispose();
  // }
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // VideoBackground(videoController: videoController),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      AuthAppBar(
                        action: Text('Sign In', style: titleStyle.copyWith(color: Colors.white),),
                      onTapAction: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen())),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('Let\'s take it all', style: letsTextStyle,),
                            Text('Virtual', style: letsTextStyle.copyWith(fontSize: 39, fontWeight: FontWeight.w700),),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text('Join Consultarer with', style: titleStyle.copyWith(color: Colors.white),),
                      ),
                      ConsultButton(
                        title: 'Email',
                        isRow: true,
                        buttonIcon: Icons.mail,
                        onPressed: (){},
                        buttonColor: ConsultColor.lightBlueButtonColor,
                        iconColor: Colors.black,
                        titleStyle: buttonStyle.copyWith(color: Colors.white),
                      ),
                      ConsultButton(
                        title: 'Google',
                        isRow: true,
                        buttonIcon: FontAwesomeIcons.google,
                        onPressed: (){},
                        iconColor: Colors.blue,
                          buttonColor: ConsultColor.lightBlueButtonColor,
                          titleStyle: buttonStyle.copyWith(color: Colors.white)
                      ),
                      ConsultButton(
                        title: 'Facebook',
                        isRow: true,
                        buttonIcon: Icons.facebook,
                        onPressed: (){},
                        iconColor: Colors.blue,
                          buttonColor: ConsultColor.darkBlueButtonColor,
                          titleStyle: buttonStyle.copyWith(color: Colors.white)
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
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
              width: 200,
              child:Image.asset(Assets.logo),
               ),
        ),
        GestureDetector(
            onTap: onTapAction,
            child: action,
        )],
    );
  }
}
