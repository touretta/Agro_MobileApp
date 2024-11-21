// ignore_for_file: depend_on_referenced_packages

import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:flutter_demo/suchestvo/bunker_db.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'app_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {

    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path,'bunkers.sqlite'));

    return NativeDatabase(file);
  });

}


@DriftDatabase(tables: [Bunker])
class AppDb extends _$AppDb {

  AppDb() : super(_openConnection());

  @override 
  int get schemaVersion => 1;


  Future<List<BunkerData>> getBunkers() async {
    return await select(bunker).get();
  }

  Future<BunkerData> getBunker(int id) async {
    return await (select(bunker)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future<bool> updateBunker(BunkerCompanion suchestvo) async {
    return await update(bunker).replace(suchestvo);
  }

  Future<int> insertBunker(BunkerCompanion suchestvo) async {
    return await into(bunker).insert(suchestvo);
  }

  Future<int> deleteBunker(int id) async {
    return await (delete(bunker)..where((tbl) => tbl.id.equals(id))).go();
  }
}