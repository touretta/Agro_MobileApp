// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $BunkerTable extends Bunker with TableInfo<$BunkerTable, BunkerData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BunkerTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _ploshadkaNameMeta =
      const VerificationMeta('ploshadkaName');
  @override
  late final GeneratedColumn<String> ploshadkaName = GeneratedColumn<String>(
      'ploshadka_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _uchastokNameMeta =
      const VerificationMeta('uchastokName');
  @override
  late final GeneratedColumn<String> uchastokName = GeneratedColumn<String>(
      'uchastok_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ostatokNachaloNameMeta =
      const VerificationMeta('ostatokNachaloName');
  @override
  late final GeneratedColumn<String> ostatokNachaloName =
      GeneratedColumn<String>('ostatokNachalo_name', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _prixodNameMeta =
      const VerificationMeta('prixodName');
  @override
  late final GeneratedColumn<String> prixodName = GeneratedColumn<String>(
      'prixod_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _rasxodNameMeta =
      const VerificationMeta('rasxodName');
  @override
  late final GeneratedColumn<String> rasxodName = GeneratedColumn<String>(
      'rasxod_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ostatokKonecNameMeta =
      const VerificationMeta('ostatokKonecName');
  @override
  late final GeneratedColumn<String> ostatokKonecName = GeneratedColumn<String>(
      'ostatokKonec_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        ploshadkaName,
        uchastokName,
        ostatokNachaloName,
        prixodName,
        rasxodName,
        ostatokKonecName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bunker';
  @override
  VerificationContext validateIntegrity(Insertable<BunkerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('ploshadka_name')) {
      context.handle(
          _ploshadkaNameMeta,
          ploshadkaName.isAcceptableOrUnknown(
              data['ploshadka_name']!, _ploshadkaNameMeta));
    } else if (isInserting) {
      context.missing(_ploshadkaNameMeta);
    }
    if (data.containsKey('uchastok_name')) {
      context.handle(
          _uchastokNameMeta,
          uchastokName.isAcceptableOrUnknown(
              data['uchastok_name']!, _uchastokNameMeta));
    } else if (isInserting) {
      context.missing(_uchastokNameMeta);
    }
    if (data.containsKey('ostatokNachalo_name')) {
      context.handle(
          _ostatokNachaloNameMeta,
          ostatokNachaloName.isAcceptableOrUnknown(
              data['ostatokNachalo_name']!, _ostatokNachaloNameMeta));
    } else if (isInserting) {
      context.missing(_ostatokNachaloNameMeta);
    }
    if (data.containsKey('prixod_name')) {
      context.handle(
          _prixodNameMeta,
          prixodName.isAcceptableOrUnknown(
              data['prixod_name']!, _prixodNameMeta));
    } else if (isInserting) {
      context.missing(_prixodNameMeta);
    }
    if (data.containsKey('rasxod_name')) {
      context.handle(
          _rasxodNameMeta,
          rasxodName.isAcceptableOrUnknown(
              data['rasxod_name']!, _rasxodNameMeta));
    } else if (isInserting) {
      context.missing(_rasxodNameMeta);
    }
    if (data.containsKey('ostatokKonec_name')) {
      context.handle(
          _ostatokKonecNameMeta,
          ostatokKonecName.isAcceptableOrUnknown(
              data['ostatokKonec_name']!, _ostatokKonecNameMeta));
    } else if (isInserting) {
      context.missing(_ostatokKonecNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BunkerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BunkerData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      ploshadkaName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ploshadka_name'])!,
      uchastokName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uchastok_name'])!,
      ostatokNachaloName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}ostatokNachalo_name'])!,
      prixodName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}prixod_name'])!,
      rasxodName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rasxod_name'])!,
      ostatokKonecName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}ostatokKonec_name'])!,
    );
  }

  @override
  $BunkerTable createAlias(String alias) {
    return $BunkerTable(attachedDatabase, alias);
  }
}

class BunkerData extends DataClass implements Insertable<BunkerData> {
  final int id;
  final String ploshadkaName;
  final String uchastokName;
  final String ostatokNachaloName;
  final String prixodName;
  final String rasxodName;
  final String ostatokKonecName;
  const BunkerData(
      {required this.id,
      required this.ploshadkaName,
      required this.uchastokName,
      required this.ostatokNachaloName,
      required this.prixodName,
      required this.rasxodName,
      required this.ostatokKonecName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['ploshadka_name'] = Variable<String>(ploshadkaName);
    map['uchastok_name'] = Variable<String>(uchastokName);
    map['ostatokNachalo_name'] = Variable<String>(ostatokNachaloName);
    map['prixod_name'] = Variable<String>(prixodName);
    map['rasxod_name'] = Variable<String>(rasxodName);
    map['ostatokKonec_name'] = Variable<String>(ostatokKonecName);
    return map;
  }

  BunkerCompanion toCompanion(bool nullToAbsent) {
    return BunkerCompanion(
      id: Value(id),
      ploshadkaName: Value(ploshadkaName),
      uchastokName: Value(uchastokName),
      ostatokNachaloName: Value(ostatokNachaloName),
      prixodName: Value(prixodName),
      rasxodName: Value(rasxodName),
      ostatokKonecName: Value(ostatokKonecName),
    );
  }

  factory BunkerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BunkerData(
      id: serializer.fromJson<int>(json['id']),
      ploshadkaName: serializer.fromJson<String>(json['ploshadkaName']),
      uchastokName: serializer.fromJson<String>(json['uchastokName']),
      ostatokNachaloName:
          serializer.fromJson<String>(json['ostatokNachaloName']),
      prixodName: serializer.fromJson<String>(json['prixodName']),
      rasxodName: serializer.fromJson<String>(json['rasxodName']),
      ostatokKonecName: serializer.fromJson<String>(json['ostatokKonecName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ploshadkaName': serializer.toJson<String>(ploshadkaName),
      'uchastokName': serializer.toJson<String>(uchastokName),
      'ostatokNachaloName': serializer.toJson<String>(ostatokNachaloName),
      'prixodName': serializer.toJson<String>(prixodName),
      'rasxodName': serializer.toJson<String>(rasxodName),
      'ostatokKonecName': serializer.toJson<String>(ostatokKonecName),
    };
  }

  BunkerData copyWith(
          {int? id,
          String? ploshadkaName,
          String? uchastokName,
          String? ostatokNachaloName,
          String? prixodName,
          String? rasxodName,
          String? ostatokKonecName}) =>
      BunkerData(
        id: id ?? this.id,
        ploshadkaName: ploshadkaName ?? this.ploshadkaName,
        uchastokName: uchastokName ?? this.uchastokName,
        ostatokNachaloName: ostatokNachaloName ?? this.ostatokNachaloName,
        prixodName: prixodName ?? this.prixodName,
        rasxodName: rasxodName ?? this.rasxodName,
        ostatokKonecName: ostatokKonecName ?? this.ostatokKonecName,
      );
  BunkerData copyWithCompanion(BunkerCompanion data) {
    return BunkerData(
      id: data.id.present ? data.id.value : this.id,
      ploshadkaName: data.ploshadkaName.present
          ? data.ploshadkaName.value
          : this.ploshadkaName,
      uchastokName: data.uchastokName.present
          ? data.uchastokName.value
          : this.uchastokName,
      ostatokNachaloName: data.ostatokNachaloName.present
          ? data.ostatokNachaloName.value
          : this.ostatokNachaloName,
      prixodName:
          data.prixodName.present ? data.prixodName.value : this.prixodName,
      rasxodName:
          data.rasxodName.present ? data.rasxodName.value : this.rasxodName,
      ostatokKonecName: data.ostatokKonecName.present
          ? data.ostatokKonecName.value
          : this.ostatokKonecName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BunkerData(')
          ..write('id: $id, ')
          ..write('ploshadkaName: $ploshadkaName, ')
          ..write('uchastokName: $uchastokName, ')
          ..write('ostatokNachaloName: $ostatokNachaloName, ')
          ..write('prixodName: $prixodName, ')
          ..write('rasxodName: $rasxodName, ')
          ..write('ostatokKonecName: $ostatokKonecName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, ploshadkaName, uchastokName,
      ostatokNachaloName, prixodName, rasxodName, ostatokKonecName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BunkerData &&
          other.id == this.id &&
          other.ploshadkaName == this.ploshadkaName &&
          other.uchastokName == this.uchastokName &&
          other.ostatokNachaloName == this.ostatokNachaloName &&
          other.prixodName == this.prixodName &&
          other.rasxodName == this.rasxodName &&
          other.ostatokKonecName == this.ostatokKonecName);
}

class BunkerCompanion extends UpdateCompanion<BunkerData> {
  final Value<int> id;
  final Value<String> ploshadkaName;
  final Value<String> uchastokName;
  final Value<String> ostatokNachaloName;
  final Value<String> prixodName;
  final Value<String> rasxodName;
  final Value<String> ostatokKonecName;
  const BunkerCompanion({
    this.id = const Value.absent(),
    this.ploshadkaName = const Value.absent(),
    this.uchastokName = const Value.absent(),
    this.ostatokNachaloName = const Value.absent(),
    this.prixodName = const Value.absent(),
    this.rasxodName = const Value.absent(),
    this.ostatokKonecName = const Value.absent(),
  });
  BunkerCompanion.insert({
    this.id = const Value.absent(),
    required String ploshadkaName,
    required String uchastokName,
    required String ostatokNachaloName,
    required String prixodName,
    required String rasxodName,
    required String ostatokKonecName,
  })  : ploshadkaName = Value(ploshadkaName),
        uchastokName = Value(uchastokName),
        ostatokNachaloName = Value(ostatokNachaloName),
        prixodName = Value(prixodName),
        rasxodName = Value(rasxodName),
        ostatokKonecName = Value(ostatokKonecName);
  static Insertable<BunkerData> custom({
    Expression<int>? id,
    Expression<String>? ploshadkaName,
    Expression<String>? uchastokName,
    Expression<String>? ostatokNachaloName,
    Expression<String>? prixodName,
    Expression<String>? rasxodName,
    Expression<String>? ostatokKonecName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ploshadkaName != null) 'ploshadka_name': ploshadkaName,
      if (uchastokName != null) 'uchastok_name': uchastokName,
      if (ostatokNachaloName != null) 'ostatokNachalo_name': ostatokNachaloName,
      if (prixodName != null) 'prixod_name': prixodName,
      if (rasxodName != null) 'rasxod_name': rasxodName,
      if (ostatokKonecName != null) 'ostatokKonec_name': ostatokKonecName,
    });
  }

  BunkerCompanion copyWith(
      {Value<int>? id,
      Value<String>? ploshadkaName,
      Value<String>? uchastokName,
      Value<String>? ostatokNachaloName,
      Value<String>? prixodName,
      Value<String>? rasxodName,
      Value<String>? ostatokKonecName}) {
    return BunkerCompanion(
      id: id ?? this.id,
      ploshadkaName: ploshadkaName ?? this.ploshadkaName,
      uchastokName: uchastokName ?? this.uchastokName,
      ostatokNachaloName: ostatokNachaloName ?? this.ostatokNachaloName,
      prixodName: prixodName ?? this.prixodName,
      rasxodName: rasxodName ?? this.rasxodName,
      ostatokKonecName: ostatokKonecName ?? this.ostatokKonecName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (ploshadkaName.present) {
      map['ploshadka_name'] = Variable<String>(ploshadkaName.value);
    }
    if (uchastokName.present) {
      map['uchastok_name'] = Variable<String>(uchastokName.value);
    }
    if (ostatokNachaloName.present) {
      map['ostatokNachalo_name'] = Variable<String>(ostatokNachaloName.value);
    }
    if (prixodName.present) {
      map['prixod_name'] = Variable<String>(prixodName.value);
    }
    if (rasxodName.present) {
      map['rasxod_name'] = Variable<String>(rasxodName.value);
    }
    if (ostatokKonecName.present) {
      map['ostatokKonec_name'] = Variable<String>(ostatokKonecName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BunkerCompanion(')
          ..write('id: $id, ')
          ..write('ploshadkaName: $ploshadkaName, ')
          ..write('uchastokName: $uchastokName, ')
          ..write('ostatokNachaloName: $ostatokNachaloName, ')
          ..write('prixodName: $prixodName, ')
          ..write('rasxodName: $rasxodName, ')
          ..write('ostatokKonecName: $ostatokKonecName')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $BunkerTable bunker = $BunkerTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [bunker];
}

typedef $$BunkerTableCreateCompanionBuilder = BunkerCompanion Function({
  Value<int> id,
  required String ploshadkaName,
  required String uchastokName,
  required String ostatokNachaloName,
  required String prixodName,
  required String rasxodName,
  required String ostatokKonecName,
});
typedef $$BunkerTableUpdateCompanionBuilder = BunkerCompanion Function({
  Value<int> id,
  Value<String> ploshadkaName,
  Value<String> uchastokName,
  Value<String> ostatokNachaloName,
  Value<String> prixodName,
  Value<String> rasxodName,
  Value<String> ostatokKonecName,
});

class $$BunkerTableFilterComposer extends Composer<_$AppDb, $BunkerTable> {
  $$BunkerTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ploshadkaName => $composableBuilder(
      column: $table.ploshadkaName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get uchastokName => $composableBuilder(
      column: $table.uchastokName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ostatokNachaloName => $composableBuilder(
      column: $table.ostatokNachaloName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get prixodName => $composableBuilder(
      column: $table.prixodName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get rasxodName => $composableBuilder(
      column: $table.rasxodName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ostatokKonecName => $composableBuilder(
      column: $table.ostatokKonecName,
      builder: (column) => ColumnFilters(column));
}

class $$BunkerTableOrderingComposer extends Composer<_$AppDb, $BunkerTable> {
  $$BunkerTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ploshadkaName => $composableBuilder(
      column: $table.ploshadkaName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get uchastokName => $composableBuilder(
      column: $table.uchastokName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ostatokNachaloName => $composableBuilder(
      column: $table.ostatokNachaloName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get prixodName => $composableBuilder(
      column: $table.prixodName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get rasxodName => $composableBuilder(
      column: $table.rasxodName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ostatokKonecName => $composableBuilder(
      column: $table.ostatokKonecName,
      builder: (column) => ColumnOrderings(column));
}

class $$BunkerTableAnnotationComposer extends Composer<_$AppDb, $BunkerTable> {
  $$BunkerTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get ploshadkaName => $composableBuilder(
      column: $table.ploshadkaName, builder: (column) => column);

  GeneratedColumn<String> get uchastokName => $composableBuilder(
      column: $table.uchastokName, builder: (column) => column);

  GeneratedColumn<String> get ostatokNachaloName => $composableBuilder(
      column: $table.ostatokNachaloName, builder: (column) => column);

  GeneratedColumn<String> get prixodName => $composableBuilder(
      column: $table.prixodName, builder: (column) => column);

  GeneratedColumn<String> get rasxodName => $composableBuilder(
      column: $table.rasxodName, builder: (column) => column);

  GeneratedColumn<String> get ostatokKonecName => $composableBuilder(
      column: $table.ostatokKonecName, builder: (column) => column);
}

class $$BunkerTableTableManager extends RootTableManager<
    _$AppDb,
    $BunkerTable,
    BunkerData,
    $$BunkerTableFilterComposer,
    $$BunkerTableOrderingComposer,
    $$BunkerTableAnnotationComposer,
    $$BunkerTableCreateCompanionBuilder,
    $$BunkerTableUpdateCompanionBuilder,
    (BunkerData, BaseReferences<_$AppDb, $BunkerTable, BunkerData>),
    BunkerData,
    PrefetchHooks Function()> {
  $$BunkerTableTableManager(_$AppDb db, $BunkerTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BunkerTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BunkerTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BunkerTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> ploshadkaName = const Value.absent(),
            Value<String> uchastokName = const Value.absent(),
            Value<String> ostatokNachaloName = const Value.absent(),
            Value<String> prixodName = const Value.absent(),
            Value<String> rasxodName = const Value.absent(),
            Value<String> ostatokKonecName = const Value.absent(),
          }) =>
              BunkerCompanion(
            id: id,
            ploshadkaName: ploshadkaName,
            uchastokName: uchastokName,
            ostatokNachaloName: ostatokNachaloName,
            prixodName: prixodName,
            rasxodName: rasxodName,
            ostatokKonecName: ostatokKonecName,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String ploshadkaName,
            required String uchastokName,
            required String ostatokNachaloName,
            required String prixodName,
            required String rasxodName,
            required String ostatokKonecName,
          }) =>
              BunkerCompanion.insert(
            id: id,
            ploshadkaName: ploshadkaName,
            uchastokName: uchastokName,
            ostatokNachaloName: ostatokNachaloName,
            prixodName: prixodName,
            rasxodName: rasxodName,
            ostatokKonecName: ostatokKonecName,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BunkerTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $BunkerTable,
    BunkerData,
    $$BunkerTableFilterComposer,
    $$BunkerTableOrderingComposer,
    $$BunkerTableAnnotationComposer,
    $$BunkerTableCreateCompanionBuilder,
    $$BunkerTableUpdateCompanionBuilder,
    (BunkerData, BaseReferences<_$AppDb, $BunkerTable, BunkerData>),
    BunkerData,
    PrefetchHooks Function()>;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$BunkerTableTableManager get bunker =>
      $$BunkerTableTableManager(_db, _db.bunker);
}
