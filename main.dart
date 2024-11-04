import "package:flutter/material.dart";
import "package:flutter_demo/pages/first_page.dart";
import 'package:flutter_demo/pages/registration_page.dart';
import 'package:flutter_demo/pages/bunkers_page.dart';
import 'package:flutter_demo/pages/zayavki_page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/registrationpage': (context) => RegistrationPage(),
        '/bunkerspage' : (context) => BunkersPage(),
        '/zayavkipage' : (context) => ZayavkiPage(),
      }
      );
  }
}
