import 'package:consultarer/screen/auth/signup_screen.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:flutter/material.dart';

class JoinAsScreen extends StatelessWidget {
  const JoinAsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: AuthAppBar(
                action: Icon(Icons.close),
                onTapAction: () {},
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text('Join Consultarer as', textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: ConsultButton(
                      title: 'Individual',
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUpScreen())),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text('or', textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: ConsultButton(
                      title: 'Organisation',
                      onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpScreen())),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
