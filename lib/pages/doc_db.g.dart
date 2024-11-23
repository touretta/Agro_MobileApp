// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_db.dart';

// ignore_for_file: type=lint
class $ZayavkaTable extends Zayavka with TableInfo<$ZayavkaTable, ZayavkaData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ZayavkaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _mestoVigruzkiNameMeta =
      const VerificationMeta('mestoVigruzkiName');
  @override
  late final GeneratedColumn<String> mestoVigruzkiName =
      GeneratedColumn<String>('mestoVigruzki_name', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueVigruzkiNameMeta =
      const VerificationMeta('valueVigruzkiName');
  @override
  late final GeneratedColumn<String> valueVigruzkiName =
      GeneratedColumn<String>('valueVigruzki_name', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _zapolBunkerovNameMeta =
      const VerificationMeta('zapolBunkerovName');
  @override
  late final GeneratedColumn<String> zapolBunkerovName =
      GeneratedColumn<String>('zapolBunkerov_name', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _vremyaVigruzkiNameMeta =
      const VerificationMeta('vremyaVigruzkiName');
  @override
  late final GeneratedColumn<String> vremyaVigruzkiName =
      GeneratedColumn<String>('vremyaVigruzki_name', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fioNameMeta =
      const VerificationMeta('fioName');
  @override
  late final GeneratedColumn<String> fioName = GeneratedColumn<String>(
      'fio_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        mestoVigruzkiName,
        valueVigruzkiName,
        zapolBunkerovName,
        vremyaVigruzkiName,
        fioName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'zayavka';
  @override
  VerificationContext validateIntegrity(Insertable<ZayavkaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('mestoVigruzki_name')) {
      context.handle(
          _mestoVigruzkiNameMeta,
          mestoVigruzkiName.isAcceptableOrUnknown(
              data['mestoVigruzki_name']!, _mestoVigruzkiNameMeta));
    } else if (isInserting) {
      context.missing(_mestoVigruzkiNameMeta);
    }
    if (data.containsKey('valueVigruzki_name')) {
      context.handle(
          _valueVigruzkiNameMeta,
          valueVigruzkiName.isAcceptableOrUnknown(
              data['valueVigruzki_name']!, _valueVigruzkiNameMeta));
    } else if (isInserting) {
      context.missing(_valueVigruzkiNameMeta);
    }
    if (data.containsKey('zapolBunkerov_name')) {
      context.handle(
          _zapolBunkerovNameMeta,
          zapolBunkerovName.isAcceptableOrUnknown(
              data['zapolBunkerov_name']!, _zapolBunkerovNameMeta));
    } else if (isInserting) {
      context.missing(_zapolBunkerovNameMeta);
    }
    if (data.containsKey('vremyaVigruzki_name')) {
      context.handle(
          _vremyaVigruzkiNameMeta,
          vremyaVigruzkiName.isAcceptableOrUnknown(
              data['vremyaVigruzki_name']!, _vremyaVigruzkiNameMeta));
    } else if (isInserting) {
      context.missing(_vremyaVigruzkiNameMeta);
    }
    if (data.containsKey('fio_name')) {
      context.handle(_fioNameMeta,
          fioName.isAcceptableOrUnknown(data['fio_name']!, _fioNameMeta));
    } else if (isInserting) {
      context.missing(_fioNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ZayavkaData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ZayavkaData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      mestoVigruzkiName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}mestoVigruzki_name'])!,
      valueVigruzkiName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}valueVigruzki_name'])!,
      zapolBunkerovName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}zapolBunkerov_name'])!,
      vremyaVigruzkiName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}vremyaVigruzki_name'])!,
      fioName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fio_name'])!,
    );
  }

  @override
  $ZayavkaTable createAlias(String alias) {
    return $ZayavkaTable(attachedDatabase, alias);
  }
}

class ZayavkaData extends DataClass implements Insertable<ZayavkaData> {
  final int id;
  final String mestoVigruzkiName;
  final String valueVigruzkiName;
  final String zapolBunkerovName;
  final String vremyaVigruzkiName;
  final String fioName;
  const ZayavkaData(
      {required this.id,
      required this.mestoVigruzkiName,
      required this.valueVigruzkiName,
      required this.zapolBunkerovName,
      required this.vremyaVigruzkiName,
      required this.fioName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['mestoVigruzki_name'] = Variable<String>(mestoVigruzkiName);
    map['valueVigruzki_name'] = Variable<String>(valueVigruzkiName);
    map['zapolBunkerov_name'] = Variable<String>(zapolBunkerovName);
    map['vremyaVigruzki_name'] = Variable<String>(vremyaVigruzkiName);
    map['fio_name'] = Variable<String>(fioName);
    return map;
  }

  ZayavkaCompanion toCompanion(bool nullToAbsent) {
    return ZayavkaCompanion(
      id: Value(id),
      mestoVigruzkiName: Value(mestoVigruzkiName),
      valueVigruzkiName: Value(valueVigruzkiName),
      zapolBunkerovName: Value(zapolBunkerovName),
      vremyaVigruzkiName: Value(vremyaVigruzkiName),
      fioName: Value(fioName),
    );
  }

  factory ZayavkaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ZayavkaData(
      id: serializer.fromJson<int>(json['id']),
      mestoVigruzkiName: serializer.fromJson<String>(json['mestoVigruzkiName']),
      valueVigruzkiName: serializer.fromJson<String>(json['valueVigruzkiName']),
      zapolBunkerovName: serializer.fromJson<String>(json['zapolBunkerovName']),
      vremyaVigruzkiName:
          serializer.fromJson<String>(json['vremyaVigruzkiName']),
      fioName: serializer.fromJson<String>(json['fioName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'mestoVigruzkiName': serializer.toJson<String>(mestoVigruzkiName),
      'valueVigruzkiName': serializer.toJson<String>(valueVigruzkiName),
      'zapolBunkerovName': serializer.toJson<String>(zapolBunkerovName),
      'vremyaVigruzkiName': serializer.toJson<String>(vremyaVigruzkiName),
      'fioName': serializer.toJson<String>(fioName),
    };
  }

  ZayavkaData copyWith(
          {int? id,
          String? mestoVigruzkiName,
          String? valueVigruzkiName,
          String? zapolBunkerovName,
          String? vremyaVigruzkiName,
          String? fioName}) =>
      ZayavkaData(
        id: id ?? this.id,
        mestoVigruzkiName: mestoVigruzkiName ?? this.mestoVigruzkiName,
        valueVigruzkiName: valueVigruzkiName ?? this.valueVigruzkiName,
        zapolBunkerovName: zapolBunkerovName ?? this.zapolBunkerovName,
        vremyaVigruzkiName: vremyaVigruzkiName ?? this.vremyaVigruzkiName,
        fioName: fioName ?? this.fioName,
      );
  ZayavkaData copyWithCompanion(ZayavkaCompanion data) {
    return ZayavkaData(
      id: data.id.present ? data.id.value : this.id,
      mestoVigruzkiName: data.mestoVigruzkiName.present
          ? data.mestoVigruzkiName.value
          : this.mestoVigruzkiName,
      valueVigruzkiName: data.valueVigruzkiName.present
          ? data.valueVigruzkiName.value
          : this.valueVigruzkiName,
      zapolBunkerovName: data.zapolBunkerovName.present
          ? data.zapolBunkerovName.value
          : this.zapolBunkerovName,
      vremyaVigruzkiName: data.vremyaVigruzkiName.present
          ? data.vremyaVigruzkiName.value
          : this.vremyaVigruzkiName,
      fioName: data.fioName.present ? data.fioName.value : this.fioName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ZayavkaData(')
          ..write('id: $id, ')
          ..write('mestoVigruzkiName: $mestoVigruzkiName, ')
          ..write('valueVigruzkiName: $valueVigruzkiName, ')
          ..write('zapolBunkerovName: $zapolBunkerovName, ')
          ..write('vremyaVigruzkiName: $vremyaVigruzkiName, ')
          ..write('fioName: $fioName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, mestoVigruzkiName, valueVigruzkiName,
      zapolBunkerovName, vremyaVigruzkiName, fioName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ZayavkaData &&
          other.id == this.id &&
          other.mestoVigruzkiName == this.mestoVigruzkiName &&
          other.valueVigruzkiName == this.valueVigruzkiName &&
          other.zapolBunkerovName == this.zapolBunkerovName &&
          other.vremyaVigruzkiName == this.vremyaVigruzkiName &&
          other.fioName == this.fioName);
}

class ZayavkaCompanion extends UpdateCompanion<ZayavkaData> {
  final Value<int> id;
  final Value<String> mestoVigruzkiName;
  final Value<String> valueVigruzkiName;
  final Value<String> zapolBunkerovName;
  final Value<String> vremyaVigruzkiName;
  final Value<String> fioName;
  const ZayavkaCompanion({
    this.id = const Value.absent(),
    this.mestoVigruzkiName = const Value.absent(),
    this.valueVigruzkiName = const Value.absent(),
    this.zapolBunkerovName = const Value.absent(),
    this.vremyaVigruzkiName = const Value.absent(),
    this.fioName = const Value.absent(),
  });
  ZayavkaCompanion.insert({
    this.id = const Value.absent(),
    required String mestoVigruzkiName,
    required String valueVigruzkiName,
    required String zapolBunkerovName,
    required String vremyaVigruzkiName,
    required String fioName,
  })  : mestoVigruzkiName = Value(mestoVigruzkiName),
        valueVigruzkiName = Value(valueVigruzkiName),
        zapolBunkerovName = Value(zapolBunkerovName),
        vremyaVigruzkiName = Value(vremyaVigruzkiName),
        fioName = Value(fioName);
  static Insertable<ZayavkaData> custom({
    Expression<int>? id,
    Expression<String>? mestoVigruzkiName,
    Expression<String>? valueVigruzkiName,
    Expression<String>? zapolBunkerovName,
    Expression<String>? vremyaVigruzkiName,
    Expression<String>? fioName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (mestoVigruzkiName != null) 'mestoVigruzki_name': mestoVigruzkiName,
      if (valueVigruzkiName != null) 'valueVigruzki_name': valueVigruzkiName,
      if (zapolBunkerovName != null) 'zapolBunkerov_name': zapolBunkerovName,
      if (vremyaVigruzkiName != null) 'vremyaVigruzki_name': vremyaVigruzkiName,
      if (fioName != null) 'fio_name': fioName,
    });
  }

  ZayavkaCompanion copyWith(
      {Value<int>? id,
      Value<String>? mestoVigruzkiName,
      Value<String>? valueVigruzkiName,
      Value<String>? zapolBunkerovName,
      Value<String>? vremyaVigruzkiName,
      Value<String>? fioName}) {
    return ZayavkaCompanion(
      id: id ?? this.id,
      mestoVigruzkiName: mestoVigruzkiName ?? this.mestoVigruzkiName,
      valueVigruzkiName: valueVigruzkiName ?? this.valueVigruzkiName,
      zapolBunkerovName: zapolBunkerovName ?? this.zapolBunkerovName,
      vremyaVigruzkiName: vremyaVigruzkiName ?? this.vremyaVigruzkiName,
      fioName: fioName ?? this.fioName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (mestoVigruzkiName.present) {
      map['mestoVigruzki_name'] = Variable<String>(mestoVigruzkiName.value);
    }
    if (valueVigruzkiName.present) {
      map['valueVigruzki_name'] = Variable<String>(valueVigruzkiName.value);
    }
    if (zapolBunkerovName.present) {
      map['zapolBunkerov_name'] = Variable<String>(zapolBunkerovName.value);
    }
    if (vremyaVigruzkiName.present) {
      map['vremyaVigruzki_name'] = Variable<String>(vremyaVigruzkiName.value);
    }
    if (fioName.present) {
      map['fio_name'] = Variable<String>(fioName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ZayavkaCompanion(')
          ..write('id: $id, ')
          ..write('mestoVigruzkiName: $mestoVigruzkiName, ')
          ..write('valueVigruzkiName: $valueVigruzkiName, ')
          ..write('zapolBunkerovName: $zapolBunkerovName, ')
          ..write('vremyaVigruzkiName: $vremyaVigruzkiName, ')
          ..write('fioName: $fioName')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $ZayavkaTable zayavka = $ZayavkaTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [zayavka];
}

typedef $$ZayavkaTableCreateCompanionBuilder = ZayavkaCompanion Function({
  Value<int> id,
  required String mestoVigruzkiName,
  required String valueVigruzkiName,
  required String zapolBunkerovName,
  required String vremyaVigruzkiName,
  required String fioName,
});
typedef $$ZayavkaTableUpdateCompanionBuilder = ZayavkaCompanion Function({
  Value<int> id,
  Value<String> mestoVigruzkiName,
  Value<String> valueVigruzkiName,
  Value<String> zapolBunkerovName,
  Value<String> vremyaVigruzkiName,
  Value<String> fioName,
});

class $$ZayavkaTableFilterComposer extends Composer<_$AppDb, $ZayavkaTable> {
  $$ZayavkaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mestoVigruzkiName => $composableBuilder(
      column: $table.mestoVigruzkiName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get valueVigruzkiName => $composableBuilder(
      column: $table.valueVigruzkiName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get zapolBunkerovName => $composableBuilder(
      column: $table.zapolBunkerovName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get vremyaVigruzkiName => $composableBuilder(
      column: $table.vremyaVigruzkiName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fioName => $composableBuilder(
      column: $table.fioName, builder: (column) => ColumnFilters(column));
}

class $$ZayavkaTableOrderingComposer extends Composer<_$AppDb, $ZayavkaTable> {
  $$ZayavkaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mestoVigruzkiName => $composableBuilder(
      column: $table.mestoVigruzkiName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get valueVigruzkiName => $composableBuilder(
      column: $table.valueVigruzkiName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get zapolBunkerovName => $composableBuilder(
      column: $table.zapolBunkerovName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get vremyaVigruzkiName => $composableBuilder(
      column: $table.vremyaVigruzkiName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fioName => $composableBuilder(
      column: $table.fioName, builder: (column) => ColumnOrderings(column));
}

class $$ZayavkaTableAnnotationComposer
    extends Composer<_$AppDb, $ZayavkaTable> {
  $$ZayavkaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get mestoVigruzkiName => $composableBuilder(
      column: $table.mestoVigruzkiName, builder: (column) => column);

  GeneratedColumn<String> get valueVigruzkiName => $composableBuilder(
      column: $table.valueVigruzkiName, builder: (column) => column);

  GeneratedColumn<String> get zapolBunkerovName => $composableBuilder(
      column: $table.zapolBunkerovName, builder: (column) => column);

  GeneratedColumn<String> get vremyaVigruzkiName => $composableBuilder(
      column: $table.vremyaVigruzkiName, builder: (column) => column);

  GeneratedColumn<String> get fioName =>
      $composableBuilder(column: $table.fioName, builder: (column) => column);
}

class $$ZayavkaTableTableManager extends RootTableManager<
    _$AppDb,
    $ZayavkaTable,
    ZayavkaData,
    $$ZayavkaTableFilterComposer,
    $$ZayavkaTableOrderingComposer,
    $$ZayavkaTableAnnotationComposer,
    $$ZayavkaTableCreateCompanionBuilder,
    $$ZayavkaTableUpdateCompanionBuilder,
    (ZayavkaData, BaseReferences<_$AppDb, $ZayavkaTable, ZayavkaData>),
    ZayavkaData,
    PrefetchHooks Function()> {
  $$ZayavkaTableTableManager(_$AppDb db, $ZayavkaTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ZayavkaTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ZayavkaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ZayavkaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> mestoVigruzkiName = const Value.absent(),
            Value<String> valueVigruzkiName = const Value.absent(),
            Value<String> zapolBunkerovName = const Value.absent(),
            Value<String> vremyaVigruzkiName = const Value.absent(),
            Value<String> fioName = const Value.absent(),
          }) =>
              ZayavkaCompanion(
            id: id,
            mestoVigruzkiName: mestoVigruzkiName,
            valueVigruzkiName: valueVigruzkiName,
            zapolBunkerovName: zapolBunkerovName,
            vremyaVigruzkiName: vremyaVigruzkiName,
            fioName: fioName,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String mestoVigruzkiName,
            required String valueVigruzkiName,
            required String zapolBunkerovName,
            required String vremyaVigruzkiName,
            required String fioName,
          }) =>
              ZayavkaCompanion.insert(
            id: id,
            mestoVigruzkiName: mestoVigruzkiName,
            valueVigruzkiName: valueVigruzkiName,
            zapolBunkerovName: zapolBunkerovName,
            vremyaVigruzkiName: vremyaVigruzkiName,
            fioName: fioName,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ZayavkaTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $ZayavkaTable,
    ZayavkaData,
    $$ZayavkaTableFilterComposer,
    $$ZayavkaTableOrderingComposer,
    $$ZayavkaTableAnnotationComposer,
    $$ZayavkaTableCreateCompanionBuilder,
    $$ZayavkaTableUpdateCompanionBuilder,
    (ZayavkaData, BaseReferences<_$AppDb, $ZayavkaTable, ZayavkaData>),
    ZayavkaData,
    PrefetchHooks Function()>;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$ZayavkaTableTableManager get zayavka =>
      $$ZayavkaTableTableManager(_db, _db.zayavka);
}
