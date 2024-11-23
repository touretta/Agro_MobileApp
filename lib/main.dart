import "package:flutter/material.dart";
import 'package:flutter_demo/pages/bunker_list_page.dart';
import "package:flutter_demo/pages/first_page.dart";
import 'package:flutter_demo/pages/registration_page.dart';
import 'package:flutter_demo/pages/bunkers_page.dart';
import 'package:flutter_demo/pages/routes.dart';
import 'package:flutter_demo/pages/zayavki_list_page.dart';
import 'package:flutter_demo/pages/zayavki_page.dart';
import 'package:flutter_demo/pages/eda_page.dart';


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
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/registrationpage': (context) => RegistrationPage(),
        '/zayavkipage' : (context) => ZayavkiPage(),
        '/bunkerspage' : (context) => BunkerPage(),
        '/bunkerlistpage' : (context) => BunkerListPage(),
        '/zayavkilistpage' : (context) => ZayavkiListPage(),
        '/edapage' : (context) => EdaPage(),
      }
      );
  }
}



