import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter_demo/pages/doc_db.dart';

class ZayavkiEditPage extends StatefulWidget {
  final int id;
  const ZayavkiEditPage({required this.id, Key? key}) : super(key: key);

  @override
  State<ZayavkiEditPage> createState() => _ZayavkiEditPageState();
}



class _ZayavkiEditPageState extends State<ZayavkiEditPage>{
  late AppDb _db;
  late ZayavkaData _zayavkaData;
  final TextEditingController _mestoVygruzkiController = TextEditingController();
  final TextEditingController _obiemVygruzkiController = TextEditingController();
  final TextEditingController _zapolnennostBunkerovController = TextEditingController();
  final TextEditingController _vremyaVygruzkiController = TextEditingController();
  final TextEditingController _fioController = TextEditingController();



  @override
  void initState(){
    super.initState();
    _db = AppDb();
    getZayavka();
  }



  @override
  void dispose() {
   _db.close(); 
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
        title: Text("Именить Заявку"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _mestoVygruzkiController,
                decoration: InputDecoration(labelText: 'Место выгрузки'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите площадку';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _obiemVygruzkiController,
                decoration: InputDecoration(labelText: 'Объем выгрузки'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите участок';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _zapolnennostBunkerovController,
                decoration: InputDecoration(labelText: 'заполненность бункеров'),
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
                controller: _vremyaVygruzkiController,
                decoration: InputDecoration(labelText: 'Время выгрузки'),
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
                controller: _fioController,
                decoration: InputDecoration(labelText: 'Фио'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите расход';
                  }
                  return null;
                },
              ),
            
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  editBunker();
            },
                child: Text('Изменить заявку'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void editBunker(){
    final suchestvo = ZayavkaCompanion(
    id: drift.Value(widget.id),
    mestoVigruzkiName: drift.Value(_mestoVygruzkiController.text),
    valueVigruzkiName: drift.Value(_obiemVygruzkiController.text),
    zapolBunkerovName: drift.Value(_zapolnennostBunkerovController.text),
    vremyaVigruzkiName: drift.Value(_vremyaVygruzkiController.text),
    fioName: drift.Value(_fioController.text),
  ); 
  _db.updateZayavka(suchestvo).then((value) => ScaffoldMessenger.of(context)
  .showMaterialBanner(
    MaterialBanner(
    content: Text('Заявка обновлена: её id - $value'),
    actions: [
    TextButton(
    onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
    child: const Text('закрыть'))
          ],  
        ),
      )
    );
  }



  Future<void> getZayavka() async {
    _zayavkaData = await _db.getZayavka(widget.id);
  _mestoVygruzkiController.text = _zayavkaData.mestoVigruzkiName;
  _obiemVygruzkiController.text = _zayavkaData.valueVigruzkiName;
  _zapolnennostBunkerovController.text = _zayavkaData.zapolBunkerovName;
  _vremyaVygruzkiController.text = _zayavkaData.vremyaVigruzkiName;
  _fioController.text = _zayavkaData.fioName;
  }
}



