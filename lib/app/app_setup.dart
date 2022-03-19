import 'package:consultarer/screen/auth/join_ass_screen.dart';
import 'package:consultarer/screen/auth/sign_up_details.dart';
import 'package:consultarer/screen/auth/sign_up_page_one.dart';
import 'package:consultarer/screen/auth/signup_screen.dart';
import 'package:consultarer/screen/splash_screen.dart';
import 'package:consultarer/screen/workplace_screen.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked_annotations.dart';

import '../screen/auth/login_screen.dart';


@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: LoginScreen),
    MaterialRoute(page: SignUpScreen),
    MaterialRoute(page: WorkPlaceScreen),
    MaterialRoute(page: SignUpPageOne),
    MaterialRoute(page: JoinAsScreen),
    MaterialRoute(page: SignUpDetailsScreen),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
  ],
)
class $AppSetup {}
