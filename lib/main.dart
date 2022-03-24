import 'package:consultarer/app/app_setup.locator.dart';
import 'package:consultarer/screen/auth/login_screen.dart';
import 'package:consultarer/screen/splash_screen.dart';
import 'package:consultarer/setups/setup_bottom_sheet_ui.dart';
import 'package:consultarer/setups/setup_dialog_ui.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app_setup.router.dart';

void main() {
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      navigatorKey: StackedService.navigatorKey,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
