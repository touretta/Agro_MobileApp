import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:flutter_demo/suchestvo/user_db.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'reg_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {

    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path,'users.sqlite'));

    return NativeDatabase(file);
  });

}


@DriftDatabase(tables: [User])
class AppDb extends _$AppDb {

  AppDb() : super(_openConnection());

  @override 
  int get schemaVersion => 1;

  Future<List<UserData>> getUsers() async {
    return await select(user).get();
  }

  Future<UserData> getUser(int id) async {
    return await (select(user)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future<bool> updateUser(UserCompanion suchestvo) async {
    return await update(user).replace(suchestvo);
  }

  Future<int> insertUser(UserCompanion suchestvo) async {
    return await into(user).insert(suchestvo);
  }

  Future<int> deleteUser(int id) async {
    return await (delete(user)..where((tbl) => tbl.id.equals(id))).go();
  }

 
}