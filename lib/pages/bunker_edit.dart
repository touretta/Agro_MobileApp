import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter_demo/pages/app_db.dart';

final int _ostatokNachaloInt = 0;

class BunkerEditPage extends StatefulWidget {
  final int id;
  const BunkerEditPage({required this.id, Key? key}) : super(key: key);

  @override
  State<BunkerEditPage> createState() => _BunkerEditPageState();
}



class _BunkerEditPageState extends State<BunkerEditPage>{
  late AppDb _db;
  late BunkerData _bunkerData;
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
    getBunker();
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
        title: Text("Именить Бункер"),
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
                  editBunker();
            },
                child: Text('Изменить Бункер'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void editBunker(){
    final suchestvo = BunkerCompanion(
    id: drift.Value(widget.id),
    ploshadkaName: drift.Value(_ploshadkaController.text),
    uchastokName: drift.Value(_uchastokController.text),
    ostatokNachaloName: drift.Value(_ostatokNachaloController.text),
    prixodName: drift.Value(_prixodController.text),
    rasxodName: drift.Value(_ploshadkaController.text),
    ostatokKonecName: drift.Value(_ostatokKonecController.text),
  ); 
  _db.updateBunker(suchestvo).then((value) => ScaffoldMessenger.of(context)
  .showMaterialBanner(
    MaterialBanner(
    content: Text('Бункер обновлен: его id - $value'),
    actions: [
    TextButton(
    onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
    child: const Text('закрыть'))
          ],  
        ),
      )
    );
  }



  Future<void> getBunker() async {
    _bunkerData = await _db.getBunker(widget.id);
  _ploshadkaController.text = _bunkerData.ploshadkaName;
  _uchastokController.text = _bunkerData.uchastokName;
  _ostatokNachaloController.text = _bunkerData.ostatokNachaloName.toString();
  _prixodController.text = _bunkerData.prixodName.toString();
  _rasxodController.text = _bunkerData.rasxodName.toString();
  _ostatokKonecController.text = _bunkerData.ostatokKonecName.toString();
  }
}



