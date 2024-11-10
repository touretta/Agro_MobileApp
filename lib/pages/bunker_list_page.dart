import 'package:flutter/material.dart';

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