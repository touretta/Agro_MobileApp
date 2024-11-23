import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/doc_db.dart';

class ZayavkiListPage extends StatefulWidget {
  const ZayavkiListPage({Key? key }) : super(key: key);

  @override
  State<ZayavkiListPage> createState() => _ZayavkiListPageState();
}

  class _ZayavkiListPageState extends State<ZayavkiListPage>{
  
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
        title: Text('Список Заявок'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<ZayavkaData>>(
        future: _db.getZayavki(),
        builder: (context, snapshot) {
          final List<ZayavkaData>? zayavka = snapshot.data;

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
          if (zayavka != null) {
            return ListView.builder(
              itemCount: zayavka.length,
              itemBuilder: (context, index) {
              final Zayavka = zayavka[index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context,'/zayavkiedit', arguments: Zayavka.id);
                },
                child: Card(
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
                    Text(Zayavka.id.toString()),
                    Text(Zayavka.mestoVigruzkiName.toString()),
                    Text(Zayavka.valueVigruzkiName.toString()),
                    Text(Zayavka.zapolBunkerovName.toString()),
                    Text(Zayavka.vremyaVigruzkiName.toString()),
                    Text(Zayavka.fioName.toString()),
                        ],
                      )
                    ),
                  ),
                );
              }
            );
          }
          return const Text('no data found');
        },
      )
    );             
  }
}