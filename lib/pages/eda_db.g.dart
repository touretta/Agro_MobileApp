// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eda_db.dart';

// ignore_for_file: type=lint
class $KombikormTable extends Kombikorm
    with TableInfo<$KombikormTable, KombikormData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KombikormTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _kombikormNameMeta =
      const VerificationMeta('kombikormName');
  @override
  late final GeneratedColumn<String> kombikormName = GeneratedColumn<String>(
      'kombikorm_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, kombikormName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'kombikorm';
  @override
  VerificationContext validateIntegrity(Insertable<KombikormData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('kombikorm_name')) {
      context.handle(
          _kombikormNameMeta,
          kombikormName.isAcceptableOrUnknown(
              data['kombikorm_name']!, _kombikormNameMeta));
    } else if (isInserting) {
      context.missing(_kombikormNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  KombikormData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KombikormData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      kombikormName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kombikorm_name'])!,
    );
  }

  @override
  $KombikormTable createAlias(String alias) {
    return $KombikormTable(attachedDatabase, alias);
  }
}

class KombikormData extends DataClass implements Insertable<KombikormData> {
  final int id;
  final String kombikormName;
  const KombikormData({required this.id, required this.kombikormName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['kombikorm_name'] = Variable<String>(kombikormName);
    return map;
  }

  KombikormCompanion toCompanion(bool nullToAbsent) {
    return KombikormCompanion(
      id: Value(id),
      kombikormName: Value(kombikormName),
    );
  }

  factory KombikormData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KombikormData(
      id: serializer.fromJson<int>(json['id']),
      kombikormName: serializer.fromJson<String>(json['kombikormName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'kombikormName': serializer.toJson<String>(kombikormName),
    };
  }

  KombikormData copyWith({int? id, String? kombikormName}) => KombikormData(
        id: id ?? this.id,
        kombikormName: kombikormName ?? this.kombikormName,
      );
  KombikormData copyWithCompanion(KombikormCompanion data) {
    return KombikormData(
      id: data.id.present ? data.id.value : this.id,
      kombikormName: data.kombikormName.present
          ? data.kombikormName.value
          : this.kombikormName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('KombikormData(')
          ..write('id: $id, ')
          ..write('kombikormName: $kombikormName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, kombikormName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KombikormData &&
          other.id == this.id &&
          other.kombikormName == this.kombikormName);
}

class KombikormCompanion extends UpdateCompanion<KombikormData> {
  final Value<int> id;
  final Value<String> kombikormName;
  const KombikormCompanion({
    this.id = const Value.absent(),
    this.kombikormName = const Value.absent(),
  });
  KombikormCompanion.insert({
    this.id = const Value.absent(),
    required String kombikormName,
  }) : kombikormName = Value(kombikormName);
  static Insertable<KombikormData> custom({
    Expression<int>? id,
    Expression<String>? kombikormName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (kombikormName != null) 'kombikorm_name': kombikormName,
    });
  }

  KombikormCompanion copyWith({Value<int>? id, Value<String>? kombikormName}) {
    return KombikormCompanion(
      id: id ?? this.id,
      kombikormName: kombikormName ?? this.kombikormName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (kombikormName.present) {
      map['kombikorm_name'] = Variable<String>(kombikormName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KombikormCompanion(')
          ..write('id: $id, ')
          ..write('kombikormName: $kombikormName')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $KombikormTable kombikorm = $KombikormTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [kombikorm];
}

typedef $$KombikormTableCreateCompanionBuilder = KombikormCompanion Function({
  Value<int> id,
  required String kombikormName,
});
typedef $$KombikormTableUpdateCompanionBuilder = KombikormCompanion Function({
  Value<int> id,
  Value<String> kombikormName,
});

class $$KombikormTableFilterComposer
    extends Composer<_$AppDb, $KombikormTable> {
  $$KombikormTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get kombikormName => $composableBuilder(
      column: $table.kombikormName, builder: (column) => ColumnFilters(column));
}

class $$KombikormTableOrderingComposer
    extends Composer<_$AppDb, $KombikormTable> {
  $$KombikormTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get kombikormName => $composableBuilder(
      column: $table.kombikormName,
      builder: (column) => ColumnOrderings(column));
}

class $$KombikormTableAnnotationComposer
    extends Composer<_$AppDb, $KombikormTable> {
  $$KombikormTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get kombikormName => $composableBuilder(
      column: $table.kombikormName, builder: (column) => column);
}

class $$KombikormTableTableManager extends RootTableManager<
    _$AppDb,
    $KombikormTable,
    KombikormData,
    $$KombikormTableFilterComposer,
    $$KombikormTableOrderingComposer,
    $$KombikormTableAnnotationComposer,
    $$KombikormTableCreateCompanionBuilder,
    $$KombikormTableUpdateCompanionBuilder,
    (KombikormData, BaseReferences<_$AppDb, $KombikormTable, KombikormData>),
    KombikormData,
    PrefetchHooks Function()> {
  $$KombikormTableTableManager(_$AppDb db, $KombikormTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$KombikormTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$KombikormTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$KombikormTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> kombikormName = const Value.absent(),
          }) =>
              KombikormCompanion(
            id: id,
            kombikormName: kombikormName,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String kombikormName,
          }) =>
              KombikormCompanion.insert(
            id: id,
            kombikormName: kombikormName,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$KombikormTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $KombikormTable,
    KombikormData,
    $$KombikormTableFilterComposer,
    $$KombikormTableOrderingComposer,
    $$KombikormTableAnnotationComposer,
    $$KombikormTableCreateCompanionBuilder,
    $$KombikormTableUpdateCompanionBuilder,
    (KombikormData, BaseReferences<_$AppDb, $KombikormTable, KombikormData>),
    KombikormData,
    PrefetchHooks Function()>;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$KombikormTableTableManager get kombikorm =>
      $$KombikormTableTableManager(_db, _db.kombikorm);
}
