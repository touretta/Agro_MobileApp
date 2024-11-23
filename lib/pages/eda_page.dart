import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter_demo/pages/eda_db.dart';

class EdaPage extends StatefulWidget {
  const EdaPage({super.key});

  @override
  State<EdaPage> createState() => _EdaPageState();
}

class _EdaPageState extends State<EdaPage> {
  late AppDb _db;
  final _kombikormNameController = TextEditingController();

  @override
  void initState(){
    super.initState();

    _db = AppDb();
  }

  @override
  void dispose() {
    _kombikormNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Зомбо ферм'),
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
                  controller: _kombikormNameController,
                  decoration: InputDecoration(
                    labelText: 'НАЗАВИТИ КАМБЯКОРМУ', 
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите комбикорм';
                    }
                    return null;
                  },
                ),
                
                const SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: addKombikorm,
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
  void addKombikorm(){
    final suchestvo = KombikormCompanion(
    kombikormName: drift.Value(_kombikormNameController.text),
  ); 
  _db.insertKombikorm(suchestvo).then((value) => ScaffoldMessenger.of(context)
  .showMaterialBanner(
    MaterialBanner(
    content: Text('Комбикорм добавлен: его id - $value'),
    actions: [
    TextButton(
    onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
    child: const Text('закрыть'))
          ],  
        ),
      )
    );
    _kombikormNameController.clear();

  }
}