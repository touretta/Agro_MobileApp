// ignore_for_file: depend_on_referenced_packages

import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:flutter_demo/suchestvo/zayavka_db.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'doc_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {

    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path,'zayavka.sqlite'));

    return NativeDatabase(file);
  });

}


@DriftDatabase(tables: [Zayavka])
class AppDb extends _$AppDb {

  AppDb() : super(_openConnection());

  @override 
  int get schemaVersion => 1;

  Future<List<ZayavkaData>> getZayavki() async {
    return await select(zayavka).get();
  }

  Future<ZayavkaData> getZayavka(int id) async {
    return await (select(zayavka)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future<bool> updateZayavka(ZayavkaCompanion suchestvo) async {
    return await update(zayavka).replace(suchestvo);
  }

  Future<int> insertZayavka(ZayavkaCompanion suchestvo) async {
    return await into(zayavka).insert(suchestvo);
  }

  Future<int> deleteZayavka(int id) async {
    return await (delete(zayavka)..where((tbl) => tbl.id.equals(id))).go();
  }

 
}