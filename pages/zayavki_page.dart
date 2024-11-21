import 'package:flutter/material.dart';


class Zayavka {
  final String mestoVygruzki;
  final double obiemVygruzki;
  final String zapolnennostBunkerov;
  final String vremyaVygruzki;
  final String fio;

  Zayavka({
    required this.mestoVygruzki,
    required this.obiemVygruzki,
    required this.zapolnennostBunkerov,
    required this.vremyaVygruzki,
    required this.fio,
  });
}

class ZayavkiPage extends StatefulWidget {
  const ZayavkiPage({super.key});

  @override
  State<ZayavkiPage> createState() => _ZayavkiPageState();
}

class _ZayavkiPageState extends State<ZayavkiPage> {
  final _formKey = GlobalKey<FormState>();


  final _mestoVygruzkiController = TextEditingController();
  final _obiemVygruzkiController = TextEditingController();
  final _zapolnennostBunkerovController = TextEditingController();
  final _vremyaVygruzkiController = TextEditingController();
  final _fioController = TextEditingController();


  List<Zayavka> _zayavki = [];

  @override
  void dispose() {
    _mestoVygruzkiController.dispose();
    _obiemVygruzkiController.dispose();
    _zapolnennostBunkerovController.dispose();
    _vremyaVygruzkiController.dispose();
    _fioController.dispose();
    super.dispose();
  }

  void _submitZayavka() {
    if (_formKey.currentState!.validate()) {

      final newZayavka = Zayavka(
        mestoVygruzki: _mestoVygruzkiController.text,
        obiemVygruzki: double.parse(_obiemVygruzkiController.text),
        zapolnennostBunkerov: _zapolnennostBunkerovController.text,
        vremyaVygruzki: _vremyaVygruzkiController.text,
        fio: _fioController.text,
      );

      setState(() {
        _zayavki.add(newZayavka);
      });


      _mestoVygruzkiController.clear();
      _obiemVygruzkiController.clear();
      _zapolnennostBunkerovController.clear();
      _vremyaVygruzkiController.clear();
      _fioController.clear();

  
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заявки'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _mestoVygruzkiController,
                  decoration: InputDecoration(
                    labelText: 'Место Выгрузки', 
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите место выгрузки';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0), 
                TextFormField(
                  controller: _obiemVygruzkiController,
                  decoration: InputDecoration(
                    labelText: 'Объем Выгрузки',
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите объем выгрузки';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  controller: _zapolnennostBunkerovController,
                  decoration: InputDecoration(
                    labelText: 'Заполненность Бункеров', 
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите заполненность бункеров';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  controller: _vremyaVygruzkiController,
                  decoration: InputDecoration(
                    labelText: 'Время Выгрузки', 
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите время выгрузки';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  controller: _fioController,
                  decoration: InputDecoration(
                    labelText: 'ФИО', 
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите ФИО';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: _submitZayavka,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0), 
                    textStyle: const TextStyle(fontSize: 18.0), 
                  ),
                  child: const Text('Отправить'), 
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}