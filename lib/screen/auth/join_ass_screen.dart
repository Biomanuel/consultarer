import 'package:consultarer/app/app_setup.router.dart';
import 'package:consultarer/screen/auth/signup_screen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app_setup.locator.dart';

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
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Text('Join Consultarer as', textAlign: TextAlign.center,style: letsTextStyle.copyWith(color: Colors.black, fontSize: 24),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: ConsultButton(
                      title: 'Individual',
                      titleStyle: textFieldLabel.copyWith(fontSize: 22),
                      onPressed: () => locator<NavigationService>().navigateTo(Routes.signUpDetailsScreen)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text('or', textAlign: TextAlign.center, style: textFieldLabel.copyWith(color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: ConsultButton(
                      title: 'Organisation',
                      titleStyle: textFieldLabel.copyWith(fontSize: 22),
                      onPressed: () => locator<NavigationService>().navigateTo(Routes.orgDetailsScreen),),
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
