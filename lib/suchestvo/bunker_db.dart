import 'package:drift/drift.dart';

class Bunker extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get ploshadkaName => text().named('ploshadka_name')();
  TextColumn get uchastokName => text().named('uchastok_name')();
  TextColumn get ostatokNachaloName => text().named('ostatokNachalo_name')();
  TextColumn get prixodName => text().named('prixod_name')();
  TextColumn get rasxodName => text().named('rasxod_name')();
  TextColumn get ostatokKonecName => text().named('ostatokKonec_name')();
  

} 