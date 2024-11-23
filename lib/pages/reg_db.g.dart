// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reg_db.dart';

// ignore_for_file: type=lint
class $UserTable extends User with TableInfo<$UserTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _emailNameMeta =
      const VerificationMeta('emailName');
  @override
  late final GeneratedColumn<String> emailName = GeneratedColumn<String>(
      'email_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passwordNameMeta =
      const VerificationMeta('passwordName');
  @override
  late final GeneratedColumn<String> passwordName = GeneratedColumn<String>(
      'password_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, emailName, passwordName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('email_name')) {
      context.handle(_emailNameMeta,
          emailName.isAcceptableOrUnknown(data['email_name']!, _emailNameMeta));
    } else if (isInserting) {
      context.missing(_emailNameMeta);
    }
    if (data.containsKey('password_name')) {
      context.handle(
          _passwordNameMeta,
          passwordName.isAcceptableOrUnknown(
              data['password_name']!, _passwordNameMeta));
    } else if (isInserting) {
      context.missing(_passwordNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      emailName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email_name'])!,
      passwordName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password_name'])!,
    );
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }
}

class UserData extends DataClass implements Insertable<UserData> {
  final int id;
  final String emailName;
  final String passwordName;
  const UserData(
      {required this.id, required this.emailName, required this.passwordName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['email_name'] = Variable<String>(emailName);
    map['password_name'] = Variable<String>(passwordName);
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      id: Value(id),
      emailName: Value(emailName),
      passwordName: Value(passwordName),
    );
  }

  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      id: serializer.fromJson<int>(json['id']),
      emailName: serializer.fromJson<String>(json['emailName']),
      passwordName: serializer.fromJson<String>(json['passwordName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'emailName': serializer.toJson<String>(emailName),
      'passwordName': serializer.toJson<String>(passwordName),
    };
  }

  UserData copyWith({int? id, String? emailName, String? passwordName}) =>
      UserData(
        id: id ?? this.id,
        emailName: emailName ?? this.emailName,
        passwordName: passwordName ?? this.passwordName,
      );
  UserData copyWithCompanion(UserCompanion data) {
    return UserData(
      id: data.id.present ? data.id.value : this.id,
      emailName: data.emailName.present ? data.emailName.value : this.emailName,
      passwordName: data.passwordName.present
          ? data.passwordName.value
          : this.passwordName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('id: $id, ')
          ..write('emailName: $emailName, ')
          ..write('passwordName: $passwordName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, emailName, passwordName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.id == this.id &&
          other.emailName == this.emailName &&
          other.passwordName == this.passwordName);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<int> id;
  final Value<String> emailName;
  final Value<String> passwordName;
  const UserCompanion({
    this.id = const Value.absent(),
    this.emailName = const Value.absent(),
    this.passwordName = const Value.absent(),
  });
  UserCompanion.insert({
    this.id = const Value.absent(),
    required String emailName,
    required String passwordName,
  })  : emailName = Value(emailName),
        passwordName = Value(passwordName);
  static Insertable<UserData> custom({
    Expression<int>? id,
    Expression<String>? emailName,
    Expression<String>? passwordName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (emailName != null) 'email_name': emailName,
      if (passwordName != null) 'password_name': passwordName,
    });
  }

  UserCompanion copyWith(
      {Value<int>? id, Value<String>? emailName, Value<String>? passwordName}) {
    return UserCompanion(
      id: id ?? this.id,
      emailName: emailName ?? this.emailName,
      passwordName: passwordName ?? this.passwordName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (emailName.present) {
      map['email_name'] = Variable<String>(emailName.value);
    }
    if (passwordName.present) {
      map['password_name'] = Variable<String>(passwordName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('id: $id, ')
          ..write('emailName: $emailName, ')
          ..write('passwordName: $passwordName')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $UserTable user = $UserTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [user];
}

typedef $$UserTableCreateCompanionBuilder = UserCompanion Function({
  Value<int> id,
  required String emailName,
  required String passwordName,
});
typedef $$UserTableUpdateCompanionBuilder = UserCompanion Function({
  Value<int> id,
  Value<String> emailName,
  Value<String> passwordName,
});

class $$UserTableFilterComposer extends Composer<_$AppDb, $UserTable> {
  $$UserTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get emailName => $composableBuilder(
      column: $table.emailName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get passwordName => $composableBuilder(
      column: $table.passwordName, builder: (column) => ColumnFilters(column));
}

class $$UserTableOrderingComposer extends Composer<_$AppDb, $UserTable> {
  $$UserTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get emailName => $composableBuilder(
      column: $table.emailName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get passwordName => $composableBuilder(
      column: $table.passwordName,
      builder: (column) => ColumnOrderings(column));
}

class $$UserTableAnnotationComposer extends Composer<_$AppDb, $UserTable> {
  $$UserTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get emailName =>
      $composableBuilder(column: $table.emailName, builder: (column) => column);

  GeneratedColumn<String> get passwordName => $composableBuilder(
      column: $table.passwordName, builder: (column) => column);
}

class $$UserTableTableManager extends RootTableManager<
    _$AppDb,
    $UserTable,
    UserData,
    $$UserTableFilterComposer,
    $$UserTableOrderingComposer,
    $$UserTableAnnotationComposer,
    $$UserTableCreateCompanionBuilder,
    $$UserTableUpdateCompanionBuilder,
    (UserData, BaseReferences<_$AppDb, $UserTable, UserData>),
    UserData,
    PrefetchHooks Function()> {
  $$UserTableTableManager(_$AppDb db, $UserTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> emailName = const Value.absent(),
            Value<String> passwordName = const Value.absent(),
          }) =>
              UserCompanion(
            id: id,
            emailName: emailName,
            passwordName: passwordName,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String emailName,
            required String passwordName,
          }) =>
              UserCompanion.insert(
            id: id,
            emailName: emailName,
            passwordName: passwordName,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $UserTable,
    UserData,
    $$UserTableFilterComposer,
    $$UserTableOrderingComposer,
    $$UserTableAnnotationComposer,
    $$UserTableCreateCompanionBuilder,
    $$UserTableUpdateCompanionBuilder,
    (UserData, BaseReferences<_$AppDb, $UserTable, UserData>),
    UserData,
    PrefetchHooks Function()>;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$UserTableTableManager get user => $$UserTableTableManager(_db, _db.user);
}
