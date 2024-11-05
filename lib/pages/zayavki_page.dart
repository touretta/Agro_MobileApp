// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class ZayavkiPage extends StatelessWidget {
  const ZayavkiPage ({super.key});

void greetUser() {
  print("hai");
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
        TextField(
  //        controller: myLogin,
          decoration: InputDecoration(
            labelText: 'Mesto_Vigruzki',
            border: OutlineInputBorder()
          ),
        ),
        TextField(
  //        controller: myLogin,
          decoration: InputDecoration(
            labelText: 'Value_Vigruzki',
            border: OutlineInputBorder()
          ),
        ),
        TextField(
  //        controller: myLogin,
          decoration: InputDecoration(
            labelText: 'Zapolnenost_bunkerov',
            border: OutlineInputBorder()
          ),
        ),
        TextField(
  //        controller: myLogin,
          decoration: InputDecoration(
            labelText: 'Vremya_Vigruzki',
            border: OutlineInputBorder()
          ),
        ),
        TextField(
 //         controller: myPassword,
          decoration: InputDecoration(
            labelText: 'FIO',
            border: OutlineInputBorder()
          ),
        ),
        ElevatedButton(onPressed:greetUser, child: Text('Tap!'),)
      ],)),));
  }
}