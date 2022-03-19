// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../screen/auth/join_ass_screen.dart';
import '../screen/auth/login_screen.dart';
import '../screen/auth/sign_up_details.dart';
import '../screen/auth/sign_up_page_one.dart';
import '../screen/auth/signup_screen.dart';
import '../screen/splash_screen.dart';
import '../screen/workplace_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String loginScreen = '/login-screen';
  static const String signUpScreen = '/sign-up-screen';
  static const String workPlaceScreen = '/work-place-screen';
  static const String signUpPageOne = '/sign-up-page-one';
  static const String joinAsScreen = '/join-as-screen';
  static const String signUpDetailsScreen = '/sign-up-details-screen';
  static const all = <String>{
    splashScreen,
    loginScreen,
    signUpScreen,
    workPlaceScreen,
    signUpPageOne,
    joinAsScreen,
    signUpDetailsScreen,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.signUpScreen, page: SignUpScreen),
    RouteDef(Routes.workPlaceScreen, page: WorkPlaceScreen),
    RouteDef(Routes.signUpPageOne, page: SignUpPageOne),
    RouteDef(Routes.joinAsScreen, page: JoinAsScreen),
    RouteDef(Routes.signUpDetailsScreen, page: SignUpDetailsScreen),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashScreen(),
        settings: data,
      );
    },
    LoginScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginScreen(),
        settings: data,
      );
    },
    SignUpScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignUpScreen(),
        settings: data,
      );
    },
    WorkPlaceScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const WorkPlaceScreen(),
        settings: data,
      );
    },
    SignUpPageOne: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignUpPageOne(),
        settings: data,
      );
    },
    JoinAsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const JoinAsScreen(),
        settings: data,
      );
    },
    SignUpDetailsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignUpDetailsScreen(),
        settings: data,
      );
    },
  };
}
