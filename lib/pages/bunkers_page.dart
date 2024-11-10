import 'package:flutter/material.dart';

// Модель для данных бункера
class Bunker {
  final String ploshadka;
  final String uchastok;
  final double ostatokNachalo;
  final double prixod;
  final double rasxod;
  final double ostatokKonec;

  Bunker({
    required this.ploshadka,
    required this.uchastok,
    required this.ostatokNachalo,
    required this.prixod,
    required this.rasxod,
    required this.ostatokKonec,
  });
}

// Страница добавления бункера
class BunkerPage extends StatefulWidget {
  const BunkerPage({Key? key}) : super(key: key);

  @override
  State<BunkerPage> createState() => _BunkerPageState();
}

class _BunkerPageState extends State<BunkerPage> {
  final _formKey = GlobalKey<FormState>();

  // Контроллеры для текстовых полей
  final _ploshadkaController = TextEditingController();
  final _uchastokController = TextEditingController();
  final _ostatokNachaloController = TextEditingController();
  final _prixodController = TextEditingController();
  final _rasxodController = TextEditingController();
  final _ostatokKonecController = TextEditingController();

  // Список для хранения данных бункеров
  List<Bunker> _bunkers = [];

  @override
  void dispose() {
    _ploshadkaController.dispose();
    _uchastokController.dispose();
    _ostatokNachaloController.dispose();
    _prixodController.dispose();
    _rasxodController.dispose();
    _ostatokKonecController.dispose();
    super.dispose();
  }

  void _submitBunker() {
    if (_formKey.currentState!.validate()) {
      // Создаем новый объект Bunker
      final newBunker = Bunker(
        ploshadka: _ploshadkaController.text,
        uchastok: _uchastokController.text,
        ostatokNachalo: double.parse(_ostatokNachaloController.text),
        prixod: double.parse(_prixodController.text),
        rasxod: double.parse(_rasxodController.text),
        ostatokKonec: double.parse(_ostatokKonecController.text),
      );

      setState(() {
        _bunkers.add(newBunker);
      });

      // Очищаем контроллеры
      _ploshadkaController.clear();
      _uchastokController.clear();
      _ostatokNachaloController.clear();
      _prixodController.clear();
      _rasxodController.clear();
      _ostatokKonecController.clear();

      // Переходим на страницу с отображением бункеров
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BunkerListPage(bunkers: _bunkers), // Передаем список _bunkers
        ),
      );
    }
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
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _ploshadkaController,
                decoration: InputDecoration(labelText: '_ploshadka'),
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
                decoration: InputDecoration(labelText: '_uchastok'),
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
                decoration: InputDecoration(labelText: '_ostatokNachalo'),
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
                decoration: InputDecoration(labelText: '_prixod'),
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
                decoration: InputDecoration(labelText: '_rasxod'),
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
                decoration: InputDecoration(labelText: '_ostatokKonec'),
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
                onPressed: _submitBunker,
                child: Text('Добавить Бункер'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Страница для отображения списка бункеров
class BunkerListPage extends StatelessWidget {
  final List<dynamic> bunkers; // Изменяем тип на List<dynamic>

  const BunkerListPage({Key? key, required this.bunkers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список Бункеров'),
      ),
      body: ListView.builder(
        itemCount: bunkers.length,
        itemBuilder: (context, index) {
          final bunker = bunkers[index]; // Доступ к данным бункера
          return Card(
            child: ListTile(
              title: Text('${bunker.ploshadka} - ${bunker.uchastok}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Остаток на начало: ${bunker.ostatokNachalo}'),
                  Text('Приход: ${bunker.prixod}'),
                  Text('Расход: ${bunker.rasxod}'),
                  Text('Остаток на конец: ${bunker.ostatokKonec}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}