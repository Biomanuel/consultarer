import 'package:consultarer/util/assets.dart';
import 'package:consultarer/util/color.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:consultarer/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:video_player/video_player.dart';
import '../../widgets/video_player.dart';
import 'login_view_model.dart';
class LoginScreen extends StatefulWidget {

  const LoginScreen({
    Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var videoController;
  @override
  void initState() {
    super.initState();
    videoController = VideoPlayerController.asset(Assets.loginVideo)
    ..initialize().then((_) {
      videoController.play();
      videoController.setLooping(true);
      setState(() {});
    });
    }

  void dispose() {
    super.dispose();
    videoController.pause();
    videoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            VideoBackground(videoController: videoController),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,),
              child: SingleChildScrollView(
                child: ViewModelBuilder<LoginViewModel>.reactive(
                  viewModelBuilder: ()=> LoginViewModel(),
                  builder: (context, model, _) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:20.0),
                            child: SizedBox(
                                width: 250,
                                child: Image.asset(Assets.logo)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('Let\'s take it all', style: letsTextStyle,),
                            Text('Virtual', style: letsTextStyle.copyWith(fontSize: 39, fontWeight: FontWeight.w700),),
                          ],
                        ),
                        Form(
                          key: model.form,
                          child: Padding(
                            padding: const EdgeInsets.only(top:30.0),
                            child: Column(
                            children: [
                              ConsultTextField(
                                validator: (value)=>model.validateEmail(value),
                                isLogin: true,
                                controller:emailController,
                                  label: 'Email or username',
                                keyboardType: TextInputType.emailAddress,
                              ),
                              ConsultTextField(
                                validator: (value)=> model.validatePassword(value),
                                isLogin: true,
                                label: 'Password',
                                  keyboardType: TextInputType.visiblePassword,
                                  controller: passwordController,
                                onPressed: ()=>model.toggleVisibility(),
                                obscureText: model.obscureText,
                                suffixIcon: model.obscureText?Icons.visibility_off:Icons.visibility,
                              ),
                            ],
                            ),
                          ),
                        ),
                        ConsultButton(
                          title: 'Sign In',
                          onPressed: () => model.Login(),
                          buttonColor: ConsultColor.redButtonColor,
                          titleStyle: buttonStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('forgot password?', style: textFieldLabel.copyWith(color: Colors.white),),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text('forgot username', style: textFieldLabel.copyWith(color: Colors.white),
                              ),
                            )],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text('or', style: textFieldLabel.copyWith(color: Colors.white),),
                              ),
                              Expanded(child: Divider(
                                color: Colors.white,
                              )),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ConsultButton(
                                title: 'Google',
                            isRow: true,
                              buttonIcon: FontAwesomeIcons.google,
                              titleStyle: buttonStyle,
                              onPressed: (){},
                              buttonColor: ConsultColor.lightBlueButtonColor,
                              iconColor: Colors.blue,
                            ),
                            ConsultButton(
                              title: 'Facebook',
                              isRow: true,
                              buttonIcon: Icons.facebook,
                              titleStyle: buttonStyle,
                              onPressed: (){},
                              buttonColor: ConsultColor.darkBlueButtonColor,
                              iconColor: Colors.blue,
                            ),
                          ],
                        )
                      ],
                    );
                  }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

