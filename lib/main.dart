import 'package:flutter/material.dart';
import 'package:izievent/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IziEvent',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "BwNistaGeometricDEMO",
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: routes
    );
  }
}
