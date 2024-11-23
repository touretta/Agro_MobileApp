import 'package:drift/drift.dart';

class Kombikorm extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get kombikormName => text().named('kombikorm_name')();

} 