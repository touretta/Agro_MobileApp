import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter_demo/pages/doc_db.dart';

class ZayavkiPage extends StatefulWidget {
  const ZayavkiPage({super.key});

  @override
  State<ZayavkiPage> createState() => _ZayavkiPageState();
}

class _ZayavkiPageState extends State<ZayavkiPage> {
  late AppDb _db;
  final _mestoVygruzkiController = TextEditingController();
  final _obiemVygruzkiController = TextEditingController();
  final _zapolnennostBunkerovController = TextEditingController();
  final _vremyaVygruzkiController = TextEditingController();
  final _fioController = TextEditingController();

  @override
  void initState(){
    super.initState();

    _db = AppDb();
  }

  @override
  void dispose() {
    _mestoVygruzkiController.dispose();
    _obiemVygruzkiController.dispose();
    _zapolnennostBunkerovController.dispose();
    _vremyaVygruzkiController.dispose();
    _fioController.dispose();
    super.dispose();
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
                  onPressed: addZayavky,
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
  void addZayavky(){
    final suchestvo = ZayavkaCompanion(
    mestoVigruzkiName: drift.Value(_mestoVygruzkiController.text),
    valueVigruzkiName: drift.Value(_obiemVygruzkiController.text),
    zapolBunkerovName: drift.Value(_zapolnennostBunkerovController.text),
    vremyaVigruzkiName: drift.Value(_vremyaVygruzkiController.text),
    fioName: drift.Value(_fioController.text),
  ); 
  _db.insertZayavka(suchestvo).then((value) => ScaffoldMessenger.of(context)
  .showMaterialBanner(
    MaterialBanner(
    content: Text('новая заявка добавлена: ее id - $value'),
    actions: [
    TextButton(
    onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
    child: const Text('закрыть'))
          ],  
        ),
      )
    );
    _mestoVygruzkiController.clear();
    _obiemVygruzkiController.clear();
    _zapolnennostBunkerovController.clear();
    _vremyaVygruzkiController.clear();
    _fioController.clear();
  }
}