import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/bunker_edit.dart';
import 'package:flutter_demo/pages/first_page.dart';
import 'package:flutter_demo/pages/zayavki_edit.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;
    
    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const FirstPage());
      case '/bunkeredit':
        if(args is int) {
          return MaterialPageRoute(builder: (_) => BunkerEditPage(id: args));
        };
      case '/zayavkiedit':
        if (args is int) {
          return MaterialPageRoute(builder: (_) => ZayavkiEditPage(id: args));
        }
      
    }
      return _errorRoute();

    }
  }

  Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(appBar: AppBar(
        title: const Text('No Route'),
        centerTitle: true,
      ),
      body: const Center(child: Text("Sorry no route was found!"),));
    }); 
  }
  