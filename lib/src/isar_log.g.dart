// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_log.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarLogCollection on Isar {
  IsarCollection<IsarLog> get isarLogs => this.collection();
}

const IsarLogSchema = CollectionSchema(
  name: r'IsarLog',
  id: -8254198945142641039,
  properties: {
    r'line': PropertySchema(
      id: 0,
      name: r'line',
      type: IsarType.string,
    ),
    r'time': PropertySchema(
      id: 1,
      name: r'time',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _isarLogEstimateSize,
  serialize: _isarLogSerialize,
  deserialize: _isarLogDeserialize,
  deserializeProp: _isarLogDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _isarLogGetId,
  getLinks: _isarLogGetLinks,
  attach: _isarLogAttach,
  version: '3.1.0+1',
);

int _isarLogEstimateSize(
  IsarLog object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.line.length * 3;
  return bytesCount;
}

void _isarLogSerialize(
  IsarLog object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.line);
  writer.writeDateTime(offsets[1], object.time);
}

IsarLog _isarLogDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarLog();
  object.id = id;
  object.line = reader.readString(offsets[0]);
  object.time = reader.readDateTime(offsets[1]);
  return object;
}

P _isarLogDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarLogGetId(IsarLog object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarLogGetLinks(IsarLog object) {
  return [];
}

void _isarLogAttach(IsarCollection<dynamic> col, Id id, IsarLog object) {
  object.id = id;
}

extension IsarLogQueryWhereSort on QueryBuilder<IsarLog, IsarLog, QWhere> {
  QueryBuilder<IsarLog, IsarLog, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarLogQueryWhere on QueryBuilder<IsarLog, IsarLog, QWhereClause> {
  QueryBuilder<IsarLog, IsarLog, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarLogQueryFilter
    on QueryBuilder<IsarLog, IsarLog, QFilterCondition> {
  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> lineEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'line',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> lineGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'line',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> lineLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'line',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> lineBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'line',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> lineStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'line',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> lineEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'line',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> lineContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'line',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> lineMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'line',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> lineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'line',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> lineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'line',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> timeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> timeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> timeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterFilterCondition> timeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarLogQueryObject
    on QueryBuilder<IsarLog, IsarLog, QFilterCondition> {}

extension IsarLogQueryLinks
    on QueryBuilder<IsarLog, IsarLog, QFilterCondition> {}

extension IsarLogQuerySortBy on QueryBuilder<IsarLog, IsarLog, QSortBy> {
  QueryBuilder<IsarLog, IsarLog, QAfterSortBy> sortByLine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'line', Sort.asc);
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterSortBy> sortByLineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'line', Sort.desc);
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterSortBy> sortByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterSortBy> sortByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }
}

extension IsarLogQuerySortThenBy
    on QueryBuilder<IsarLog, IsarLog, QSortThenBy> {
  QueryBuilder<IsarLog, IsarLog, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterSortBy> thenByLine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'line', Sort.asc);
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterSortBy> thenByLineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'line', Sort.desc);
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterSortBy> thenByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<IsarLog, IsarLog, QAfterSortBy> thenByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }
}

extension IsarLogQueryWhereDistinct
    on QueryBuilder<IsarLog, IsarLog, QDistinct> {
  QueryBuilder<IsarLog, IsarLog, QDistinct> distinctByLine(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'line', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarLog, IsarLog, QDistinct> distinctByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'time');
    });
  }
}

extension IsarLogQueryProperty
    on QueryBuilder<IsarLog, IsarLog, QQueryProperty> {
  QueryBuilder<IsarLog, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarLog, String, QQueryOperations> lineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'line');
    });
  }

  QueryBuilder<IsarLog, DateTime, QQueryOperations> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'time');
    });
  }
}
