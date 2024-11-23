// ignore_for_file: depend_on_referenced_packages

import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:flutter_demo/suchestvo/kombikorm_db.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'eda_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {

    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path,'kombikorms.sqlite'));

    return NativeDatabase(file);
  });

}


@DriftDatabase(tables: [Kombikorm])
class AppDb extends _$AppDb {

  AppDb() : super(_openConnection());

  @override 
  int get schemaVersion => 1;
  
  Future<List<KombikormData>> getKombikorms() async {
    return await select(kombikorm).get();
  }

  Future<KombikormData> getKombikorm(int id) async {
    return await (select(kombikorm)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future<bool> updateKombikorm(KombikormCompanion suchestvo) async {
    return await update(kombikorm).replace(suchestvo);
  }

  Future<int> insertKombikorm(KombikormCompanion suchestvo) async {
    return await into(kombikorm).insert(suchestvo);
  }

  Future<int> deleteKombikorm(int id) async {
    return await (delete(kombikorm)..where((tbl) => tbl.id.equals(id))).go();
  }
}