import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter_demo/pages/reg_db.dart';



class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});
  
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late AppDb _db;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordCheck = TextEditingController();

  @override
  void initState(){
    super.initState();

    _db = AppDb();
  }

  @override
  void dispose(){
  
    _db.close();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Регистрация"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Введите почту',
                ),
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Введите пароль',
                ),
              ),
              SizedBox(height: 16.0),
               TextField(
                controller: _passwordCheck,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Введите пароль заного',
                ),
              ),
              SizedBox(height: 16.0),

              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  _checkPassword();
                  addUser();
                },
                child: Text('Зарегистрироваться'),
              ),
              SizedBox(height: 16.0),
              Text(
                _emailController.text.isEmpty ? '' : _checkEmailResult(),
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                _passwordController.text.isEmpty ? '' : _checkPasswordResult(),
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                _passwordCheck.text.isEmpty ? '' : _passwordProverka(),
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 40.0), 
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); 
                },
                child: Text("Назад"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addUser(){
    final suchestvo = UserCompanion(
      emailName: drift.Value(_emailController.text),
      passwordName: drift.Value(_passwordController.text),
    );
    _db.insertUser(suchestvo).then((value) => ScaffoldMessenger.of(context)
    .showMaterialBanner(
      MaterialBanner(
      content: Text('новый пользователь добавлен: его id - $value'),
      actions: [
        TextButton(onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(), 
        child: const Text('Закрыть'))
      ],
      )
    ));
    _emailController.clear();
    _passwordController.clear();
  }

  void _checkPassword() {
    setState(() {});
  }

  String _passwordProverka() {
      if(_passwordController.text == _passwordCheck.text) {
        return 'Пароли совпадают';
      }
      else {
        return 'Пароли не совпадают';
      }
      
  }

  String _checkEmailResult() {
    String email = _emailController.text;
    final RegExp emailRegex = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");
    if (emailRegex.hasMatch(email)) {
      final parts = email.split('@');
      final domain = parts[1];
      if (['yandex.ru', 'gmail.com', 'mail.ru', 'rambler.ru'].contains(domain)) {
        return 'Почта соответствует требованиям.';
      } else {
        return 'Почта должна быть с доменом yandex.ru, gmail.com, mail.ru или rambler.ru';
      }
    } else {
      return 'Неправильный формат почты.';
    }
  }

  
 String _checkPasswordResult() {
    String password = _passwordController.text;
    bool hasUppercase = false;
    bool hasSpecialCharacter = false;

    for (int i = 0; i < password.length; i++) {
      if (password[i].toUpperCase() == password[i]) {
        hasUppercase = true;
      }
      if (['!', ':', '%', '№', '?'].contains(password[i])) {
        hasSpecialCharacter = true;
      }
    }

    if (hasUppercase && hasSpecialCharacter) {
      return 'Пароль соответствует требованиям.';
    } else if (!hasUppercase) {
      return 'Пароль должен содержать хотя бы одну заглавную букву.';
    } else if (!hasSpecialCharacter) {
      return 'Пароль должен содержать хотя бы один из символов: ! : % № ?';
    } else {
      return 'Пароль не соответствует требованиям.';
    }
  }
}