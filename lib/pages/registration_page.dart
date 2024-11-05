import "package:flutter/material.dart";

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

TextEditingController myLogin = TextEditingController();
TextEditingController myPassword = TextEditingController();

void greetUser() {
  print(myLogin.text);
  print(myPassword.text);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
        TextField(
          controller: myLogin,
          decoration: InputDecoration(
            labelText: 'почта',
            border: OutlineInputBorder()
          ),
        ),
        TextField(
          controller: myPassword,
          decoration: InputDecoration(
            labelText: 'пароль',
            border: OutlineInputBorder()
          ),
        ),
        ElevatedButton(onPressed: greetUser, child: Text('Tap!'),)
      ],)),)
    );
  }
}