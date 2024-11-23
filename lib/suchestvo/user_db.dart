import 'package:drift/drift.dart';

class User extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get emailName => text().named('email_name')();
  TextColumn get passwordName => text().named('password_name')();
} 