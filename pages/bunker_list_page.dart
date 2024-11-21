import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/app_db.dart';

class BunkerListPage extends StatefulWidget {
  const BunkerListPage({Key? key }) : super(key: key);

  @override
  State<BunkerListPage> createState() => _BunkerListPageState();
}

  class _BunkerListPageState extends State<BunkerListPage>{
  
  late AppDb _db;
  @override
  void initState() {
    super.initState();

    _db = AppDb();
  }
  @override
  void dispose() {
    _db.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список Бункеров'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<BunkerData>>(
        future: _db.getBunkers(),
        builder: (context, snapshot) {
          final List<BunkerData>? bunker = snapshot.data;

          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString())
            );
          }
          if (bunker != null) {
            return ListView.builder(
              itemCount: bunker.length,
              itemBuilder: (context, index) {
              final Bunker = bunker[index];
              return Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.blueGrey.shade200,
                    style: BorderStyle.solid,
                    width: 1.2
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0)
                  )
                ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Bunker.id.toString()),
                    Text(Bunker.ploshadkaName.toString()),
                    Text(Bunker.uchastokName.toString()),
                    Text(Bunker.ostatokNachaloName.toString()),
                    Text(Bunker.prixodName.toString()),
                    Text(Bunker.rasxodName.toString()),
                    Text(Bunker.ostatokKonecName.toString()),
                  ],
                )
              ),
              );
            });
          }
          return const Text('no data found');
        },
      )
    );             
  }
}