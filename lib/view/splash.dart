import 'dart:async';
import 'package:flutter/material.dart';
import 'package:izievent/settings/HexColor.dart';
import 'package:izievent/view/home.dart';
import 'package:izievent/view/intro.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goTo();
  }

  @override
  dispose() {
    super.dispose();
  }

  goTo(){
    print('test');
    Timer(Duration(seconds: 2), (){
      Navigator.of(context).pushNamedAndRemoveUntil('/intro', (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: HexColor("FFF2F2"),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}

