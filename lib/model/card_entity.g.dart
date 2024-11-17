// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCardEntityCollection on Isar {
  IsarCollection<CardEntity> get cardEntitys => this.collection();
}

const CardEntitySchema = CollectionSchema(
  name: r'CardEntity',
  id: 8921433643831792852,
  properties: {
    r'attribute': PropertySchema(
      id: 0,
      name: r'attribute',
      type: IsarType.string,
    ),
    r'cardId': PropertySchema(
      id: 1,
      name: r'cardId',
      type: IsarType.long,
    ),
    r'cardImages': PropertySchema(
      id: 2,
      name: r'cardImages',
      type: IsarType.objectList,
      target: r'CardImageEntity',
    ),
    r'desc': PropertySchema(
      id: 3,
      name: r'desc',
      type: IsarType.string,
    ),
    r'level': PropertySchema(
      id: 4,
      name: r'level',
      type: IsarType.long,
    ),
    r'moreInfo': PropertySchema(
      id: 5,
      name: r'moreInfo',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 7,
      name: r'type',
      type: IsarType.string,
    ),
    r'typeline': PropertySchema(
      id: 8,
      name: r'typeline',
      type: IsarType.stringList,
    )
  },
  estimateSize: _cardEntityEstimateSize,
  serialize: _cardEntitySerialize,
  deserialize: _cardEntityDeserialize,
  deserializeProp: _cardEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'CardImageEntity': CardImageEntitySchema},
  getId: _cardEntityGetId,
  getLinks: _cardEntityGetLinks,
  attach: _cardEntityAttach,
  version: '3.1.0+1',
);

int _cardEntityEstimateSize(
  CardEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.attribute.length * 3;
  bytesCount += 3 + object.cardImages.length * 3;
  {
    final offsets = allOffsets[CardImageEntity]!;
    for (var i = 0; i < object.cardImages.length; i++) {
      final value = object.cardImages[i];
      bytesCount +=
          CardImageEntitySchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.desc.length * 3;
  bytesCount += 3 + object.moreInfo.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.type.length * 3;
  bytesCount += 3 + object.typeline.length * 3;
  {
    for (var i = 0; i < object.typeline.length; i++) {
      final value = object.typeline[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _cardEntitySerialize(
  CardEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.attribute);
  writer.writeLong(offsets[1], object.cardId);
  writer.writeObjectList<CardImageEntity>(
    offsets[2],
    allOffsets,
    CardImageEntitySchema.serialize,
    object.cardImages,
  );
  writer.writeString(offsets[3], object.desc);
  writer.writeLong(offsets[4], object.level);
  writer.writeString(offsets[5], object.moreInfo);
  writer.writeString(offsets[6], object.name);
  writer.writeString(offsets[7], object.type);
  writer.writeStringList(offsets[8], object.typeline);
}

CardEntity _cardEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CardEntity(
    attribute: reader.readString(offsets[0]),
    cardId: reader.readLong(offsets[1]),
    cardImages: reader.readObjectList<CardImageEntity>(
          offsets[2],
          CardImageEntitySchema.deserialize,
          allOffsets,
          CardImageEntity(),
        ) ??
        [],
    desc: reader.readString(offsets[3]),
    level: reader.readLong(offsets[4]),
    moreInfo: reader.readString(offsets[5]),
    name: reader.readString(offsets[6]),
    type: reader.readString(offsets[7]),
    typeline: reader.readStringList(offsets[8]) ?? [],
  );
  object.id = id;
  return object;
}

P _cardEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readObjectList<CardImageEntity>(
            offset,
            CardImageEntitySchema.deserialize,
            allOffsets,
            CardImageEntity(),
          ) ??
          []) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cardEntityGetId(CardEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cardEntityGetLinks(CardEntity object) {
  return [];
}

void _cardEntityAttach(IsarCollection<dynamic> col, Id id, CardEntity object) {
  object.id = id;
}

extension CardEntityQueryWhereSort
    on QueryBuilder<CardEntity, CardEntity, QWhere> {
  QueryBuilder<CardEntity, CardEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CardEntityQueryWhere
    on QueryBuilder<CardEntity, CardEntity, QWhereClause> {
  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> idBetween(
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

extension CardEntityQueryFilter
    on QueryBuilder<CardEntity, CardEntity, QFilterCondition> {
  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> attributeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attribute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      attributeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attribute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> attributeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attribute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> attributeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attribute',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      attributeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attribute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> attributeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attribute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> attributeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attribute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> attributeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attribute',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      attributeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attribute',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      attributeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attribute',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> cardIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> cardIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> cardIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> cardIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      cardImagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cardImages',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      cardImagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cardImages',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      cardImagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cardImages',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      cardImagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cardImages',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      cardImagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cardImages',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      cardImagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cardImages',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> descEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> descGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> descLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> descBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'desc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> descStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> descEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> descContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> descMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'desc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> descIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> descIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> levelEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> levelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> levelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> levelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'level',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> moreInfoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moreInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      moreInfoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'moreInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> moreInfoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'moreInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> moreInfoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'moreInfo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      moreInfoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'moreInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> moreInfoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'moreInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> moreInfoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'moreInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> moreInfoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'moreInfo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      moreInfoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moreInfo',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      moreInfoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'moreInfo',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'typeline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'typeline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'typeline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'typeline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'typeline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'typeline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'typeline',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeline',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'typeline',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeline',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeline',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeline',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeline',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeline',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      typelineLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'typeline',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension CardEntityQueryObject
    on QueryBuilder<CardEntity, CardEntity, QFilterCondition> {
  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> cardImagesElement(
      FilterQuery<CardImageEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'cardImages');
    });
  }
}

extension CardEntityQueryLinks
    on QueryBuilder<CardEntity, CardEntity, QFilterCondition> {}

extension CardEntityQuerySortBy
    on QueryBuilder<CardEntity, CardEntity, QSortBy> {
  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByAttribute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attribute', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByAttributeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attribute', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByCardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByCardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByMoreInfo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moreInfo', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByMoreInfoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moreInfo', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension CardEntityQuerySortThenBy
    on QueryBuilder<CardEntity, CardEntity, QSortThenBy> {
  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByAttribute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attribute', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByAttributeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attribute', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByCardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByCardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByMoreInfo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moreInfo', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByMoreInfoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moreInfo', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension CardEntityQueryWhereDistinct
    on QueryBuilder<CardEntity, CardEntity, QDistinct> {
  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByAttribute(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attribute', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByCardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardId');
    });
  }

  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'desc', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'level');
    });
  }

  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByMoreInfo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'moreInfo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByTypeline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'typeline');
    });
  }
}

extension CardEntityQueryProperty
    on QueryBuilder<CardEntity, CardEntity, QQueryProperty> {
  QueryBuilder<CardEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CardEntity, String, QQueryOperations> attributeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attribute');
    });
  }

  QueryBuilder<CardEntity, int, QQueryOperations> cardIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardId');
    });
  }

  QueryBuilder<CardEntity, List<CardImageEntity>, QQueryOperations>
      cardImagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardImages');
    });
  }

  QueryBuilder<CardEntity, String, QQueryOperations> descProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'desc');
    });
  }

  QueryBuilder<CardEntity, int, QQueryOperations> levelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'level');
    });
  }

  QueryBuilder<CardEntity, String, QQueryOperations> moreInfoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'moreInfo');
    });
  }

  QueryBuilder<CardEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CardEntity, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<CardEntity, List<String>, QQueryOperations> typelineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'typeline');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CardImageEntitySchema = Schema(
  name: r'CardImageEntity',
  id: -3935428808272901534,
  properties: {
    r'imageUrl': PropertySchema(
      id: 0,
      name: r'imageUrl',
      type: IsarType.string,
    ),
    r'imageUrlCropped': PropertySchema(
      id: 1,
      name: r'imageUrlCropped',
      type: IsarType.string,
    ),
    r'imageUrlSmall': PropertySchema(
      id: 2,
      name: r'imageUrlSmall',
      type: IsarType.string,
    )
  },
  estimateSize: _cardImageEntityEstimateSize,
  serialize: _cardImageEntitySerialize,
  deserialize: _cardImageEntityDeserialize,
  deserializeProp: _cardImageEntityDeserializeProp,
);

int _cardImageEntityEstimateSize(
  CardImageEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.imageUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.imageUrlCropped;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.imageUrlSmall;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _cardImageEntitySerialize(
  CardImageEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.imageUrl);
  writer.writeString(offsets[1], object.imageUrlCropped);
  writer.writeString(offsets[2], object.imageUrlSmall);
}

CardImageEntity _cardImageEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CardImageEntity(
    imageUrl: reader.readStringOrNull(offsets[0]),
    imageUrlCropped: reader.readStringOrNull(offsets[1]),
    imageUrlSmall: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _cardImageEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CardImageEntityQueryFilter
    on QueryBuilder<CardImageEntity, CardImageEntity, QFilterCondition> {
  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageUrl',
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageUrl',
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageUrlCropped',
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageUrlCropped',
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrlCropped',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrlCropped',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrlCropped',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrlCropped',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrlCropped',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrlCropped',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrlCropped',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrlCropped',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrlCropped',
        value: '',
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlCroppedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrlCropped',
        value: '',
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageUrlSmall',
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageUrlSmall',
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrlSmall',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrlSmall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrlSmall',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrlSmall',
        value: '',
      ));
    });
  }

  QueryBuilder<CardImageEntity, CardImageEntity, QAfterFilterCondition>
      imageUrlSmallIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrlSmall',
        value: '',
      ));
    });
  }
}

extension CardImageEntityQueryObject
    on QueryBuilder<CardImageEntity, CardImageEntity, QFilterCondition> {}
