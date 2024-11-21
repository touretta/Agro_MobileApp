import 'package:drift/drift.dart';

class Bunker extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get ploshadkaName => text().named('ploshadka_name')();
  TextColumn get uchastokName => text().named('uchastok_name')();
  IntColumn get ostatokNachaloName => integer().named('ostatokNachalo_name')();
  IntColumn get prixodName => integer().named('prixod_name')();
  IntColumn get rasxodName => integer().named('rasxod_name')();
  IntColumn get ostatokKonecName => integer().named('ostatokKonec_name')();
  

} 