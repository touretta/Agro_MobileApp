import "package:flutter/material.dart";
import "package:flutter_demo/pages/first_page.dart";
import 'package:flutter_demo/pages/registration_page.dart';
import 'package:flutter_demo/pages/bunkers_page.dart';
import 'package:flutter_demo/pages/zayavki_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/registrationpage': (context) => RegistrationPage(),
        '/zayavkipage' : (context) => ZayavkiPage(),
        '/bunkerspage' : (context) => BunkerPage(),
      }
      );
  }
}



