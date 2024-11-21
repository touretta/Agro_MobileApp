import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter_demo/pages/app_db.dart';

class BunkerPage extends StatefulWidget {
  const BunkerPage({Key? key}) : super(key: key);

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
        title: Text("Добавить Бункер"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _ploshadkaController,
                decoration: InputDecoration(labelText: 'Площадка'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите площадку';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _uchastokController,
                decoration: InputDecoration(labelText: 'Участок'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите участок';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _ostatokNachaloController,
                decoration: InputDecoration(labelText: 'Остаток начало'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите остаток на начало';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _prixodController,
                decoration: InputDecoration(labelText: 'Приход'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите приход';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _rasxodController,
                decoration: InputDecoration(labelText: 'Расход'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите расход';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _ostatokKonecController,
                decoration: InputDecoration(labelText: 'Остаток конец'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите остаток на конец';
                  }
                  return null;
                },
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  addBunker();
            },
                child: Text('Добавить Бункер'),
              ),
            ],
          ),
        ),
      ),
    );
  }
  

  void addBunker(){
    final suchestvo = BunkerCompanion(
    ploshadkaName: drift.Value(_ploshadkaController.text),
    uchastokName: drift.Value(_uchastokController.text),
    ostatokNachaloName: drift.Value(_ostatokNachaloController.hashCode),
    prixodName: drift.Value(_prixodController.hashCode),
    rasxodName: drift.Value(_ploshadkaController.hashCode),
    ostatokKonecName: drift.Value(_ostatokKonecController.hashCode),
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