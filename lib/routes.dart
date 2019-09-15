import 'package:flutter/material.dart';
import 'package:izievent/view/filter.dart';
import 'package:izievent/view/home.dart';
import 'package:izievent/view/intro.dart';
import 'package:izievent/view/login.dart';
import 'package:izievent/view/splash.dart';

final routes = {
  '/': (BuildContext context) => SplashScreenPage(),
  '/intro': (BuildContext context) => IntroPage(),
  '/login': (BuildContext context) => LoginPage(),
  '/home': (BuildContext context) => HomePage(),
  '/filter': (BuildContext context) => FilterPage()
};