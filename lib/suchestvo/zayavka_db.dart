import 'package:drift/drift.dart';

class Zayavka extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get mestoVigruzkiName => text().named('mestoVigruzki_name')();
  TextColumn get valueVigruzkiName => text().named('valueVigruzki_name')();
  TextColumn get zapolBunkerovName => text().named('zapolBunkerov_name')();
  TextColumn get vremyaVigruzkiName => text().named('vremyaVigruzki_name')();
  TextColumn get fioName => text().named('fio_name')();

} 