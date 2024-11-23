import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter_demo/pages/app_db.dart';

class BunkerPage extends StatefulWidget {
  const BunkerPage({super.key});

  @override
  State<BunkerPage> createState() => _BunkerPageState();
}

class _BunkerPageState extends State<BunkerPage>{
  late AppDb _db;
  final TextEditingController _ploshadkaController = TextEditingController();
  final TextEditingController _uchastokController = TextEditingController();
  final TextEditingController _ostatokNachaloController = TextEditingController();
  final TextEditingController _prixodController = TextEditingController();
  final TextEditingController _rasxodController = TextEditingController();
  final TextEditingController _ostatokKonecController = TextEditingController();


  @override
  void initState(){
    super.initState();
    
    _db = AppDb();
  }



  @override
  void dispose() {
   _db.close(); 
   _ploshadkaController.dispose();
   _uchastokController.dispose();
   _ostatokNachaloController.dispose();
   _prixodController.dispose();
   _rasxodController.dispose();
   _ostatokKonecController.dispose();
   super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Добавить Бункер"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _ploshadkaController,
                decoration: const InputDecoration(labelText: 'Площадка'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите площадку';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _uchastokController,
                decoration: const InputDecoration(labelText: 'Участок'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите участок';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _ostatokNachaloController,
                decoration: const InputDecoration(labelText: 'Остаток начало'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите остаток на начало';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _prixodController,
                decoration: const InputDecoration(labelText: 'Приход'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите приход';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _rasxodController,
                decoration: const InputDecoration(labelText: 'Расход'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите расход';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _ostatokKonecController,
                decoration: const InputDecoration(labelText: 'Остаток конец'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите остаток на конец';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  if (checkVariables() == 'OK'){
                    addBunker();
                  }
                  else{
                    null;
                  }
                  
            },
                child: const Text('Добавить Бункер'),
              ),
            ],
          ),
        ),
      ),
    );
  }
  String checkVariables(){
    if(_ploshadkaController.text == ''){
      return 'Не указана площадка бункера.';
    }
    else if (_uchastokController.text == ''){
      return 'Не указан участок бункера.';
    }
    else if (_uchastokController.text == ''){
      return 'Не указан остаток на начало.';
    }
    else if (_uchastokController.text == ''){
      return 'Не указан приход.';
    }
    else if (_uchastokController.text == ''){
      return 'Не указан расход.';
    }
    else if (_uchastokController.text == ''){
      return 'Не указан остаток на конец.';
    }

    return 'OK';
  }

  void addBunker(){
    final suchestvo = BunkerCompanion(
    ploshadkaName: drift.Value(_ploshadkaController.text),
    uchastokName: drift.Value(_uchastokController.text),
    ostatokNachaloName: drift.Value(_ostatokNachaloController.text),
    prixodName: drift.Value(_prixodController.text),
    rasxodName: drift.Value(_rasxodController.text),
    ostatokKonecName: drift.Value(_ostatokKonecController.text),
  ); 
  _db.insertBunker(suchestvo).then((value) => ScaffoldMessenger.of(context)
  .showMaterialBanner(
    MaterialBanner(
    content: Text('новый бункер добавлен: его id - $value'),
    actions: [
    TextButton(
    onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
    child: const Text('закрыть'))
          ],  
        ),
      )
    );
    _ploshadkaController.clear();
    _uchastokController.clear();
    _ostatokNachaloController.clear();
    _prixodController.clear();
    _rasxodController.clear();
    _ostatokKonecController.clear();
  }
  }